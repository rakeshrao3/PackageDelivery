package po.pojo;

public class signup {
String fname;
String lname;
String mobile;
String email;
String password;
String homeadd;
String officeadd;


public signup() {
	// TODO Auto-generated constructor stub
}


public signup(String fname, String lname, String mobile, String email,
		String password, String homeadd, String officeadd) {
	super();
	this.fname = fname;
	this.lname = lname;
	this.mobile = mobile;
	this.email = email;
	this.password = password;
	this.homeadd = homeadd;
	this.officeadd = officeadd;
}


public String getFname() {
	return fname;
}


public void setFname(String fname) {
	this.fname = fname;
}


public String getLname() {
	return lname;
}


public void setLname(String lname) {
	this.lname = lname;
}


public String getMobile() {
	return mobile;
}


public void setMobile(String mobile) {
	this.mobile = mobile;
}


public String getEmail() {
	return email;
}


public void setEmail(String email) {
	this.email = email;
}


public String getPassword() {
	return password;
}


public void setPassword(String password) {
	this.password = password;
}


public String getHomeadd() {
	return homeadd;
}


public void setHomeadd(String homeadd) {
	this.homeadd = homeadd;
}


public String getOfficeadd() {
	return officeadd;
}


public void setOfficeadd(String officeadd) {
	this.officeadd = officeadd;
}


@Override
public String toString() {
	return "signup [fname=" + fname + ", lname=" + lname + ", mobile=" + mobile
			+ ", email=" + email + ", password=" + password + ", homeadd="
			+ homeadd + ", officeadd=" + officeadd + "]";
}


}
