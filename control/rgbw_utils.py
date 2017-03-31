import math

def get_buffer_size(n_pixels):
    return int(math.ceil(n_pixels*1.34))

def set_pixel(pixel_buffer, pixel_index, rgbw_val, simulate=False):
    if simulate:
        g, r, b, w = rgbw_val
        pixel_buffer[pixel_index] = (r+w, g+w, b+w)

    else:
        for index, value in enumerate(rgbw_val):
            channel_index = pixel_index*4 + index
            pixel_buffer[int(math.floor(channel_index/3))][int(channel_index%3)] = value

def get_pixel(pixel_buffer, pixel_index, simulate=False):
    rgbw_val = []

    if simulate:
        w = min(pixel_buffer[pixel_index])
        for i in range(3):
            rgbw_val.append(pixel_buffer[pixel_index][i]-w)
        rgbw_val.append(w)

    else:
        for index in range(4):
            channel_index = pixel_index*4 + index
            rgbw_val.append(pixel_buffer[int(math.floor(channel_index/3))][int(channel_index%3)])

    return rgbw_val
