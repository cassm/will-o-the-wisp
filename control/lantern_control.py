#!/usr/bin/env python

from __future__ import print_function
from __future__ import division
import time
import math
import glob
import random
from PIL import Image
from operator import add
import atexit
import serial
import sys
import os
import rgbw_utils
import colours

# add openpixel python path
cwd = os.getcwd()
sys.path.insert(0, cwd + "/openpixelcontrol/python")

import opc
import color_utils

# generate coordinates
execfile("coordGen.py")
import coords

running_on_pi = os.uname()[4][:3] == 'arm'

if running_on_pi:
    import RPi.GPIO as GPIO

    # set up GPIO
    GPIO.setmode(GPIO.BOARD)
    GPIO.setup(11, GPIO.IN, pull_up_down=GPIO.PUD_UP)
    GPIO.setup(13, GPIO.IN, pull_up_down=GPIO.PUD_UP)
    GPIO.setup(15, GPIO.IN, pull_up_down=GPIO.PUD_UP)
    GPIO.setup(12, GPIO.IN, pull_up_down=GPIO.PUD_UP)
    GPIO.setup(33, GPIO.IN, pull_up_down=GPIO.PUD_UP)
    GPIO.setup(31, GPIO.IN, pull_up_down=GPIO.PUD_UP)
    GPIO.setup(29, GPIO.IN, pull_up_down=GPIO.PUD_UP)
    GPIO.setup(18, GPIO.IN, pull_up_down=GPIO.PUD_UP)
    GPIO.setup(16, GPIO.IN, pull_up_down=GPIO.PUD_UP)
    GPIO.setup(37, GPIO.IN, pull_up_down=GPIO.PUD_UP)
    GPIO.setup(36, GPIO.IN, pull_up_down=GPIO.PUD_UP)
    GPIO.setup(32, GPIO.IN, pull_up_down=GPIO.PUD_UP)
    GPIO.setup(22, GPIO.IN, pull_up_down=GPIO.PUD_UP)


@atexit.register
def cleanup():
    if running_on_pi:
        GPIO.cleanup()
    else:
        pass

# allow manipulation of time through potentiometer
last_measured_time = time.time()
effective_time = time.time()

last_mode_switch = time.time()
auto_mode_interval = 300  # 5 minutes

colour_correction_factor = [0.7, 0.8, 1.0, 1.0]
# colour_correction_factor = [1, 1, 1.0, 1.0]

simulate = not running_on_pi

serial_initialised = False
srl_speed_val = 512
srl_brightness_val = 512

srl_r_val = 512
srl_g_val = 512
srl_b_val = 512
srl_w_val = 512

try:
    srl = serial.Serial("/dev/ttyACM0",
                        baudrate=57600,
                        parity=serial.PARITY_NONE,
                        stopbits=serial.STOPBITS_ONE,
                        bytesize=serial.EIGHTBITS,
                        writeTimeout=0,
                        timeout=10,
                        rtscts=False,
                        dsrdtr=False,
                        xonxoff=False)

    if srl.isOpen():
        serial_initialised = True

except Exception as e:
    pass

# grab palettes
palettePath = cwd + "/../palettes/"
paletteExtension = ".bmp"
paletteFiles = glob.glob(palettePath + "*" + paletteExtension)

paletteNames = list((fileName[len(palettePath):-len(paletteExtension)], fileName) for fileName in paletteFiles)
palettes = {}

auto_palette = "auto"
manual_palette = "manual"

for title, path in paletteNames:
    im = Image.open(path, "r")
    width, height = im.size
    rgbwVals = []
    for pixel in range(width):
        r, g, b = im.getpixel((pixel, 0))
        w = min((r, g, b))
        rgbwVals.append((g - w, r - w, b - w, w))
    palettes[title] = rgbwVals

palettes[manual_palette] = []

# -------------------------------------------------------------------------------
# handle command line

if len(sys.argv) == 1:
    if running_on_pi:
        IP_PORT = '127.0.0.1:7890'
    else:
        IP_PORT = '127.0.0.1:22368'
elif len(sys.argv) == 2 and ':' in sys.argv[1] and not sys.argv[1].startswith('-'):
    IP_PORT = sys.argv[1]
else:
    print('''
Usage: lantern_control.py [ip:port]

If not set, ip:port defaults to 127.0.0.1:7890
''')
    sys.exit(0)

# -------------------------------------------------------------------------------
# connect to server

client = opc.Client(IP_PORT)
if client.can_connect():
    print('    connected to %s' % IP_PORT)
else:
    # can't connect, but keep running in case the server appears later
    print('    WARNING: could not connect to %s' % IP_PORT)
print('')

# -------------------------------------------------------------------------------
# send pixels

print('    sending pixels forever (control-c to exit)...')
print('')

pixels_per_lantern = 60
n_lanterns = len(coords.local_cartesian)
n_pixels = pixels_per_lantern * n_lanterns  # 60 leds per lantern
print("num lanterns = " + str(n_lanterns))
print("num LEDs = " + str(n_pixels))

buffer_size = rgbw_utils.get_buffer_size(n_pixels)

if simulate:
    buffer_size = n_pixels

fps = 60  # frames per second

pixel_buffer = [[0.0, 0.0, 0.0] for i in range(buffer_size)]
last_raindrops = [(0.0, 0.0, 0.0, 0.0, 0.0) for drop in range(n_pixels)]

random_values0 = [random.random() for ii in range(n_pixels)]
random_values1 = [random.random() for ii in range(n_pixels)]
random_values2 = [random.random() for ii in range(n_pixels)]
random_values3 = [random.random() for ii in range(n_pixels)]
random_values4 = [random.random() for ii in range(n_pixels)]
random_values5 = [random.random() for ii in range(n_pixels)]
random_values6 = [random.random() for ii in range(n_pixels)]


def inverse_square(x, y, exponent):
    return 1.0 / max(abs(x - y) ** exponent, 0.001)

def get_pixel_colour(ii, auto):
    if auto:
        time_factor = 5
        return palettes[auto_palette][int((effective_time * time_factor + coords.origin_delta[ii]) % len(palettes[auto_palette]))]
    else:
        pixel_index = int(coords.origin_delta[ii] * 100)

        if pixel_index < len(palettes[manual_palette]):
            return palettes[manual_palette][pixel_index]
        elif len(palettes[manual_palette]) > 0:
            return palettes[manual_palette][-1]
        else:
            return (0, 0, 0, 0)

def colour_smooth(pixels, auto):
    for ii in range(n_pixels):
        rgbw_val = get_pixel_colour(ii, auto)
        rgbw_utils.set_pixel(pixels, ii, rgbw_val, simulate, invert)

def colour_waves(pixels, time_factor, space_factor, auto):
    for ii in range(n_pixels):
        # gamma correct
        sin_level = (math.sin(effective_time*time_factor + origin_delta[ii]*space_factor)/3 + 0.66) ** 2.2
        # rgbw_val = (255*sin_level for i in range(4))
        rgbw_val = list(channel * sin_level for channel in get_pixel_colour(ii, auto))
        rgbw_utils.set_pixel(pixels, ii, rgbw_val, simulate, invert)

def fizzy_lifting_drink(pixels, start_pixel=0, end_pixel=n_pixels):
    # how many sine wave cycles are squeezed into our n_pixels
    # 24 happens to create nice diagonal stripes on the wall layout
    freq_r = 24
    freq_g = 24
    freq_b = 24
    freq_w = 24

    # how many seconds the color sine waves take to shift through a complete cycle
    speed_r = 7
    speed_g = -13
    speed_b = 19
    speed_w = 23

    t = effective_time * 5

    for ii in range(start_pixel, end_pixel):
        pct = (ii / n_pixels)
        # diagonal black stripes
        pct_jittered = (pct * 77) % 37
        blackstripes = color_utils.cos(pct_jittered, offset=t * 0.05, period=1, minn=-1.5, maxx=1.5)
        blackstripes_offset = color_utils.cos(t, offset=0.9, period=60, minn=-0.5, maxx=3)
        blackstripes = color_utils.clamp(blackstripes + blackstripes_offset, 0, 1)
        # 3 sine waves for r, g, b which are out of sync with each other
        r = blackstripes * color_utils.remap(math.cos((t / speed_r + pct * freq_r) * math.pi * 2), -1, 1, 0, 256)
        g = blackstripes * color_utils.remap(math.cos((t / speed_g + pct * freq_g) * math.pi * 2), -1, 1, 0, 256)
        b = blackstripes * color_utils.remap(math.cos((t / speed_b + pct * freq_b) * math.pi * 2), -1, 1, 0, 256)
        w = blackstripes * color_utils.remap(math.cos((t / speed_w + pct * freq_w) * math.pi * 2), -1, 1, 0, 256)

        rgbw_utils.set_pixel(pixels, ii, (g, r, b, w), simulate, invert)

def vertical_star_drive(pixels, local_space_factor, lantern_space_factor, flash_speed, colour_speed, auto):
    for ii in range(n_pixels):
        lantern_id = int(ii / pixels_per_lantern)
        pixel_id = ii % pixels_per_lantern

        z_pos = coords.local_cartesian[lantern_id][pixel_id][2]
        lantern_origin_delta = math.sqrt(lantern_locations[lantern_id][0]**2 +lantern_locations[lantern_id][1]**2 + lantern_locations[lantern_id][2]**2)

        ripple_val = math.sin(z_pos*-15 + effective_time*2)/2 + 0.5
        w_intensity_val = math.sin(lantern_origin_delta + effective_time/-3)/2 + 0.5
        w_val = (ripple_val * w_intensity_val)**2.2 * 255

        bg_intensity_val = math.sin(lantern_origin_delta + effective_time/-3 + 0.4)/2 + 0.5
        bg_colour = list(bg_intensity_val**2.2 * channel for channel in get_pixel_colour(ii, auto))

        rgbw_val = list(max(w_val, channel) for channel in bg_colour)

        rgbw_utils.set_pixel(pixels, ii, rgbw_val, simulate, invert)
        '''
        local_space_sum = sum(tuple(
            coords.local_cartesian[lantern_id][pixel_id][component] * local_space_factor[component] for component in
            range(3)))
        lantern_space_sum = sum(tuple(
            coords.lantern_locations[lantern_id][component] * lantern_space_factor[component] for component in range(3)))
        cycle_point = lantern_space_sum + local_space_sum + effective_time * flash_speed

        mix_level = (math.sin(cycle_point - 0.25) / 2) + 0.5

        new_val = list(mix_level * channel for channel in get_pixel_colour(ii, auto))
        new_val[3] = (math.sin(cycle_point) * 0.75 + 0.25) * 255

        rgbw_utils.set_pixel(pixels, ii, new_val, simulate, invert)
        '''


next_drop = [0.0 for i in range(len(coords.lantern_locations))]

def colour_sparkle(pixels, rain_interval, shimmer_level, auto):
    global next_drop

    for ii in range(n_pixels):
        rgbw_val = get_pixel_colour(ii, auto)

        time_coefficients = [-1, -1.1, -1.2, -1.3]
        bg_colour = list((min(0, math.sin(effective_time / coefficient + origin_delta[ii] * 5) * shimmer_level)) + rgbw_val[channel]/4 for channel, coefficient in enumerate(time_coefficients))

        drop_intensity = inverse_square(effective_time, last_raindrops[ii][4], 1.2)
        fg_colour = tuple(last_raindrops[ii][channel] * drop_intensity for channel in range(4))

        new_value = tuple(max(fg_colour[channel], bg_colour[channel]) for channel in range(4))

        rgbw_utils.set_pixel(pixels, ii, new_value, simulate, invert)

    for lantern in range(len(coords.lantern_locations)):
        if effective_time > next_drop[lantern]:
            next_drop[lantern] = random.gauss(effective_time + rain_interval, rain_interval / 8)
            pixel_index = lantern * pixels_per_lantern + random.randrange(pixels_per_lantern)
            rgbw_val = list(get_pixel_colour(pixel_index, auto))
            rgbw_val.append(effective_time)
            last_raindrops[pixel_index] = rgbw_val

def colour_crunchy(pixels, auto, time_speed, colour_speed):
    for ii in range(n_pixels):
        time_coefficients = [-1.5, -2, -2.5]
        bg_val = get_pixel_colour(ii, auto)

        shimmer_level = sum(bg_val)/6
        shimmer_val = list(math.sin(effective_time / coefficient + origin_delta[ii] * 5) * shimmer_level for coefficient in time_coefficients)
        rgbw_val = list(bg_val[channel] + shimmer_val[channel] for channel in range(3))
        rgbw_val.append(bg_val[3]) # do not ripple white
        # rgbw_val = list((max(0, math.sin(effective_time / coefficient + origin_delta[ii] * 5) * shimmer_level)) + bg_val[channel]/4 for channel, coefficient in enumerate(time_coefficients))

        mix_level = (math.sin(effective_time / -4 + coords.origin_delta[ii] / 8) + 2) / 3
        # rgbw_val[3] += w_level
        rgbw_utils.set_pixel(pixels, ii, rgbw_val, simulate, invert)

active_swooshes = [[] for i in range(n_lanterns)]
next_swoosh = 0

def make_me_one(pixels, shimmer_level, white_level, swoosh_interval):
    global active_swooshes
    global next_swoosh

    if effective_time > next_swoosh:
        next_swoosh = effective_time + random.gauss(swoosh_interval, swoosh_interval / 4)
        # time, direction (phi or theta)
        active_swooshes[random.randrange(n_lanterns)].append((effective_time, random.randrange(2)))

    active_swooshes = list(
        list(swoosh for swoosh in lantern if effective_time - swoosh[0] < 240) for lantern in active_swooshes)

    for ii in range(n_pixels):
        r = max(math.sin(effective_time / -2 + origin_delta[ii] * (
            5 + math.cos(effective_time / 2 + origin_delta[ii]))) * shimmer_level, 0)
        g = max(math.sin(effective_time / -2 + origin_delta[ii] * (
            5 + math.cos(effective_time / 2.2 + origin_delta[ii]))) * shimmer_level, 0)
        b = max(math.sin(effective_time / -2 + origin_delta[ii] * (
            5 + math.cos(effective_time / 2.5 + origin_delta[ii]))) * shimmer_level, 0)
        w = white_level + math.sin(effective_time / -8 + origin_delta[ii] / 3) * shimmer_level + math.sin(
            effective_time / -10 + origin_delta[ii] / 1.4) * shimmer_level / 4 - sum((r, g, b))

        lantern_id = int(ii / pixels_per_lantern)
        pixel_id = int(ii % pixels_per_lantern)
        swoosh_level = 0
        for swoosh in active_swooshes[lantern_id]:
            swoosh_level += inverse_square(coords.spherical[lantern_id][pixel_id][swoosh[1]]+30, (effective_time - swoosh[0])*2, 2.5)

        w = max(w, swoosh_level * 255)

        rgbw_utils.set_pixel(pixels, ii, (g, r, b, w), simulate, invert)

next_sparks = [0.0 for i in range(n_lanterns)]
last_sparks = [0.0 for i in range(n_pixels)]
spark_intensities = [0.0 for i in range(n_pixels)]

fire_palette_len = len(palettes["fire"])
max_normalised_z = max(tuple(pixel[2] * -1 for pixel in coords.normalised_cartesian))
min_normalised_z = min(tuple(pixel[2] * -1 for pixel in coords.normalised_cartesian))
z_fire_conversion_factor = fire_palette_len / 1 / (max_normalised_z - min_normalised_z)

base_fire_indices = tuple(
    ((coord[2] * -1 - min_normalised_z) * z_fire_conversion_factor) + fire_palette_len / 2 for coord in
    coords.normalised_cartesian)


def fire(pixels, spark_interval):
    global next_sparks
    global last_sparks
    global spark_intensities

    for ii in range(n_lanterns):
        if effective_time > next_sparks[ii]:
            next_sparks[ii] = effective_time + random.gauss(spark_interval, spark_interval / 4)

            pixel_index = ii * pixels_per_lantern + random.randrange(pixels_per_lantern)
            last_sparks[pixel_index] = effective_time
            spark_intensities[pixel_index] = random.gauss(fire_palette_len / 8, fire_palette_len / 16)

    for ii in range(n_pixels):
        pixel_index = ii % pixels_per_lantern
        lantern_index = int(ii / pixels_per_lantern)
        spark_val = inverse_square(last_sparks[ii], effective_time, 1.2) * spark_intensities[ii]
        sine_val = (math.sin(effective_time/(-1 + 0.03*lantern_index)) + math.sin(effective_time/-(0.4 + 0.02*lantern_index))/4 + math.sin(coords.spherical[lantern_index][pixel_index][1])/3 + math.sin(effective_time/-2 + coords.global_cartesian[ii][0])) * fire_palette_len/16
        palette_index = int(max(min(base_fire_indices[pixel_index] + spark_val + sine_val, fire_palette_len-1), 0))
        g, r, b, w = palettes["fire"][palette_index]

        rgbw_utils.set_pixel(pixels, ii, (g * 0.5, r, b + math.sin(effective_time / -9.7 + origin_delta[ii]) * 8,
                                          w + math.sin(effective_time / -4 + origin_delta[ii]) * 64), simulate, invert)

current_palette_id = 0
paletteTimer = time.time()

speed_val = 1.0
brightness_val = 0.5

r_val = 128
g_val = 128
b_val = 128
w_val = 128

slide_palette_scaling_factor = 128
max_rgbw_slide_palette_len = int((slide_palette_scaling_factor * max(origin_delta) * 100) + 10)

current_pattern_id = 0
max_pattern_id = 7
last_press = 0
debounce_interval = 0.25

auto_colour = False
invert = False

# do not select fire, as not appropriate for most purposes
def increment_palette(randomise):
    global current_palette_id

    if randomise:
        new_palette_id = random.randrange(len(palettes.keys()))
        while new_palette_id == current_palette_id or palettes.keys()[new_palette_id] == "fire":
            new_palette_id = random.randrange(len(palettes.keys()))
        current_palette_id = new_palette_id
    else:
        current_palette_id = (current_palette_id + 1) % len(palettes.keys())
        if palettes.keys()[current_palette_id] == "fire":
            current_palette_id = (current_palette_id + 1) % len(palettes.keys())


def handle_button_input(channel):
    global last_press
    global last_mode_switch
    global current_pattern_id

    if time.time() - last_press > debounce_interval:
        last_press = time.time()

        if channel == 15:
            print("AUTO switched")
            last_mode_switch = time.time()
        elif channel == 12:
            print("RANDOM PATTERN")
            last_mode_switch = time.time()
            new_pattern_id = random.randrange(max_pattern_id + 1)
            while new_pattern_id == current_pattern_id:
                new_pattern_id = random.randrange(max_pattern_id + 1)
            current_pattern_id = new_pattern_id
        elif channel == 33:
            print ("Smooth")
            current_pattern_id = 0
            last_mode_switch = time.time()
        elif channel == 31:
            print("Crunchy")
            current_pattern_id = 5
            last_mode_switch = time.time()
        elif channel == 29:
            print("Sparkles")
            current_pattern_id = 2
            last_mode_switch = time.time()
            for lantern in range(n_lanterns):
                active_swooshes[lantern].append((effective_time - 15, 1))
        elif channel == 18:
            print("Waves")
            current_pattern_id = 8
            last_mode_switch = time.time()
        elif channel == 16:
            print("Star drive")
            current_pattern_id = 3
            last_mode_switch = time.time()
        elif channel == 37:
            print("NULL")
            # current_pattern_id = 1
            last_mode_switch = time.time()
        elif channel == 36:
            print("Fizzy lifting drink")
            current_pattern_id = 7
            last_mode_switch = time.time()
        elif channel == 32:
            print("Sacred Fuckin Flame")
            current_pattern_id = 6
            last_mode_switch = time.time()
        elif channel == 22:
            print("Make me one with everything")
            current_pattern_id = 4
            last_mode_switch = time.time()


def handle_auto_invert(channel):
    global auto_colour
    global invert

    if running_on_pi:
        if channel == 13:
            auto_colour = not GPIO.input(13)
            if not auto_colour:
                palettes[manual_palette] = []
        elif channel == 11:
            invert = not GPIO.input(11)


if running_on_pi:
    GPIO.add_event_detect(12, GPIO.FALLING, callback=handle_button_input)
    GPIO.add_event_detect(15, GPIO.BOTH, callback=handle_button_input)
    GPIO.add_event_detect(33, GPIO.FALLING, callback=handle_button_input)
    GPIO.add_event_detect(31, GPIO.FALLING, callback=handle_button_input)
    GPIO.add_event_detect(29, GPIO.FALLING, callback=handle_button_input)
    GPIO.add_event_detect(18, GPIO.FALLING, callback=handle_button_input)
    GPIO.add_event_detect(16, GPIO.FALLING, callback=handle_button_input)
    GPIO.add_event_detect(37, GPIO.FALLING, callback=handle_button_input)
    GPIO.add_event_detect(36, GPIO.FALLING, callback=handle_button_input)
    GPIO.add_event_detect(32, GPIO.FALLING, callback=handle_button_input)
    GPIO.add_event_detect(22, GPIO.FALLING, callback=handle_button_input)
    GPIO.add_event_detect(13, GPIO.BOTH, callback=handle_auto_invert)
    GPIO.add_event_detect(11, GPIO.BOTH, callback=handle_auto_invert)

increment_palette(False)

if running_on_pi:
    auto_colour = not GPIO.input(13)
else:
    auto_colour = True

while True:
    if time.time() - last_mode_switch > auto_mode_interval:
        last_mode_switch = time.time()
        if GPIO.input(15):
            new_mode = random.randrange(max_pattern_id)
            while new_mode == current_pattern_id:
                new_mode = random.randrange(max_pattern_id)

            if new_mode == 1 or new_mode == 5:
                increment_palette(True)

            current_pattern_id = new_mode

    if serial_initialised:
        try:
            srl.write('x')
            srl_brightness_val = int(srl.readline())
            srl_speed_val = int(srl.readline())

            if not auto_colour:
                srl_r_val = 1023 - int(srl.readline())
                srl_g_val = 1023 - int(srl.readline())
                srl_b_val = 1023 - int(srl.readline())
                srl_w_val = 1023 - int(srl.readline())

                r_val = (max(float(srl_r_val) / 1023.0, 0.00001) ** 2.2) * 255
                g_val = (max(float(srl_g_val) / 1023.0, 0.00001) ** 2.2) * 255
                b_val = (max(float(srl_b_val) / 1023.0, 0.00001) ** 2.2) * 255
                w_val = (max(float(srl_w_val) / 1023.0, 0.00001) ** 2.2) * 255

            else:
                srl.flushInput()

        except Exception as e:
            pass

        speed_val = max(float(srl_speed_val) / 1023.0, 0.00001) * 8  # between 0 and 8
        brightness_val = (max(float(srl_brightness_val) / 1023.0, 0.00001) ** 2.2) * 2

    sample_width = int(speed_val/8 * slide_palette_scaling_factor)

    if not auto_colour:
        for sample in range(sample_width):
            palettes[manual_palette].insert(0, tuple((g_val, r_val, b_val, w_val)))

        if len(palettes[manual_palette]) > max_rgbw_slide_palette_len:
            palettes[manual_palette] = palettes[manual_palette][:max_rgbw_slide_palette_len]

    effective_time += (time.time() - last_measured_time) * speed_val
    last_measured_time = time.time()

    if current_pattern_id == 0:
        colour_smooth(pixel_buffer, auto_colour)
    elif current_pattern_id == 1:
        colour_crunchy(pixel_buffer, auto_colour, 1, 1)
    elif current_pattern_id == 2:
        colour_sparkle(pixel_buffer, 0.125, 4, auto_colour)
    elif current_pattern_id == 3:
        vertical_star_drive(pixel_buffer, (0.0, 0.0, -1.0), (0.0, 0.0, 2.0), 1, 50, auto_colour)
    elif current_pattern_id == 4:
        make_me_one(pixel_buffer, 64, 255, 3)
    elif current_pattern_id == 5:
        colour_crunchy(pixel_buffer, auto_colour, 1, 1)
        # colour_crunchy(pixel_buffer, palettes.keys()[current_palette_id], 1, 1)
    elif current_pattern_id == 6:
        fire(pixel_buffer, 0.2)
    elif current_pattern_id == 7:
        # rainbow_sparkles(pixel_buffer)
        # rgbw_sliders(pixel_buffer, auto_colour, 50)
        fizzy_lifting_drink(pixel_buffer)
    elif current_pattern_id == 8:
        colour_waves(pixel_buffer, -1, 1, auto_colour)

    # if current_pattern_id != 7 or auto_colour:
    pixel_buffer_corrected = tuple(tuple(channel * brightness_val * colour_correction_factor[i] for i, channel in enumerate(pixel)) for pixel in pixel_buffer)
    client.put_pixels(pixel_buffer_corrected, channel=0)
    # else:
        # client.put_pixels(pixel_buffer, channel=0)

    time.sleep(1 / fps)
