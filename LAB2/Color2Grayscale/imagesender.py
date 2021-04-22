from time import time
from PIL import Image # install pillow
from serial import Serial # install pyserial
from itertools import chain

# max size of the split array
pixel_chunk_size = 100
chunk_size = pixel_chunk_size*3 # a chunk must be divisible by 3 as it's 3 bytes per pixel
# keep track of start time
started = time()
# open source image and get size
color_im = Image.open("img.jpg").getdata()
width, height = color_im.size
# convert color_im to list
color_pixels = list(chain.from_iterable(color_im))
# split into smaller chunks
color_pixels = [color_pixels[i:i+chunk_size]
                for i in range(0, len(color_pixels), chunk_size)]
# create B/W array
bw_pixels = []
# instantiate serial interface
serial = Serial('COM7', 115200, write_timeout=0)

# send all colored pixels
last_percent = 0
for i, chunk in enumerate(color_pixels):
    # write chunk into FPGA
    serial.write(chunk)
    # blocking read
    bw_pixels.extend(serial.read(len(chunk)//3))
    # calculate percent remaining time
    percent = int(i / len(color_pixels) * 100)
    # print advance only if the percent is different
    if percent > last_percent: 
        last_percent = percent
        elapsed = int(time() - started)
        total = int(elapsed / (percent / 100))
        remaining = total - elapsed
        print(f"Currently at {percent}%. "
              f"Elapsed: {elapsed}s. "
              f"Remaining: {remaining}s")

print("Done")
# create B/W image
bw_image = Image.new('L', color_im.size)
# put pixels in B/W image
bw_image.putdata(bw_pixels)
# save B/W image
bw_image.save("black_and_white.png")
bw_image.show()
# get time difference
elapsed = time() - started
# show time difference
print(f"It took {int(elapsed)} seconds.")