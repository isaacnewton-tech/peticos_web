package br.com.peticos;
import java.sql.*;

public class Database {
    public Connection connect_to_db(String dbName){
        Connection conn = null;
        try{
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection("jdbc:postgresql://pg-2f523e59-isaacmdias.k.aivencloud.com:15258/" + dbName + "?sslmode=require", "avnadmin", "AVNS_myCngWFF79cUuouvvAL");
            if (conn==null){
                System.out.println("Connection Failed!");
            }
        } catch (Exception e){
            System.out.println(e);
        }
        return conn;
    }

    public String[][] query(Connection conn, String query){
        String[][] result = new String[0][0];
        Statement statement;
        ResultSet rs;
        ResultSetMetaData rsmd;
        try{
            statement = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            rs = statement.executeQuery(query);
            rsmd = rs.getMetaData();

            int rowcount = 0;
            if (rs.last()) {
                rowcount = rs.getRow();
                rs.beforeFirst();
            }
            result = new String[rowcount][rsmd.getColumnCount()];
            for (int i = 0; i < rowcount; i++) {
                rs.next();
                for (int j = 1; j <= rsmd.getColumnCount(); j++) {
                    result[i][j-1] = rs.getString(j);
                }
            }

        } catch (Exception e){
            System.out.println(e);
        }

        return result;
    }
    public void cud(Connection conn, String query){
        Statement statement;
        ResultSet rs;
        ResultSetMetaData rsmd;
        try{
            statement = conn.createStatement();
            rs = statement.executeQuery(query);
        } catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
}
