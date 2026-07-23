"""Small classroom TCP echo server. Use only on a trusted lab network."""
import socket

HOST = "0.0.0.0"
PORT = 5000

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as server:
    server.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    server.bind((HOST, PORT))
    server.listen()
    print(f"Listening on TCP port {PORT}. Press Ctrl+C to stop.")
    connection, address = server.accept()
    with connection:
        print("Connected by", address)
        while True:
            data = connection.recv(1024)
            if not data:
                break
            text = data.decode("utf-8", errors="replace")
            print("Received:", text)
            connection.sendall(("Server received: " + text).encode("utf-8"))
