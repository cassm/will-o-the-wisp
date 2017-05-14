#!/usr/bin/env python

import math

spherical = (( 60,   6), ( 20,  30), ( 45,  48), ( 75,  18), (100, 348),
             (300,   6), (260, 348), (285,  18), (315,  48), (340,  30),
             (180, 328), (140, 333), (165, 300), (195, 300), (220, 333),
             (120, 318), ( 95, 338), (109, 238), (131, 258), (145, 288),
             ( 71,  58), ( 49,  78), ( 35, 108), ( 60, 138), ( 85, 158),
             ( 25,  63), ( 00,  68), (335,  63), (249,  96), ( 11,  96),
             (311,  78), (289,  58), (275, 158), (300, 138), (325, 108),
             (265, 338), (240, 318), (215, 288), (229, 258), (251, 238),
             (191, 276), (169, 243), (155, 248), (180, 243), (205, 276),
             (135, 228), (105, 198), ( 80, 168), (120, 186), (160, 210),
             ( 40, 153), ( 15, 120), (345, 120), (320, 153), (  5, 148),
             (280, 168), (255, 198), (225, 228), (200, 210), (240, 186))

# lantern radii
# Small = 0.15
# Medium = 0.2
# Large = 0.25? check

lantern_locations = ((0.0, 0.0, 0.0),
                     (2.0, 0.0, 0.0), (0.0, 2.0, 0.0),
                     (-2.0, 0.0, 0.0), (0.0, -2.0, 0.0),
                     (0.88, 0.88, 0.0), (-0.88, 0.88, 0.0),
                     (-0.88, -0.88, 0.0), (0.88, -0.88, 0.0))
lantern_radii = (0.25, 0.2, 0.2, 0.2, 0.2, 0.15, 0.15, 0.15, 0.15)
# lantern_orientations = (270, 345, 90, 50, 110, 270, 270, 270, 290)
lantern_orientations = (0, 0, 0, 0, 0, 0, 0, 0, 0)

global_cartesian = []
origin_delta = []
local_cartesian = []
spherical_radians = []
normalised_cartesian = []

for lantern in range(len(lantern_orientations)):
    lantern_coords = []
    for coordinate in spherical:
        phi = math.radians(coordinate[1])
        theta = math.radians(coordinate[0]-lantern_orientations[lantern])
        lantern_coords.append((phi, theta))
        # sphericalRadians.append((round(phi, 4), round(theta, 4)))
    spherical_radians.append(lantern_coords)

for phi, theta in spherical_radians[0]:
    x = round(math.sin(phi%3.1416) * math.cos(theta), 4)
    y = round(math.sin(phi%3.1416) * math.sin(theta), 4)
    z = round(math.cos(phi), 4)
    normalised_cartesian.append((x, y, z))

for lanternIndex, location in enumerate(lantern_locations):
    lantern_cartesian = []

    for phi, theta in spherical_radians[lanternIndex]:
        x = round(lantern_radii[lanternIndex] * math.sin(phi%3.1416) * math.cos(theta), 4)
        y = round(lantern_radii[lanternIndex] * math.sin(phi%3.1416) * math.sin(theta), 4)
        z = round(lantern_radii[lanternIndex] * math.cos(phi), 4)

        lantern_cartesian.append((x, y, z))
        global_cartesian.append((location[0] + x, location[1] + y, location[2] + z))
        if location == (0, 0, 0):
            origin_delta.append(0)
        else:
            origin_delta.append(math.sqrt((location[0] + x)**2 + (location[1] + y)**2 + (location[2] + z)**2))

    local_cartesian.append(lantern_cartesian)

f = open("coords.py", "w")
f.write("spherical = " + str(spherical_radians) + "\n\nglobal_cartesian = " + str(global_cartesian) + "\n\norigin_delta = " + str(origin_delta) + "\n\nlocal_cartesian = " + str(local_cartesian) + "\n\nnormalised_cartesian = " + str(normalised_cartesian) + "\n\nlantern_locations = " + str(lantern_locations) + "\n")
f.close()

f = open("lanterns.json", "w")
lines = []
for coordinate in global_cartesian:
    lines.append("  {\"point\": [%0.4f, %0.4f, %0.4f]}" % (coordinate[0], coordinate[1], coordinate[2]))

f.write('[\n' + ',\n'.join(lines) + '\n]')
f.close()
