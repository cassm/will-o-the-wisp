def getBufferSize(n_pixels):
    return int(math.ceil(n_pixels*1.34))

def set_pixel(pixelBuffer, pixelIndex, rgbwVal):
    for index, value in enumerate(rgbwVal):
        channelIndex = ii*4 + index
        pixelBuffer[int(math.floor(channelIndex/3))][int(channelIndex%3)] = value
