import time
import socket
import fcntl, os

class TripPocClient:
    def __init__(self):
        self.numPixels = 64
        self.sock = None
        self.sock_response = ""

    def createSocket(self, host, port):
        try:
            self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)  # create a socket
            self.sock.connect((host, port))
            # self.sock.settimeout(1)
            return self.sock
        except Exception as e:  # If any exception happens during send the data
            print(e)
            return -1

    def Color(self, g, r, b):
        raw = 0x00
        raw |= (g & 0x000000FF) << 16  # 1. byte
        raw |= (r & 0x000000FF) << 8  # 2. byte
        raw |= (b & 0x000000FF) << 0  # 3. byte
        return raw

    def setIdxAndColor(self, idx, color):
        raw = 0x00
        raw |= (idx & 0x000000FF) << 24
        raw |= (color & 0x00FFFFFF) << 0
        return raw

    def pixel_idx_and_Color(self, idx, g, r, b):
        raw = 0x00
        raw |= (idx & 0x000000FF) << 24  # idx MSB (Byte), 1. Byte
        raw |= (g & 0x000000FF) << 16  # green 2. byte
        raw |= (r & 0x000000FF) << 8  # red 3. byte
        raw |= (b & 0x000000FF) << 0  # blue 4. byte
        return raw

    def show(self):
        try:
            print("send packet : show;")
            self.sock.sendall("show;".encode())
        except Exception as e:
            print("exception by show()", e)

    def show_get_resp(self):
        try:
            print("send packet : show?")
            self.sock.sendall("show?".encode())
            response = ((self.sock.recv(500)).decode("utf-8")).split("\n")
            for res in response:
                print("server said: ", res)
            return response
        except Exception as e:
            print("exception by showAndGetResp", e)

    def initialize(self):
        try:
            print("send packet : init;")
            self.sock.sendall("init;".encode())
        except Exception as e:
            print("exception by show()", e)

    def init_get_resp(self):
        try:
            print("send packet : init?")
            self.sock.sendall("init?".encode())
            response = ((self.sock.recv(1000)).decode("utf-8")).split("\n")
            #print(len(response))
            for res in response:
                if res:
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


if __name__ == '__main__':
    myClient = TripPocClient()
    myClient.numPixels = 64
    clientSock1 = myClient.createSocket("192.168.0.232", 8887)
    clientSock2 = myClient.createSocket("192.168.0.232", 8887)
    # fcntl.fcntl(s, fcntl.F_SETFL, os.O_NONBLOCK)  #  to set socket on non-blocking recv()

    if clientSock1 != -1:

        # ######################################################
        # # 1. send the pixel packet one by one
        # for idx in range(myClient.numPixels):
        #     packet = str(myClient.pixel_idx_and_Color(idx, g=150, r=0, b=0)) + ";"
        #     print("send packet : ", packet)
        #     clientSock1.sendall(packet.encode())
        #     myClient.show()
        #     time.sleep(10 / 1000.0)

        ######################################################
        # 2. send all pixel packets as one
        packets = ""
        for idx in range(5):
            packets += str(myClient.pixel_idx_and_Color(idx, g=0, r=0, b=150)) + ";"
        print("\nsend packet : ", packets)
        clientSock1.sendall(packets.encode())
        myClient.show()
        time.sleep(10 / 1000.0)

        # ######################################################
        # # 4. send invalid packet and check answer
        # response = ""
        # for idx in range(58, 67):
        #     packet = str(myClient.pixel_idx_and_Color(idx, g=150, r=0, b=0)) + ";"
        #     print("send packet : ", packet)
        #     clientSock1.sendall(packet.encode())
        #
        #     if(idx >= myClient.numPixels):
        #         response += (clientSock1.recv(1000)).decode("utf-8")
        #     myClient.show()
        #     time.sleep(10 / 1000.0)
        # response = response.split("\n")
        # for res in response:
        #     if res:
        #         print("Server resp: ", res)
        #
        # #####################################################
        # # 5. send all pixel packets as one and wait for confirmation
        # packets = ""
        # for idx in range(myClient.numPixels):
        #     packets += str(myClient.pixel_idx_and_Color(idx, g=22, r=22, b=0)) + ";"
        # print("send packet : ", packets)
        # clientSock1.sendall(packets.encode())
        # myClient.show_get_resp()
        # time.sleep(10 / 1000.0)
        #
        # ######################################################
        # # 6. send packets from two clients
        # half = int(myClient.numPixels/2)
        # for idx in range(half):
        #     # client 2
        #     packet = str(myClient.pixel_idx_and_Color(idx, g=0, r=150, b=0)) + ";"
        #     print("client 1 send : ", packet)
        #     clientSock1.sendall(packet.encode())
        #     #myClient.show()
        #     # client 2
        #     packet = str(myClient.pixel_idx_and_Color((myClient.numPixels - 1) - idx, g=150, r=0, b=150)) + ";"
        #     print("client 2 send : ", packet)
        #     clientSock2.sendall(packet.encode())
        #     myClient.show()
        #     time.sleep(500 / 1000.0)



        # myClient.colorWipe(myClient.Color(200, 0, 0))  # Red wipe
        # myClient.colorWipe(myClient.Color(0, 200, 0))  # Blue wipe
        # myClient.colorWipe(myClient.Color(0, 0, 200))  # Blue wipe
        # myClient.colorWipe(myClient.Color(100, 100, 100))  # white wipe
        #
        myClient.init_get_resp()
        # time.sleep(2)
