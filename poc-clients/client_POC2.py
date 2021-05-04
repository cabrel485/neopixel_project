import time
import socket
import fcntl, os
import numpy as np
from PIL import Image

class TripClient:
    def __init__(self):
        self.numPixels = 64
        self.sock = None
        self.sock_response = ""


    def createSocket(self, host, port):
        try:
            self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)  # create a socket
            self.sock.connect((host, port))
            #self.sock.settimeout(1)
            return self.sock
        except Exception as e:  # If any exception happens during send the data
            print(e)
            return -1


    def Color(self, g, r, b):
        raw = 0x00
        raw |= (g & 0x000000FF) << 16  # 1. byte
        raw |= (r & 0x000000FF) << 8   # 2. byte
        raw |= (b & 0x000000FF) << 0   # 3. byte
        return raw

    def setIdxAndColor(self, idx, color):
        raw = 0x00
        raw |= (idx & 0x000000FF) << 24
        raw |= (color & 0x00FFFFFF) << 0
        return raw

    def pixel_idx_and_Color(self, idx, g, r, b):
        raw = 0x00
        raw |= (idx & 0x000000FF) << 24  # idx MSB (Byte), 1. Byte
        raw |= (g & 0x000000FF) << 16    # green 2. byte
        raw |= (r & 0x000000FF) << 8     # red 3. byte
        raw |= (b & 0x000000FF) << 0     # blue 4. byte
        return raw

    def show(self):
        try:
            self.sock.sendall("show;".encode())
        except Exception as e:
            print("exception by show()", e)

    def showAndGetResp(self):
        try:
            self.sock.sendall("show?".encode())
            response = ((self.sock.recv(500)).decode("utf-8")).split("\n")
            for res in response:
                print("server said: ", res)
            return response
        except Exception as e:
            print("exception by showAndGetResp", e)

    def initialize(self):
        try:
            self.sock.sendall("init;".encode())
        except Exception as e:
            print("exception by show()", e)

    def initAndGetResp(self):
        try:
            self.sock.sendall("init?".encode())
            response = ((self.sock.recv(1000)).decode("utf-8")).split("\n")
            for res in response:
                print("server said: ", res)
            return response
        except Exception as e:
            print("exception by showAndGetResp", e)

    # Define functions which animate LEDs in various ways.
    def colorWipe(self, color, wait_ms=10):
        """Wipe color across display a pixel at a time."""
        for i in range(self.numPixels):
            message = str(self.setIdxAndColor(i, color)) + ";"
            self.sock.sendall(message.encode())
            self.show()
            time.sleep(wait_ms / 1000.0)

    def theaterChase(self, color, wait_ms=100, iterations=10):
        """Movie theater light style chaser animation."""
        for j in range(iterations):
            for q in range(3):
                for i in range(0, self.numPixels, 3):
                    idx = i+q
                    message = str(self.setIdxAndColor(idx, color)) + ";"
                    if (idx >= self.numPixels-1):  # wrong data. idx is out of range
                        #print("wrong idx sent: ", idx)
                        #print("Server resp : ", self.sock.recv(100))
                        continue
                    self.sock.sendall(message.encode())
                    time.sleep(1 / 1000.0)
                    #print("mesg : ", message)


                self.show()
                time.sleep(wait_ms / 1000.0)
                for i in range(0, self.numPixels, 3):
                    idx = i + q
                    message = str(self.setIdxAndColor(idx, 0)) + ";"
                    if (idx >= self.numPixels):                                                   # wrong data. idx is out of range
                        #print("wrong idx sent: ", idx)
                        #print("Server resp : ", self.sock.recv(100))
                        continue
                    self.sock.sendall(message.encode())
                    #print("mesg : ", message)





    def wheel(self, pos):
        """Generate rainbow colors across 0-255 positions."""
        if pos < 85:
            return self.Color(pos * 3, 255 - pos * 3, 0)
        elif pos < 170:
            pos -= 85
            return self.Color(255 - pos * 3, 0, pos * 3)
        else:
            pos -= 170
            return self.Color(0, pos * 3, 255 - pos * 3)

    def rainbow(self, wait_ms=2, iterations=1):
        """Draw rainbow that fades across all pixels at once."""
        for j in range(256 * iterations):
            for i in range(self.numPixels):
                message = str(self.setIdxAndColor(i, self.wheel((i + j) & 255))) + ";"
                self.sock.sendall(message.encode())
                time.sleep(1 / 1000.0)
                #print("mesg : ", message)
            self.show()
            time.sleep(wait_ms/1000.0)

    def rainbowCycle(self, wait_ms=2, iterations=3):
        """Draw rainbow that uniformly distributes itself across all pixels."""
        for j in range(256 * iterations):
            for i in range(self.numPixels):
                #strip.setPixelColor(i, self.wheel((int(i * 256 / strip.numPixels()) + j) & 255))
                message = str(self.setIdxAndColor(i, self.wheel((int(i * 256 / self.numPixels) + j) & 255))) + ";"
                self.sock.sendall(message.encode())
                time.sleep(1 / 1000.0)
                #print("mesg : ", message)
            self.show()
            time.sleep(wait_ms/1000.0)

    def theaterChaseRainbow(self, wait_ms=5):
        """Rainbow movie theater light style chaser animation."""
        for j in range(256):
            for q in range(3):
                for i in range(0, self.numPixels, 3):
                    message = str(self.setIdxAndColor(i + q, self.wheel((i + j) % 255))) + ";"
                    self.sock.sendall(message.encode())
                self.show()
                time.sleep(wait_ms/1000.0)
                for i in range(0, self.numPixels, 3):
                    message = str(self.setIdxAndColor(i + q, 0)) + ";"
                    self.sock.sendall(message.encode())


    def sendImageAsOnePacket(self):
        img = Image.open('testrgb.png')
        rgb_img_array = np.array(img)
        i = 0
        message = ""
        for x in range(0, 8):
            for y in range(0, 8):
                if i < 63:
                    # serialize all pixel data with the separator token ";"
                    message += str(self.setIdxAndColor(i,
                                                          self.Color(rgb_img_array[y][x][1], rgb_img_array[y][x][0],
                                                                         rgb_img_array[y][x][
                                                                             2]))) + ";"  # set as grb for w2812b
                else:
                    message += str(self.setIdxAndColor(i,
                                                          self.Color(rgb_img_array[y][x][1], rgb_img_array[y][x][0],
                                                                         rgb_img_array[y][x][
                                                                             2]))) + "?"  # to get a response from server

                i += 1


        #print(message)
        self.sock.sendall(message.encode())
        myClient.show()
        time.sleep(1)

if __name__ == '__main__':
    myClient = TripClient()
    s = myClient.createSocket("192.168.0.232", 8888)
    #fcntl.fcntl(s, fcntl.F_SETFL, os.O_NONBLOCK)  #  to set socket on non-blocking recv()

    if s != -1:
        #while 1:
            myClient.sendImageAsOnePacket()

            print('Color wipe animations.')
            myClient.colorWipe(myClient.Color(150, 0, 0))  # Red wipe
            myClient.colorWipe(myClient.Color(0, 150, 0))  # Blue wipe
            myClient.colorWipe(myClient.Color(0, 0, 150))  # Blue wipe
            myClient.colorWipe(myClient.Color(100, 100, 100))  # white wipe
            print('Theater chase animations.')
            myClient.theaterChase(myClient.Color(127, 0, 127))  # White theater chase
            myClient.theaterChase(myClient.Color(127, 127, 0))  # Red theater chase
            myClient.theaterChase(myClient.Color(0, 127, 127))  # Blue theater chase

            myClient.initAndGetResp()
            time.sleep(2)
