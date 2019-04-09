
package manager;
import bean.SecurityQuestionBean;
import connector.MySqlConnector;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SecurityQuestionManager {
    
     public static List<SecurityQuestionBean> getSecurityQuestionList(){
         List<SecurityQuestionBean> list = new ArrayList<>();
        try {
            
            String q = "select * from user_sequerity_table";
           
            //step3- step4
            ResultSet rs = MySqlConnector.executeQueryAndGetResultset(q);
            
            while (rs.next()) {  
                SecurityQuestionBean s = new SecurityQuestionBean();
           
                s.setSecurity_question_ans(rs.getString("security_question_name"));
                s.setSecurity_question_id(rs.getInt("security_question_id"));
                list.add(s);
            }
            
        }catch(Exception e){
                e.printStackTrace();
                
        }
        return list;
    }
    
}
