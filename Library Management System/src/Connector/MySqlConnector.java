
package Connector;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class MySqlConnector {

    private static Connection c;

    public static void getConnection() {
        try 
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/llibrary?useTimezone=true&serverTimezone=UTC", "root", "root");
            
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }
      public static boolean GetUserDetails(String query) {
        try {
           getConnection();
                if (c != null) 
                {
                	  
                    PreparedStatement p = c.prepareStatement(query);
                    ResultSet rs = p.executeQuery();
                    
                       if(rs.next())
                       {
                           return true;
                       }
                       else
                       {
                          return false;
                       }
            }
        }
        catch (SQLException ex) 
            {
                ex.printStackTrace();
            } 
        
        return false;  
    }
    
    
    

    public static boolean executePreparedQuery(String query) {
        try {
            getConnection();
                if (c != null) 
                {
                    PreparedStatement p = c.prepareStatement(query);
                    
                    p.executeUpdate();
                    return true;
                }
            } 
        catch (SQLException ex) 
            {
                ex.printStackTrace();
            } 
        finally 
        {
            try 
            {
                c.close();
            } 
            catch (SQLException ex)
            {
                ex.printStackTrace();
            }
        }
        return false;
    }
    
    public static boolean DeleteItem(String query)
    {
        getConnection();
       
        if (c != null) 
        {
            
        executePreparedQuery(query);
        return true;
        }
        
        return false;
    }
    
    
    public static void main(String[] args) throws Exception {
        getConnection();
       
       
        if (c != null) 
        {
            String q = "select * from books_table";
            Statement stmt = c.createStatement();
            ResultSet rs = stmt.executeQuery(q);
            int count = 1;
            if(rs.next())
            {
            	count++;
            	System.out.println(rs.getString("book_name"));
            }
            
        }
    }
    public static ResultSet executeQueryAndGetResultset(String q) throws SQLException {
        getConnection();
        Statement stmt = c.createStatement();
        ResultSet rs = stmt.executeQuery(q);
        
        return rs;
    }
	
}
