#!/usr/bin/env python

from __future__ import division
import time
import math
import glob
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
        r, g, b = im.getpixel((pixel, 1))
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

n_pixels = 180  # number of pixels in the included "wall" layout
buffer_size = rgbw_utils.get_buffer_size(n_pixels)
fps = 60         # frames per second

pixel_buffer = [[0.0, 0.0, 0.0] for i in range(buffer_size)]
pixels = [[0.0, 0.0, 0.0, 0.0] for i in range(n_pixels)]

def x_sin(pixels):
    for ii in range(n_pixels):
        offsets = [0.1, 0.2, 0.0, 0.3]
        pixels[ii] =  tuple(math.sin(coords.globalCartesian[ii][0] + time.time()/3 + offset)*256 for offset in offsets)

def unicornBarf(pixels):
    for ii in range(n_pixels):
        pixels[ii] = palettes["unicornBarf"][int((time.time()*15 + coords.globalCartesian[ii][0]*10) % len(palettes["unicornBarf"]))]

def loot_cave(pixels):
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

    for ii in range(n_pixels):
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
        pixels[ii] = (g, r, b, w)

start_time = time.time()
while True:
    t = (time.time() - start_time) * 5
    # loot_cave(pixels)
    # x_sin(pixels)
    unicornBarf(pixels)

    for ii, pixel in enumerate(pixels):
        if simulate:
            rgbw_utils.simulate_pixel(pixel_buffer, ii, pixel)
        else:
            rgbw_utils.set_pixel(pixel_buffer, ii, pixel)

    client.put_pixels(pixel_buffer, channel=0)
    time.sleep(1 / fps)
