Will-o-the-wisp
===============

60 4-channel (rgbww) SK6812 LEDs arranged over 12 pentagonal PCBs in a pentagonal dodecahedron, controlled by a teensy 3.X.
---------------------------------------------

![Hands for scale](/images/wisp.jpg?raw=true "Assembled example")

Assembly notes:
--------------

- Each PCB has one input port and four output ports. Obviously the order and orientation in which they are wired up is critical, as co-ordinate calculation is done by static array lookup. I have not yet produced a set of instructions which represent how to assemble them in the order assumed by the software.

- I strongly advise against trying to get the firmware to compile on an arduino, as the full firmware relies on several large lookup tables being kept in memory. The code is written on the assumption that it will be run on something with at least as much capacity as a teensy 3

- You may notice that the current version of the PCBs have 6 leds one, rather than the stated 5. This is because I revised the design to give higher resolution for spacial patterns prior to learning that the fadecandy dithering routine supports a maximum of 64 leds in a string, and I have the intention of hacking in a cut-down version of fadecandy in order to support temporal dithering. However, the 64 pixel limit is a timing constraint, and is based on the assumption of 3 channels. As we are using 4 channels, this may imply a limit of (64*3 / 4 =) 48 LEDs per lantern, unless we split 3 DMA channels over 2 lanterns, which will involve much more wiring and anyway it's all very complicated and I don't want to think about it right now, but that's why.

- note that the Teensy has a logic voltage level of 3v3 and the pixels have a voltage level of 5v. I found that it mostly worked without shifting the logic level, but it was more prone to glitching. For this reason, I recommend the use of a logic level converter.

- When you're testing the module, I strongly recommend using some kind of diffuser, otherwise you'll end up with a bunch of things which look like QR codes in your vision, and that can't be good for you.

- The script which generates the palettes takes R8G8B8 encoded windows bitmaps, and requires python 3, scipy, numpy, and pillow. I intend to shortly add more interpolation options and make it way less hacky.
