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

    hsi_result = HSI()

    min_channel = min(r, g, b)

    hsi_result.i = (r + g + b) / 3.0

    if hsi_result.i == 0:
        hsi_result.s = 0
    else:
        hsi_result.s = 1 - (min_channel / hsi_result.i)

    hsi_result.i /= 1023

    if r == g and g == b:
        hsi_result.h = 0

    else:
        hsi_result.h = math.acos(
            (r - (0.5 * g) - (0.5 * b)) / math.sqrt((r ** 2 + g ** 2 + b ** 2) - (r * g + r * b + g * b)))

        if b > g:
            hsi_result.h = (2 * 3.14159) - hsi_result.h

    return hsi_result
