package update_user;

import bean.UserBean;
import connector.MySqlConnector;

public class UpdateManager {

	public static boolean Update_User(UserBean bean) {
		 String query= "UPDATE `deal-with-wheels`.`user_table` SET `first_name`='"+bean.getFname()+"', `last_name`='"+bean.getLname()+"', `email`='"+bean.getEmail()+"', `password`='"+bean.getPassword()+"', `phone`='"+bean.getPhone()+"', `gender`='"+bean.getGender()+"', `dob`='"+bean.getDob()+"', `address_line1`='"+bean.getAdd1()+"', `address_line2`='"+bean.getAdd2()+"', `city_id`='"+bean.getCityid()+"', `area_id`='"+bean.getAreaid()+"',  `profile_pic`='"+bean.getProfile_pic()+"', `user_is_active`='"+bean.getIs_Active()+"', `date_of_insertion`='"+bean.getDate_of_insertion()+"', `date_of_updation`='"+bean.getDate_of_update()+"', `security_question_id`='"+bean.getSecurity_question_id()+"', `security_question_ans`='"+bean.getSecurity_question_answer()+"' WHERE `email`='"+bean.getEmail()+"'";
          return  MySqlConnector.executePreparedQuery(query);
	        
	}

}
