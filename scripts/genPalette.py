import os
import sys
from scipy.misc import imread
from scipy.misc import imsave
import numpy
from rgb2hsi import rgb2hsi, HSI


if len(sys.argv) != 4:
    print("""ERROR: incorrect usage.
    correct usage: genPalette.py paletteFile.bmp paletteName paletteLength""")
    exit(1)

bmpFile = sys.argv[1]
paletteName = sys.argv[2]
paletteLength = int(sys.argv[3])

if not os.path.isfile(bmpFile):
    print("ERROR: the file {} does not exist".format(bmpFile))

image = imread(bmpFile, flatten=0, mode="RGB")
imageLength = image.shape[1]
pixelsPerOutput = float(imageLength) / float(paletteLength)

output = []
hsiOutput = []

for i in range(paletteLength):
    output.append([])

    kernelSize = pixelsPerOutput

    # hsiOutput.append(rgb2hsi(image[0][int(i*pixelsPerOutput)]))
    # take cubic resample of input
    for j in range(3):
        """
        output[i].append(image[0][int(i*pixelsPerOutput)][j]*4)

        """

        result = 0

        for k in range(int(-kernelSize), int(kernelSize)+1):
            x = abs(k / (kernelSize/2.0)) # gives us an r value between 0 and 2
            b = 1/3.0
            c = 1/3.0 # use a mitchell filter to start with

            weighting = 0

            # Mitchell & Netravali's general cubic resampling formula. Don't ask me, seriously.
            # reference: http://entropymine.com/imageworsener/bicubic/
            if x <= 2:
                weighting = 1/6.0 * ((12 - 9*b - 6*c)*(abs(x)**3) + (-18 + 12*b + 6*c)*(x**2) + (6 - 2*b))
            elif x <= 1:
                weighting = 1/6.0 * ((-b - 6*c)*(abs(x)**3) + (6*b + 30*c)*(x**2) + (-12*b - -48*c)*x + (8*b + 24*c))

            index = int(i*pixelsPerOutput) + k
            if index >= imageLength:
                index -= imageLength
            elif index < 0:
                index += imageLength

            result += weighting * float(image[0][index][j])

        output[i].append(result)


scalingFactor = 1023./float(max(map(max,output)))

for i in hsiOutput:
    i.i = 1 - ((1 - i.i) * (1-minAcceptableIntensity)/(1-minIntensity))

for i in output:
    hsiOutput.append(rgb2hsi(i))

for pixel in range(paletteLength):
    for colour in range(3):
        output[pixel][colour] *= scalingFactor
        # output[pixel][colour] = gammaVals[int(output[pixel][colour])]

# create preview image before adding colour correction
rgbOut = numpy.zeros((40, paletteLength, 3), dtype=numpy.uint8)
for i in range(40):
    for j in range(paletteLength):
        for k in range(3):
            rgbOut[i][j][k] = int(output[j][k]/4)

imsave(paletteName+'_gradient.png', rgbOut)

# colour correction
correctionFactors = [1., 0.69, 0.94, 0.8]
# correctionFactors = [1., 0.31, 0.52, 0.8]
warmWhiteComposition = [1023., 856., 680.]
#rgbPixel[1] *= 0.31
#rgbPixel[2] *= 0.52



for i in range(paletteLength):
    levels = []
    # for j in range(3):
        # levels.append(output[i][j] / warmWhiteComposition[j])

    minLevel = min(output[i])

    for j in range(3):
        output[i][j] = int(output[i][j] - (minLevel))

    output[i].append(int(minLevel))

    """
    minLevel = min(output[i])
    for colour in range(3):
        output[i][colour] -= minLevel
        # output[i][colour] *= correctionFactors[colour]
    output[i].append(minLevel)

    for colour in range(4):
        output[i][colour] = int(output[i][colour])
    """



f = open(paletteName+"_palette.h", 'w')

f.write("#ifndef {0}\n#define {0}\n\n// RGBW file generated via genPalette.py, created by Cass May\n\n#include <stdint.h>\n\n".format(paletteName.upper()+"_PALETTE_H"))

f.write("int {}PaletteLen = {};\n".format(paletteName, paletteLength))
f.write("uint16_t {}[{}][4] = {};\n\n".format(paletteName+"RgbwPalette", paletteLength, str(output).replace('[', '{').replace(']','}')))
f.write("double {}[{}][3] = {};\n\n".format(paletteName+"HsiPalette", paletteLength, str(hsiOutput).replace('[', '{').replace(']','}')))

f.write("#endif\n")

f.close()
