package database;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class DataBase {
    private static DataBase instance = null;
    private Map<String, Table> tables;

    private DataBase() throws IOException {

        tables = new HashMap<String, Table>();
        tables.put("signUp", new Table("C:\\Sina Files\\Beheshti\\Term2\\AP\\src\\Data\\allUsersData.txt"));
    }

    public static DataBase getInstance() throws IOException {
        if (instance == null){
            instance = new DataBase();
        }
        return instance;
    }

    public Table getTable(String tableName){
        return tables.get(tableName);
    }

}
