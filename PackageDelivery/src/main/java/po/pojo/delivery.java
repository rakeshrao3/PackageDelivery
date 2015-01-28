package po.pojo;

public class delivery {
	String cname;
	String weight;
	String wieghtselect;
	String date;
	String mobile;
	String time;
	String timeselect;
	String address;
	
	public delivery() {
		// TODO Auto-generated constructor stub
	}

	
	public delivery(String cname, String weight, String wieghtselect,
			String date, String mobile, String time, String timeselect,
			String address) {
		super();
		this.cname = cname;
		this.weight = weight;
		this.wieghtselect = wieghtselect;
		this.date = date;
		this.mobile = mobile;
		this.time = time;
		this.timeselect = timeselect;
		this.address = address;
	}


	public String getCname() {
		return cname;
	}


	public void setCname(String cname) {
		this.cname = cname;
	}


	public String getWeight() {
		return weight;
	}


	public void setWeight(String weight) {
		this.weight = weight;
	}


	public String getWieghtselect() {
		return wieghtselect;
	}


	public void setWieghtselect(String wieghtselect) {
		this.wieghtselect = wieghtselect;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public String getMobile() {
		return mobile;
	}


	public void setMobile(String mobile) {
		this.mobile = mobile;
	}


	public String getTime() {
		return time;
	}


	public void setTime(String time) {
		this.time = time;
	}


	public String getTimeselect() {
		return timeselect;
	}


	public void setTimeselect(String timeselect) {
		this.timeselect = timeselect;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	@Override
	public String toString() {
		return "delivery [cname=" + cname + ", weight=" + weight
				+ ", wieghtselect=" + wieghtselect + ", date=" + date
				+ ", mobile=" + mobile + ", time=" + time + ", timeselect="
				+ timeselect + ", address=" + address + "]";
	}

	
	
}
