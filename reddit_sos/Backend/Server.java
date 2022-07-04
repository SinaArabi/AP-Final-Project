package network;

import network.ClientHandler;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

public class Server {
    static boolean isServerUp = true;
    static int port = 1111;

    public void start()  {
        try {
            ServerSocket serverSocket = new ServerSocket(port);
            while (isServerUp){
                Socket socket = serverSocket.accept();
                new ClientHandler(socket).start();
            }
        } catch (IOException e) {
            System.out.println("Cant start server");
        }

    }
}

