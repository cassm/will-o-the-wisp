#!/usr/bin/env python

from __future__ import division
import time
import math
import glob
import random
from PIL import Image
import atexit
import serial
import sys
import os

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

# add openpixel python path
cwd = os.getcwd()
sys.path.insert(0, cwd+"/openpixelcontrol/python")

import opc
import color_utils
import rgbw_utils

# allow manipulation of time through potentiometer
last_measured_time = time.time()
effective_time = time.time()

# generate coordinates
execfile("coordGen.py")
import coords

simulate = False


serial_initialised = False
srl_speed_val = 512
srl_brightness_val = 512
srl_max_val = 738

try:
    srl = serial.Serial("/dev/ttyACM0",
                        baudrate=57600,
                        parity=serial.PARITY_NONE,
                        stopbits=serial.STOPBITS_ONE,
                        bytesize=serial.EIGHTBITS,
                        writeTimeout = 0,
                        timeout = 10,
                        rtscts=False,
                        dsrdtr=False,
                        xonxoff=False)

    if srl.isOpen():
        serial_initialised = True

except Exception as e:
    pass

# grab palettes
palettePath = cwd+"/../palettes/"
paletteExtension = ".bmp"
paletteFiles = glob.glob(palettePath + "*" + paletteExtension)

paletteNames = list((fileName[len(palettePath):-len(paletteExtension)], fileName) for fileName in paletteFiles)
palettes = {}

for title, path in paletteNames:
    im = Image.open(path, "r")
    width, height = im.size
    rgbwVals = []
    for pixel in range(width):
        r, g, b = im.getpixel((pixel, 0))
        w = min((r, g, b))
        rgbwVals.append((g-w, r-w, b-w, w))
    maxVal = max(map(max, rgbwVals))
    brightnessFactor = 255/maxVal
    correctedRgbwVals = tuple(tuple(channel*brightnessFactor for channel in pixel) for pixel in rgbwVals)
    palettes[title] = correctedRgbwVals


#-------------------------------------------------------------------------------
# handle command line

if len(sys.argv) == 1:
    IP_PORT = '127.0.0.1:7890'
elif len(sys.argv) == 2 and ':' in sys.argv[1] and not sys.argv[1].startswith('-'):
    IP_PORT = sys.argv[1]
else:
    print('''
Usage: lantern_control.py [ip:port]

If not set, ip:port defauls to 127.0.0.1:7890
''')
    sys.exit(0)

#-------------------------------------------------------------------------------
# connect to server

client = opc.Client(IP_PORT)
if client.can_connect():
    print('    connected to %s' % IP_PORT)
else:
    # can't connect, but keep running in case the server appears later
    print('    WARNING: could not connect to %s' % IP_PORT)
print('')


#-------------------------------------------------------------------------------
# send pixels

print('    sending pixels forever (control-c to exit)...')
print('')

pixels_per_lantern = 60
n_pixels = pixels_per_lantern * len(coords.localCartesian) # 60 leds per lantern
print "num lanterns = " + str(len(coords.localCartesian))
print "num LEDs = " + str(n_pixels)

buffer_size = rgbw_utils.get_buffer_size(n_pixels)

if simulate:
    buffer_size = n_pixels

fps = 60         # frames per second

pixel_buffer = [[0.0, 0.0, 0.0] for i in range(buffer_size)]

def x_sin(pixels):
    for ii in range(n_pixels):
        offsets = [0.1, 0.2, 0.0, 0.3]
        pixel =  tuple(math.sin(coords.globalCartesian[ii][0] + effective_time/3 + offset)*256 for offset in offsets)

        rgbw_utils.set_pixel(pixels, ii, pixel, simulate, flare_level)

def inverse_square(x, y, exponent):
    return (1.0/(abs(x - y)**exponent))

def paletteViewer(pixels, paletteName, timeFactor, spaceFactor, start_pixel = 0, end_pixel = n_pixels):
    for ii in range(start_pixel, end_pixel):
        spaceSum = sum(tuple(globalCartesian[ii][component] * spaceFactor[component] for component in range(3)))
        rgbw_utils.set_pixel(pixels, ii, palettes[paletteName][int((effective_time*timeFactor + spaceSum) % len(palettes[paletteName]))], simulate, flare_level)

def loot_cave(pixels, start_pixel = 0, end_pixel = n_pixels):
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

    t = effective_time*5

    for ii in range(start_pixel, end_pixel):
        pct = (ii / n_pixels)
        # diagonal black stripes
        pct_jittered = (pct * 77) % 37
        blackstripes = color_utils.cos(pct_jittered, offset=t*0.05, period=1, minn=-1.5, maxx=1.5)
        blackstripes_offset = color_utils.cos(t, offset=0.9, period=60, minn=-0.5, maxx=3)
        blackstripes = color_utils.clamp(blackstripes + blackstripes_offset, 0, 1)
        # 3 sine waves for r, g, b which are out of sync with each other
        r = blackstripes * color_utils.remap(math.cos((t/speed_r + pct*freq_r)*math.pi*2), -1, 1, 0, 256)
        g = blackstripes * color_utils.remap(math.cos((t/speed_g + pct*freq_g)*math.pi*2), -1, 1, 0, 256)
        b = blackstripes * color_utils.remap(math.cos((t/speed_b + pct*freq_b)*math.pi*2), -1, 1, 0, 256)
        w = blackstripes * color_utils.remap(math.cos((t/speed_w + pct*freq_w)*math.pi*2), -1, 1, 0, 256)

        rgbw_utils.set_pixel(pixels, ii, (g, r, b, w), simulate, flare_level)

def star_drive(pixels, spaceFactor, flashSpeed, colourSpeed, paletteName, start_pixel = 0, end_pixel = n_pixels):
    for ii in range(n_pixels):
        spaceSum = sum(tuple(coords.globalCartesian[ii][component] * spaceFactor[component] for component in range(3)))
        mixLevel = (math.sin(spaceSum + effective_time*flashSpeed - 0.5)/2) + 0.5
        paletteIndex = int(effective_time * colourSpeed) % len(palettes[paletteName])
        newVal = list(mixLevel * channel for channel in palettes[paletteName][paletteIndex])
        newVal[3] = (math.sin(spaceSum + effective_time*flashSpeed) * 0.75 + 0.25) * 512

        rgbw_utils.set_pixel(pixels, ii, newVal, simulate, flare_level)

def vertical_star_drive(pixels, localSpaceFactor, lanternSpaceFactor, flashSpeed, colourSpeed, paletteName, start_pixel = 0, end_pixel = n_pixels):
    for ii in range(n_pixels):
        lanternId = int(ii / pixels_per_lantern)
        pixelId = ii % pixels_per_lantern

        localSpaceSum = sum(tuple(coords.localCartesian[lanternId][pixelId][component] * localSpaceFactor[component] for component in range(3)))
        lanternSpaceSum = sum(tuple(coords.lanternLocations[lanternId][component] * lanternSpaceFactor[component] for component in range(3)))
        cyclePoint = lanternSpaceSum + localSpaceSum + effective_time*flashSpeed

        paletteIndex = int(effective_time * colourSpeed) % len(palettes[paletteName])
        mixLevel = (math.sin(cyclePoint - 0.5)/2) + 0.5

        newVal = list(mixLevel * channel for channel in palettes[paletteName][paletteIndex])
        newVal[3] = (math.sin(cyclePoint) * 0.75 + 0.25) * 255

        rgbw_utils.set_pixel(pixels, ii, newVal, simulate, flare_level)

def fade_from_to(from_val, to_val, rate):
    result = []
    for i in range(4):
        result.append(from_val[i] + (to_val[i]-from_val[i])*rate)

    return result

next_drop = [0.0 for i in range(len(coords.lanternLocations))]

def rain(pixels, rainInterval, shimmerLevel):
    global next_drop

    for ii in range(n_pixels):
        r = math.sin(effective_time/-1 + originDelta[ii]*5) * shimmerLevel
        g = math.sin(effective_time/-2 + originDelta[ii]*5) * shimmerLevel
        b = math.sin(effective_time/-3 + originDelta[ii]*5) * shimmerLevel

        new_value = fade_from_to(rgbw_utils.get_pixel(pixels, ii, simulate), (g, r, b, 128 - sum((g, r, b))), 0.05)

        rgbw_utils.set_pixel(pixels, ii, new_value, simulate, flare_level)

    for lantern in range(len(coords.lanternLocations)):
        if effective_time > next_drop[lantern]:
            next_drop[lantern] = random.gauss(effective_time+rainInterval, rainInterval/8)
            pixel_index = lantern*pixels_per_lantern + random.randrange(pixels_per_lantern)
            rgbw_val = []
            for colour in range(4):
                rgbw_val.append(random.gauss(255, 16))

            rgbw_utils.set_pixel(pixels, pixel_index, rgbw_val, simulate, flare_level)

def colourWaves(pixels, palette, timeSpeed, colourSpeed):
    for ii in range(n_pixels):
        w_level = math.sin(effective_time*-2*timeSpeed + coords.originDelta[ii] * 15) * (math.sin(effective_time/-2 + originDelta[ii]/4)+3)*16
        mix_level = (math.sin(effective_time/-4 + coords.originDelta[ii]/8)+2) / 3
        palette_index = int((effective_time*-20*timeSpeed + coords.originDelta[ii]*20*colourSpeed) % len(palettes[palette]))
        rgbw_val = list(channel * mix_level for channel in palettes[palette][palette_index])
        rgbw_val[3] += w_level
        rgbw_utils.set_pixel(pixels, ii, rgbw_val, simulate, flare_level)

def shimmer(pixels, shimmerLevel, whiteLevel):
    for ii in range(n_pixels):
        # shimmerLevel = shimmerLevel * (((math.sin(effective_time/-2.5 + originDelta[ii]*0.5)+1)/2) + (math.sin(effective_time*-1.5 + originDelta[ii]*0.5)/4))
        r = max(math.sin(effective_time/-1 + originDelta[ii]*(5+math.cos(effective_time/2 + originDelta[ii]))) * shimmerLevel, 0)
        g = max(math.sin(effective_time/-1 + originDelta[ii]*(5+math.cos(effective_time/2.2 + originDelta[ii]))) * shimmerLevel, 0)
        b = max(math.sin(effective_time/-1 + originDelta[ii]*(5+math.cos(effective_time/2.5 + originDelta[ii]))) * shimmerLevel, 0)
        w = whiteLevel - sum((r, g, b))
        # w = 0

        rgbw_utils.set_pixel(pixels, ii, (g, r, b, w), simulate, flare_level)

# currentPalette = random.choice(palettes.keys())
current_palette_id = 0
paletteTimer = time.time()

speed_val = 1.0
brightness_val = 0.5

current_pattern_id = 0
max_pattern_id = 5
last_press = 0
debounce_interval = 0.25

last_flare_event = 0
flare_level = 0
flare = False
glitch = False

def increment_palette(randomise):
    global current_palette_id

    if randomise:
        new_palette_id = random.randrange(len(palettes.keys()))
        while new_palette_id == current_palette_id:
            new_palette_id = random.randrange(len(palettes.keys()))
        current_palette_id = new_palette_id
    else:
        current_palette_id = (current_palette_id + 1) % len(palettes.keys())

def handle_button_input(channel):
    global last_press
    global current_pattern_id

    if time.time() - last_press > debounce_interval:
        last_press = time.time()

        if channel == 15:
            print "AUTO"
        elif channel == 12:
            print "RANDOM PATTERN"
            new_pattern_id = random.randrange(max_pattern_id+1)
            while new_pattern_id == current_pattern_id:
                new_pattern_id = random.randrange(max_pattern_id+1)
            current_pattern_id = new_pattern_id
        elif channel == 33:
            print "Fizzy lifting drink"
            current_pattern_id = 0
        elif channel == 31:
            print "Star drive"
            current_pattern_id = 2
        elif channel == 29:
            print "Make me one with everything"
            current_pattern_id = 4
        elif channel == 18:
            print "Ego death"
            current_pattern_id = 5
        elif channel == 16:
            print "Next Palette"
            increment_palette(False)
        elif channel == 37:
            print "The most beautiful skies"
            current_pattern_id = 1
        elif channel == 36:
            print "Magic forest but it's raining"
            current_pattern_id = 3
        elif channel == 32:
            print "BM"
        elif channel == 22:
            print "BR"

def handle_flare_glitch(channel):
    global flare
    global glitch

    if running_on_pi:
        if channel == 13:
            flare = not GPIO.input(13)
        elif channel == 11:
            glitch = not GPIO.input(11)

if running_on_pi:
    GPIO.add_event_detect(12, GPIO.FALLING, callback=handle_button_input)
    GPIO.add_event_detect(15, GPIO.FALLING, callback=handle_button_input)
    GPIO.add_event_detect(33, GPIO.FALLING, callback=handle_button_input)
    GPIO.add_event_detect(31, GPIO.FALLING, callback=handle_button_input)
    GPIO.add_event_detect(29, GPIO.FALLING, callback=handle_button_input)
    GPIO.add_event_detect(18, GPIO.FALLING, callback=handle_button_input)
    GPIO.add_event_detect(16, GPIO.FALLING, callback=handle_button_input)
    GPIO.add_event_detect(37, GPIO.FALLING, callback=handle_button_input)
    GPIO.add_event_detect(36, GPIO.FALLING, callback=handle_button_input)
    GPIO.add_event_detect(32, GPIO.FALLING, callback=handle_button_input)
    GPIO.add_event_detect(22, GPIO.FALLING, callback=handle_button_input)
    GPIO.add_event_detect(13, GPIO.BOTH, callback=handle_flare_glitch)
    GPIO.add_event_detect(11, GPIO.BOTH, callback=handle_flare_glitch)

while True:
    if flare:
        # print "FLARE"
        last_flare_event = effective_time
    if glitch:
        print "GLITCH"

    flare_level = 255.0 * ((1 / max((effective_time - last_flare_event)**1.5, 0.1))**2.2)
    # if time.time() - paletteTimer > 240:
        # currentPalette = random.choice(palettes.keys())
        # paletteTimer = time.time()
    if serial_initialised:
        try:
            srl.write('x')
            srl_brightness_val = int(srl.readline())
            srl_speed_val = int(srl.readline())
        except Exception as e:
            pass

        speed_val = max(float(srl_speed_val) / float(srl_max_val), 0.00001)*8 # between 0 and 8
        brightness_val = (max(float(srl_brightness_val) / float(srl_max_val), 0.00001)**2.2)*2

    effective_time += (time.time() - last_measured_time) * speed_val
    last_measured_time = time.time()

    # for ii in range(n_pixels):
        # rgbw_utils.set_pixel(pixel_buffer, ii, (0, 0, 0, 255*inverse_square(coords.spherical[int(ii%60)][1]+20, (time.time()*12) % 80, 2.5)), simulate, flare_level)
        # rgbw_utils.set_pixel(pixel_buffer, ii, (0, 0, 0, 255*coords.localCartesian[int(ii / 60)][int(ii % 60)][2]), simulate, flare_level)

    if current_pattern_id == 0:
        loot_cave(pixel_buffer)
    elif current_pattern_id == 1:
        paletteViewer(pixel_buffer, palettes.keys()[current_palette_id], 25, (-10, 0, 0))
    elif current_pattern_id == 2:
        vertical_star_drive(pixel_buffer, (0.0, 0.0, -1.0), (0.0, 0.0, 2.0), 1, 50, "unicornBarf")
    elif current_pattern_id == 3:
        rain(pixel_buffer, 0.25, 8)
    elif current_pattern_id == 4:
        shimmer(pixel_buffer, 64, 255)
    elif current_pattern_id == 5:
        colourWaves(pixel_buffer, palettes.keys()[current_palette_id], 1, 1)

    pixel_buffer_corrected = tuple(tuple(channel * brightness_val for channel in pixel) for pixel in pixel_buffer)
    client.put_pixels(pixel_buffer_corrected, channel=0)
    # client.put_pixels(pixel_buffer, channel=0)
    time.sleep(1 / fps)

