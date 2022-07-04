package database;

import utils.Convertor;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

public class Table {
    private String path;
    private ArrayList<Map<String, String>> users;


    public Table(String path) throws IOException {
        this.path = path;
        users = new ArrayList<>();
        List<String> list = Files.readAllLines(Paths.get(path));
        System.out.println(list.size());
        for (int i = 0 ; i < list.size() ; i++) {
            System.out.println(list.get((i)));
            String formedInfo = list.get(i).replaceAll("passWord:", "");
            formedInfo = formedInfo.replaceAll("userName:", "");
            formedInfo = formedInfo.replaceAll("email:", "");
            users.add(Convertor.stringToMapUsers(formedInfo));
        }

    }


    public void insert(Map<String, String> map, String path) {
        FileWriter fileWriter = null;
        try {
            fileWriter = new FileWriter(path, true);
            fileWriter.write(Convertor.mapToStringSignUp(map));
//            System.out.println("filewriter : " + Convertor.mapToStringSignUp(map));
//            users.add(map);
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e) {
            System.out.println("write to file failed");
        }
    }

    public void deleteAndInsert(String oldData, Map<String, String> map, String path) {
        FileWriter fileWriter = null;
        try {
            Scanner scanner = new Scanner(Paths.get(path));
            StringBuffer buffer = new StringBuffer();
            while (scanner.hasNextLine()) {
                buffer.append(scanner.nextLine() + System.lineSeparator());
            }
            String fileContents = buffer.toString();
            System.out.println("contents of file\n" + "/" +  fileContents + "/");
            scanner.close();
            System.out.println("edited old data: " + "/" + oldData.replace("\n", "") + "/");
            oldData= oldData.replace("\n", "");
            System.out.println("****");
            System.out.println("old data:\n" + "/" + oldData + "/");
            System.out.println(map.toString());
            System.out.println("map to string:\n" +  "/" + Convertor.mapToStringSignUp(map).replace("\n", "") + "/");
            System.out.println("****");
            System.out.println(fileContents.contains(oldData));
            fileContents = fileContents.replace(oldData , Convertor.mapToStringSignUp(map).replace("\n", ""));
            fileWriter = new FileWriter(path);
            System.out.println("new data:\n" + "/" +  fileContents + "/");
            fileWriter.append(fileContents);
            fileWriter.flush();
            users.remove(Convertor.stringToMapUsers(oldData));
            users.add(map);
            fileWriter.close();
        } catch (IOException e) {
            System.out.println("write to file failed");
        }
    }





    public String getPath() {
        return path;
    }

    public ArrayList<Map<String, String>> getMaps() {
        return users;
    }

}
