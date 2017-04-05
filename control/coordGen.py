#!/usr/bin/env python

import math

spherical = (( 60,  06), ( 20,  30), ( 45,  48), ( 75,  18), (100, 348),
             (300,  06), (260, 348), (285,  18), (315,  48), (340,  30),
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

lanternLocations = ((0.0, 0.0, 0.0),
                    (1.3, -0.8, -0.2), (1.3, 0.8, -0.2),
                    (3.1, -1.1, -0.4), (3.1, 1.1, -0.4),
                    (5.1, -1.4, -0.6), (5.1, 1.4, -0.6),
                    (7.1, -1.6, -0.8), (7.1, 1.6, -0.8))
lanternRadii = (0.25, 0.2, 0.2, 0.2, 0.2, 0.15, 0.15, 0.15, 0.15)
globalCartesian = []
originDelta = []
localCartesian = []
sphericalRadians = []

for coordinate in spherical:
    phi = math.radians(coordinate[1])
    theta = math.radians(coordinate[0])
    sphericalRadians.append((round(phi, 4), round(theta, 4)))

for lanternIndex, location in enumerate(lanternLocations):
    lanternCartesian = []

    for phi, theta in sphericalRadians:
        x = round(lanternRadii[lanternIndex] * math.sin(phi) * math.cos(theta), 4)
        y = round(lanternRadii[lanternIndex] * math.sin(phi) * math.sin(theta), 4)
        z = round(lanternRadii[lanternIndex] * math.cos(phi), 4)

        lanternCartesian.append((x, y, z))
        globalCartesian.append((location[0] + x, location[1] + y, location[2] + z))
        originDelta.append(math.sqrt((location[0] + x)**2 + (location[1] + y)**2 + (location[2] + z)**2))

    localCartesian.append(lanternCartesian)

f = open("coords.py", "w")
f.write("spherical = " + str(sphericalRadians) + "\n\nglobalCartesian = " + str(globalCartesian) + "\n\noriginDelta = " + str(originDelta) + "\n\nlocalCartesian = " + str(localCartesian) + "\n\nlanternLocations = " + str(lanternLocations) + "\n")
f.close()

f = open("lanterns.json", "w")
lines = []
for coordinate in globalCartesian:
    lines.append("  {\"point\": [%0.4f, %0.4f, %0.4f]}" % (coordinate[0], coordinate[1], coordinate[2]))

f.write('[\n' + ',\n'.join(lines) + '\n]')
f.close()
