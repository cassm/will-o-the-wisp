import math


def get_buffer_size(n_pixels):
    return int(math.ceil(n_pixels * 1.34))


def set_pixel(pixel_buffer, pixel_index, rgbw_val, simulate, min_level, invert):
    if invert:
        rgb_val = list(rgbw_val[channel] + rgbw_val[3] for channel in range(3))
        rgb_val = list(max(255-channel, 0) for channel in rgb_val)
        w_val = min(rgb_val)
        rgbw_val = list(channel + w_val for channel in rgb_val)
        rgbw_val.append(w_val)

    if simulate:
        g, r, b, w = rgbw_val
        pixel_buffer[pixel_index] = (r + w, g + w, b + w)

    else:
        for index, value in enumerate(rgbw_val):
            channel_index = pixel_index * 4 + index
            channel_value = max(value, min_level)
            pixel_buffer[int(math.floor(channel_index / 3))][int(channel_index % 3)] = channel_value


def get_pixel(pixel_buffer, pixel_index, simulate=False):
    rgbw_val = []

    if simulate:
        w = min(pixel_buffer[pixel_index])
        for i in range(3):
            rgbw_val.append(pixel_buffer[pixel_index][i] - w)
        rgbw_val.append(w)

    else:
        for index in range(4):
            channel_index = pixel_index * 4 + index
            rgbw_val.append(pixel_buffer[int(math.floor(channel_index / 3))][int(channel_index % 3)])

    return rgbw_val
