"""Small classroom TCP client. Replace SERVER_IP with the lab server address."""
import socket

SERVER_IP = "192.168.1.23"
PORT = 5000

message = input("Message to send: ")
with socket.create_connection((SERVER_IP, PORT), timeout=10) as client:
    client.sendall(message.encode("utf-8"))
    response = client.recv(1024)
    print(response.decode("utf-8", errors="replace"))
