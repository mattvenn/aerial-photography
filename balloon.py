import time
import picamera
import RPi.GPIO as GPIO
import os

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BOARD)
led = 3
GPIO.setup(led,GPIO.OUT)
GPIO.output(led,True)

photos = os.listdir('./photos')
latest_photo = sorted(photos)[-1]
latest_photo_num = int(latest_photo.replace('.jpg',''))

count = latest_photo_num + 1
print("starting at %d" % count )
with picamera.PiCamera() as camera:
    camera.resolution = ( 2592 , 1944)
    time.sleep(2)
    while True:
        print(count)
        camera.capture('./photos/' + str(count) + '.jpg')
        time.sleep(10)
        count += 1

