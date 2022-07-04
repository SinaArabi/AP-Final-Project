package utils;

import java.util.Map;
import java.util.Set;

public class Equal {
    public static boolean mapCheck(Map<String, String> map1, Map<String, String> map2){
        int counter = 0;
        Set<String> map1Keys = map1.keySet();
        Set<String> map2Keys = map2.keySet();
        for (String key1: map1Keys ){
            for ( String key2: map2Keys){
                if (key1.equals(key2)){

                    if (map1.get(key1).equals(map2.get(key2))){
                        counter++ ;

                    }
                }
            }
        }
        System.out.println(counter);
        if (counter < 2){
            return false;
        }
        return true;
    }
    public static boolean userCheck(Map<String, String> map1, Map<String, String> map2){
        if (map1.get("userName").equals(map2.get("userName"))){
            return true;
        }
        return false;
    }
    public static boolean subRedditCheck(String sub1, String sub2){
        if (Convertor.getSubRedditName(sub1).equals(Convertor.getSubRedditName(sub2))){
            return true;
        }
        return false;
    }
}
