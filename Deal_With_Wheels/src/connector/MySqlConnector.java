
package connector;


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
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/deal-with-wheels?useTimezone=true&serverTimezone=UTC", "root", "root");
            System.out.println("Connected");
        } 
        catch (Exception e) 
        {
            System.out.println(e.getMessage() );
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
    
    
    public static void main(String[] args) {
        getConnection();
       
       
        if (c != null) 
        {
            String q = "delete from user_table where first_name=\"Fagun\"";
            executePreparedQuery(q);
            System.out.println("Deleted");
        }
    }
    public static ResultSet executeQueryAndGetResultset(String q) throws SQLException {
        getConnection();
        Statement stmt = c.createStatement();
        return stmt.executeQuery(q);
    }
	
}
