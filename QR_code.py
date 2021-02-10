
QR Code
=======
pip install qrcode
pip install opencv-python

import qrcode
img = qrcode.make("https://www.youtube.com/watch?v=-GmJLI122ZM")
img.save("code_basics.jpg")

img = qrcode.make("Nidhi Gupta")
img.save("nid.jpg")

import cv2
d=cv2.QRCodeDetector()
val , points , straight_qrcode = d.detectAndDecode(cv2.imread("nid.jpg"))
print(val)