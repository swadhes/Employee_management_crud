package net.tejas.bean;

public class UserBean {

    private int id;
    private String fName;
    private String lName;
    private String education;
    private String country;
    private String city;
        
    
    public String geteducation() {
		return education;
	}
	public void seteducation(String education) {
		this.education = education;
	}
	public String getcountry() {
		return country;
	}
	public void setcountry(String country) {
		this.country = country;
	}
	public String getcity() {
		return city;
	}
	public void setcity(String city) {
		this.city = city;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}	
}