import os
import sys
from scipy.misc import imread
from scipy.misc import imsave
import numpy


if len(sys.argv) != 4:
    print("""ERROR: incorrect usage.
    correct usage: genPallette.py palletteFile.bmp palletteName palletteLength""")
    exit(1)

bmpFile = sys.argv[1]
palletteName = sys.argv[2]
palletteLength = int(sys.argv[3])

if not os.path.isfile(bmpFile):
    print("ERROR: the file {} does not exist".format(bmpFile))

image = imread(bmpFile, flatten=0, mode="RGB")
imageLength = image.shape[1]
pixelsPerOutput = float(imageLength) / float(palletteLength)

output = []

for i in range(palletteLength):
    output.append([])

    kernelSize = pixelsPerOutput

    # take cubic resample of input
    for j in range(3):
        """
        output[i].append(image[0][int(i*pixelsPerOutput)][j]*4)

        """
        result = 0

        for k in range(int(-kernelSize), int(kernelSize)):
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

            result += weighting * image[0][index][j]

        output[i].append(result)


scalingFactor = 1023./float(max(map(max,output)))

for pixel in range(palletteLength):
    for colour in range(3):
        output[pixel][colour] *= scalingFactor
        # output[pixel][colour] = gammaVals[int(output[pixel][colour])]



# create preview image before adding colour correction
rgbOut = numpy.zeros((40, palletteLength, 3), dtype=numpy.uint8)
for i in range(40):
    for j in range(palletteLength):
        for k in range(3):
            rgbOut[i][j][k] = int(output[j][k]/4)

imsave(palletteName+'_gradient.png', rgbOut)

# colour correction
correctionFactors = [1., 0.69, 0.94, 0.8]
# correctionFactors = [1., 0.31, 0.52, 0.8]
warmWhiteComposition = [1023., 856., 680.]
#rgbPixel[1] *= 0.31
#rgbPixel[2] *= 0.52



for i in range(palletteLength):
    levels = []
    for j in range(3):
        levels.append(output[i][j] / warmWhiteComposition[j])

    minLevel = min(levels)

    for j in range(3):
        output[i][j] = int(output[i][j] - (minLevel*warmWhiteComposition[j]))

    output[i].append(int(minLevel*1024))

    """
    minLevel = min(output[i])
    for colour in range(3):
        output[i][colour] -= minLevel
        # output[i][colour] *= correctionFactors[colour]
    output[i].append(minLevel)

    for colour in range(4):
        output[i][colour] = int(output[i][colour])
    """



f = open(palletteName+"_pallette.h", 'w')

f.write("#ifndef {0}\n#define {0}\n\n// RGBW file generated via genPallette.py, created by Cass May\n\n#include <stdint.h>\n\n".format(palletteName.upper()+"_PALLETTE_H"))

f.write("int {}PalletteLen = {};\n".format(palletteName, palletteLength))
f.write("uint16_t {}[{}][4] = {};\n\n".format(palletteName+"Pallette", palletteLength, str(output).replace('[', '{').replace(']','}')))

f.write("#endif\n")

f.close()
