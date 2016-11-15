import math

class HSI:
    def __repr__(self):
        return "[{}, {}, {}]".format(self.h, self.s, self.i)
    h = 0.0
    s = 0.0
    i = 0.0

def rgb2hsi(rgb):
    r = rgb[0]
    g = rgb[1]
    b = rgb[2]

    total = r + g + b

    hsiResult = HSI()

    minChannel = min(r, g, b)

    hsiResult.i = (r + g + b) / 3.0

    if hsiResult.i == 0:
        hsiResult.s == 0
    else:
        hsiResult.s = 1 - (minChannel/hsiResult.i)

    hsiResult.i /= 1023


    if (r == g and g == b):
        hsiResult.h = 0

    else:
        hsiResult.h = math.acos((r - (0.5 * g) - (0.5 * b)) / math.sqrt((r**2 + g**2 + b**2) - (r*g + r*b + g*b)))

        if b > g:
            hsiResult.h = (2*3.14159) - hsiResult.h

    return hsiResult
