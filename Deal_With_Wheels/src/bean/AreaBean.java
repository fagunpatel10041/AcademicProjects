package bean;

public class AreaBean {

    private int area_id;
    private int city_id;
    private String area_name;
    private String DOI;
    /**
     * @return the area_id
     */
    public int getArea_id() {
        return area_id;
    }

    /**
     * @param area_id the area_id to set
     */
    public void setArea_id(int area_id) {
        this.area_id = area_id;
    }

    /**
     * @return the city_id
     */
    public int getCity_id() {
        return city_id;
    }

    /**
     * @param city_id the city_id to set
     */
    public void setCity_id(int city_id) {
        this.city_id = city_id;
    }

    /**
     * @return the area_name
     */
    public String getArea_name() {
        return area_name;
    }

    /**
     * @param area_name the area_name to set
     */
    public void setArea_name(String area_name) {
        this.area_name = area_name;
    }

    /**
     * @return the DOI
     */
    public String getDOI() {
        return DOI;
    }

    /**
     * @param DOI the DOI to set
     */
    public void setDOI(String DOI) {
        this.DOI = DOI;
    }
   
}
