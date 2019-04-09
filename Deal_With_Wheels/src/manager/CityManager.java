package manager;

import bean.CityBean;
import connector.MySqlConnector;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class CityManager {

    public static HashMap<Integer, String> cityMap = new HashMap<Integer, String>();

    static {
        reloadMap();
    }
    public static void reloadMap(){
    List<CityBean> cityList = CityManager.getCityList();
            for (CityBean city : cityList) {

                cityMap.put(city.getCity_id(), city.getCity_name());

            }
    }
    public static List<CityBean> getCityList() {
        List<CityBean> list = new ArrayList<>();
        try {

            String q = "select * from user_city_table";

            //step3- step4
            ResultSet rs = MySqlConnector.executeQueryAndGetResultset(q);

            while (rs.next()) {
                CityBean b = new CityBean();

                b.setCity_id(rs.getInt("city_id"));
                b.setCity_name(rs.getString("city_name"));
                b.setIs_active(rs.getString("is_active"));
                b.setDOI(rs.getString("date_of_insertion"));
                list.add(b);
            }

        } catch (Exception e) {
            e.printStackTrace();

        }
        return list;
    }

    public static void addcity(CityBean city){
    
        reloadMap();
    }
}
