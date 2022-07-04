package utils;

import java.util.HashMap;
import java.util.Map;

public class Convertor {
    public static Map<String, String> stringToMapSignUp(String str){
        System.out.println(str);
        String[] info = str.split("/");
        Map<String, String > signUpInfo = new HashMap<>() ;

        signUpInfo.put("userName", info[0]);

        signUpInfo.put("email", info[1]);
        signUpInfo.put("passWord", info[2]);
        return signUpInfo;
    }


    public static String mapToStringSignUp(Map<String, String> map){
        int counter = 0;
        StringBuilder strBuilder = new StringBuilder();
        for (Map.Entry<String, String> entry: map.entrySet()){
            strBuilder.append(String.format("%s:%s", entry.getKey(), entry.getValue()));
            if (counter < 2){
                strBuilder.append("/");
            }
            counter++;
        }
        strBuilder.append("\n");
        return strBuilder.toString();
    }

    public static Map<String, String> stringToMapLogin(String str){
        String[] info = str.split("/");
        Map<String, String > signUpInfo = new HashMap<>() ;
        signUpInfo.put("userName", info[0]);
        signUpInfo.put("passWord", info[1]);
        return signUpInfo;
    }

    public static Map<String, String> stringToMapUsers(String str){
        String[] info = str.split("/");
        Map<String, String > signUpInfo = new HashMap<>() ;
        signUpInfo.put("passWord", info[0]);
        signUpInfo.put("userName", info[1]);
        signUpInfo.put("email", info[2]);
        return signUpInfo;
    }

    public static String  deleteEmptyLines(String str){
        return str.replace("\n", "");
    }

    public static String  getSubRedditName(String data){
        String[] split = data.split("/");
        return split[0];
    }


    public static Map<String, String> stringToMapAddPost(String str){
        System.out.println(str);
        String[] info = str.split("/");
        Map<String, String > signUpInfo = new HashMap<>() ;
        signUpInfo.put("postTitle", info[0]);
        signUpInfo.put("postContent", info[1]);
        signUpInfo.put("subName", info[2]);
        return signUpInfo;
    }


    public static String mapToStringAddPost(Map<String, String> map){
        int counter = 0;
        StringBuilder strBuilder = new StringBuilder();
        for (Map.Entry<String, String> entry: map.entrySet()){
            strBuilder.append(String.format("%s:%s", entry.getKey(), entry.getValue()));
            if (counter < 3){
                strBuilder.append("/");
            }
            counter++;
        }
        strBuilder.append("\n");
        return strBuilder.toString();
    }

}
