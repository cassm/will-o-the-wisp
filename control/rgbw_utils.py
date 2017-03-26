import math

def get_buffer_size(n_pixels):
    return int(math.ceil(n_pixels*1.34))

def set_pixel(pixel_buffer, pixel_index, rgbw_val):
    for index, value in enumerate(rgbw_val):
        channel_index = pixel_index*4 + index
        # print "pixel index {} channel index {} mapped pixel {} mapped channel {} buffer len {}".format(pixel_index, channel_index, int(math.floor(channel_index/3)), int(channel_index%3), len(pixel_buffer))
        pixel_buffer[int(math.floor(channel_index/3))][int(channel_index%3)] = value
