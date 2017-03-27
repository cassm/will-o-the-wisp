import math

def get_buffer_size(n_pixels):
    return int(math.ceil(n_pixels*1.34))

def simulate_pixel(pixel_buffer, pixel_index, rgbw_val):
    g, r, b, w = rgbw_val
    pixel_buffer[pixel_index] = (r+w, g+w, b+w)

def set_pixel(pixel_buffer, pixel_index, rgbw_val):
    for index, value in enumerate(rgbw_val):
        if index == 0:
            value *= 0.6
        channel_index = pixel_index*4 + index
        pixel_buffer[int(math.floor(channel_index/3))][int(channel_index%3)] = value
