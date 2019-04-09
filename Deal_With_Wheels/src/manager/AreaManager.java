
package manager;

import bean.AreaBean;
import connector.MySqlConnector;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author fagun
 */
public class AreaManager {
    
    public static List<AreaBean> getAreaList(){
         List<AreaBean> list = new ArrayList<>();
        try {
            
            String q = "select * from user_area_table";
           
            //step3- step4
            ResultSet rs = MySqlConnector.executeQueryAndGetResultset(q);
            
            while (rs.next()) {  
                AreaBean b = new AreaBean();
           
                b.setArea_id(rs.getInt("area_id"));
                b.setArea_name(rs.getString("area_name"));
                b.setCity_id(rs.getInt("city_id"));
                b.setDOI(rs.getString("date_of_insertion"));
                list.add(b);
            }
            
        }catch(Exception e){
                e.printStackTrace();
                
        }
        return list;
    }
    
    public static boolean addArea(AreaBean bean)
    {    
    	String query = "INSERT INTO `deal-with-wheels`.`user_area_table` (`city_id`, `area_name`, `is_active`, `date_of_insertion`, `date_of_updation`) VALUES ('"+bean.getCity_id()+"', '"+bean.getArea_name() +"', '1', '2017-01-17', '2017-01-17');"; 
    	return MySqlConnector.executePreparedQuery(query);
    	
    
    }
    
}
