package controller;

import database.*;
import utils.Convertor;
import utils.Equal;

import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Controller {


    public boolean run(String command, String data) throws IOException {
        Map<String, String> dataMap = new HashMap<>();
        switch (command) {
            case "signUp":
                dataMap = Convertor.stringToMapSignUp(data);
                signUp(dataMap);
                break;
            case "login":
                dataMap = Convertor.stringToMapLogin(data);
                return (login(dataMap));
            case "editProfile" :
                dataMap = Convertor.stringToMapSignUp(data);
                editPofile(dataMap);
                break;
            case "joinSubReddit" :
                editJoinSubreddit(userOldSubRedditInfo(data, listSubReddits("C:\\Sina Files\\Beheshti\\Term2\\AP\\src\\Data\\subRedditsList.txt")), data, "C:\\Sina Files\\Beheshti\\Term2\\AP\\src\\Data\\subRedditsList.txt");
                break;

        }
        return false;
    }

    private void signUp(Map<String, String> data) throws IOException {
        DataBase.getInstance().getTable("signUp").insert(data, DataBase.getInstance().getTable("signUp").getPath());
    }

    private boolean login(Map<String, String> data) throws IOException {
        if (loginSearch(data, DataBase.getInstance().getTable("signUp").getMaps())) {
            return true;
        }
        return false;
    }

    private boolean loginSearch(Map<String, String> data, ArrayList<Map<String, String>> allData) {
        for (Map<String, String> allDataCheck : allData) {
            if (Equal.mapCheck(allDataCheck, data)) {
                return true;
            }
        }
        return false;
    }

    private String userOldInfo(Map<String, String> data, ArrayList<Map<String, String>> allData) {
        for (Map<String, String> allDataCheck : allData) {
            if (Equal.userCheck( allDataCheck, data)) {
                return Convertor.mapToStringSignUp(allDataCheck);
            }
        }
        return "";
    }

    private String userOldSubRedditInfo(String  data, ArrayList<String> allData) {
        for (String allDataCheck : allData) {
            if (Equal.subRedditCheck( allDataCheck, data)) {
                return allDataCheck;
            }
        }
        return "";
    }

    private void editPofile(Map<String, String> data) throws IOException {
        String oldInfo = userOldInfo(data, DataBase.getInstance().getTable("signUp").getMaps());
        DataBase.getInstance().getTable("signUp").deleteAndInsert(oldInfo, data, DataBase.getInstance().getTable("signUp").getPath());
    }

    private void editJoinSubreddit(String oldData,String data, String path){
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
            System.out.println("/" + oldData + "/");
            System.out.println("map to string:\n" +  "/" + data.replace("\n", "") + "/");
            System.out.println("****");
            System.out.println(fileContents.contains(oldData));
            fileContents = fileContents.replace(oldData , data.replace("\n", ""));
            fileWriter = new FileWriter(path);
            System.out.println("new data:\n" + "/" +  fileContents + "/");
            fileWriter.append(fileContents);
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e) {
            System.out.println("write to file failed");
        }
    }

    private static ArrayList<String> listSubReddits(String path) throws IOException {
        ArrayList<String> ans = new ArrayList<>();
        Scanner scanner = new Scanner(Paths.get(path));
        StringBuffer buffer = new StringBuffer();
        while (scanner.hasNextLine()) {
            buffer.append(scanner.nextLine() + System.lineSeparator());
        }
        String fileContents = buffer.toString();
        String[] split = fileContents.split("\n");
        for (String s : split){
            ans.add(s);
        }
        return ans;

    }


}
