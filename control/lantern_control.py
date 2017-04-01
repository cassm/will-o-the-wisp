#!/usr/bin/env python

from __future__ import division
import time
import math
import glob
import random
from PIL import Image
import sys
import os

# add openpixel python path
cwd = os.getcwd()
sys.path.insert(0, cwd+"/openpixelcontrol/python")

import opc
import color_utils
import rgbw_utils

# generate coordinates
execfile("coordGen.py")
import coords

simulate = True

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
        pixel =  tuple(math.sin(coords.globalCartesian[ii][0] + time.time()/3 + offset)*256 for offset in offsets)

        rgbw_utils.set_pixel(pixels, ii, pixel, simulate)


def paletteViewer(pixels, paletteName, timeFactor, spaceFactor, start_pixel = 0, end_pixel = n_pixels):
    for ii in range(start_pixel, end_pixel):
        spaceSum = sum(tuple(globalCartesian[ii][component] * spaceFactor[component] for component in range(3)))
        rgbw_utils.set_pixel(pixels, ii, palettes[paletteName][int((time.time()*timeFactor + spaceSum) % len(palettes[paletteName]))], simulate)

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

        rgbw_utils.set_pixel(pixels, ii, (g, r, b, w), simulate)

def star_drive(pixels, spaceFactor, flashSpeed, colourSpeed, paletteName, start_pixel = 0, end_pixel = n_pixels):
    for ii in range(n_pixels):
        spaceSum = sum(tuple(coords.globalCartesian[ii][component] * spaceFactor[component] for component in range(3)))
        mixLevel = (math.sin(spaceSum + time.time()*flashSpeed - 0.5)/2) + 0.5
        paletteIndex = int(time.time() * colourSpeed) % len(palettes[paletteName])
        newVal = list(mixLevel * channel for channel in palettes[paletteName][paletteIndex])
        newVal[3] = (math.sin(spaceSum + time.time()*flashSpeed) * 0.75 + 0.25) * 512

        rgbw_utils.set_pixel(pixels, ii, newVal, simulate)

def vertical_star_drive(pixels, localSpaceFactor, lanternSpaceFactor, flashSpeed, colourSpeed, paletteName, start_pixel = 0, end_pixel = n_pixels):
    for ii in range(n_pixels):
        lanternId = int(ii / pixels_per_lantern)
        pixelId = ii % pixels_per_lantern

        localSpaceSum = sum(tuple(coords.localCartesian[lanternId][pixelId][component] * localSpaceFactor[component] for component in range(3)))
        lanternSpaceSum = sum(tuple(coords.lanternLocations[lanternId][component] * lanternSpaceFactor[component] for component in range(3)))
        cyclePoint = lanternSpaceSum + localSpaceSum + time.time()*flashSpeed

        paletteIndex = int(time.time() * colourSpeed) % len(palettes[paletteName])
        mixLevel = (math.sin(cyclePoint - 0.5)/2) + 0.5

        newVal = list(mixLevel * channel for channel in palettes[paletteName][paletteIndex])
        newVal[3] = (math.sin(cyclePoint) * 0.75 + 0.25) * 255

        rgbw_utils.set_pixel(pixels, ii, newVal, simulate)

def fade_from_to(from_val, to_val, rate):
    result = []
    for i in range(4):
        result.append(from_val[i] + (to_val[i]-from_val[i])*rate)

    return result

next_drop = [0.0 for i in range(len(coords.lanternLocations))]

def rain(pixels, rainInterval, shimmerLevel):
    global next_drop

    for ii in range(n_pixels):
        r = math.sin(time.time()/-1 + originDelta[ii]*5) * shimmerLevel
        g = math.sin(time.time()/-2 + originDelta[ii]*5) * shimmerLevel
        b = math.sin(time.time()/-3 + originDelta[ii]*5) * shimmerLevel

        new_value = fade_from_to(rgbw_utils.get_pixel(pixels, ii, simulate), (g, r, b, 128 - sum((g, r, b))), 0.05)

        rgbw_utils.set_pixel(pixels, ii, new_value, simulate)

    for lantern in range(len(coords.lanternLocations)):
        if time.time() > next_drop[lantern]:
            next_drop[lantern] = random.gauss(time.time()+rainInterval, rainInterval/8)
            pixel_index = lantern*pixels_per_lantern + random.randrange(pixels_per_lantern)
            rgbw_val = []
            for colour in range(4):
                rgbw_val.append(random.gauss(255, 16))

            rgbw_utils.set_pixel(pixels, pixel_index, rgbw_val, simulate)

def colourWaves(pixels, palette, timeSpeed, colourSpeed):
    for ii in range(n_pixels):
        w_level = math.sin(time.time()*-2*timeSpeed + coords.originDelta[ii] * 15) * (math.sin(time.time()/-2 + originDelta[ii]/4)+3)*16
        mix_level = (math.sin(time.time()/-4 + coords.originDelta[ii]/8)+2) / 3
        palette_index = int((time.time()*-20*timeSpeed + coords.originDelta[ii]*20*colourSpeed) % len(palettes[palette]))
        rgbw_val = list(channel * mix_level for channel in palettes[palette][palette_index])
        rgbw_val[3] += w_level
        rgbw_utils.set_pixel(pixels, ii, rgbw_val, simulate)

def shimmer(pixels, shimmerLevel, whiteLevel):
    for ii in range(n_pixels):
        # shimmerLevel = shimmerLevel * (((math.sin(time.time()/-2.5 + originDelta[ii]*0.5)+1)/2) + (math.sin(time.time()*-1.5 + originDelta[ii]*0.5)/4))
        r = max(math.sin(time.time()/-1 + originDelta[ii]*(5+math.cos(time.time()/2 + originDelta[ii]))) * shimmerLevel, 0)
        g = max(math.sin(time.time()/-1 + originDelta[ii]*(5+math.cos(time.time()/2.2 + originDelta[ii]))) * shimmerLevel, 0)
        b = max(math.sin(time.time()/-1 + originDelta[ii]*(5+math.cos(time.time()/2.5 + originDelta[ii]))) * shimmerLevel, 0)
        w = whiteLevel - sum((r, g, b))
        # w = 0

        rgbw_utils.set_pixel(pixels, ii, (g, r, b, w), simulate)

start_time = time.time()
# currentPalette = random.choice(palettes.keys())
currentPalette = "unicornBarf"
paletteTimer = time.time()

while True:
    # if time.time() - paletteTimer > 240:
        # currentPalette = random.choice(palettes.keys())
        # paletteTimer = time.time()

    t = (time.time() - start_time) * 5
    # loot_cave(pixel_buffer)
    # paletteViewer(pixel_buffer, currentPalette, 25, (-10, 0, 0))
    # vertical_star_drive(pixel_buffer, (0.0, 0.0, -1.0), (0.0, 0.0, 2.0), 1, 50, "unicornBarf")
    # rain(pixel_buffer, 0.25, 8)
    # shimmer(pixel_buffer, 64, 255)
    colourWaves(pixel_buffer, "stressTest", 1, 1)

    client.put_pixels(pixel_buffer, channel=0)
    time.sleep(1 / fps)
