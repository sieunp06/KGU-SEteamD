package reservation;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import utill.DatabaseUtill;

public class ConfirmDAO {
    public static ConfirmDAO it;

    public static ConfirmDAO getInstance(){
        if(it==null)
            it = new ConfirmDAO();
        return it;
    }
    
    public ArrayList<ConfirmDAO> getRervation(){
        List<Map<String,Object>> listOfMaps = null;
        Connection conn = DatabaseUtill.getConnection();
        try {
            QueryRunner queryRunner = new QueryRunner();
            listOfMaps = queryRunner.query(conn, "SELECT * FROM `reservation`", new MapListHandler());
        }
        catch (SQLException se){
            se.printStackTrace();
        }
        finally {
            DbUtils.closeQuietly(conn);
        }
        Gson gson = new Gson();
        ArrayList<ConfirmDAO> selectedList = gson.fromJson(gson.toJson(listOfMaps), new TypeToken<List<ConfirmDAO>>(){
        }.getType());
        return selectedList;
    }
}

