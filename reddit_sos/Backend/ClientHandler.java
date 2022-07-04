package network;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.util.Scanner;
import controller.Controller;

public class ClientHandler extends Thread {
    String serverSuccess = "1";
    String response;
    private Socket socket;

    public ClientHandler(Socket socket) {
        this.socket = socket;
    }

    public void run() {
        try {
            DataInputStream dis = new DataInputStream(socket.getInputStream());
            DataOutputStream dos = new DataOutputStream(socket.getOutputStream());
            StringBuilder request = new StringBuilder();
            int requestInByte = dis.read();
            while (requestInByte != 0) {
                request.append((char) requestInByte);
                requestInByte = dis.read();
            }
            Scanner scanner = new Scanner(request.toString());


            String command = scanner.nextLine();
            String data = scanner.nextLine();



            if (command.equals("signUp")){
                checkDataSignUp(data);
                if (serverSuccess.equals("1")) {
                    new Controller().run(command, data);
                }
            }

            if (command.equals("login")){
                if (checkDataLogin(data)){
                    if (new Controller().run(command, data) ){
                        serverSuccess = "1";
                    }
                    else {
                        serverSuccess = "2";
                    }
                }

            }

            if (command.equals("editProfile")){
                new Controller().run((command), data);
            }

            if (command.equals("joinSubReddit")){
                new Controller().run(command, data);
            }


            dos.writeBytes(serverSuccess);
            dos.flush();
            dos.close();
            dis.close();
            scanner.close();
            socket.close();
        } catch (IOException e) {
            System.out.println("Client handler exception");
        }

    }

    public void checkDataSignUp(String data) {
        if (data.split("/").length < 3) {
            serverSuccess = "0";
        }
    }

    public boolean checkDataLogin(String data) {
        if (data.split("/").length < 2) {
            serverSuccess = "0";
            return false;
        }
        return true;
    }
}
