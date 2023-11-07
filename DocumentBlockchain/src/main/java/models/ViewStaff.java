package models;

import java.sql.*;
import  beans.*;
import java.util.*;


public class ViewStaff {

	private String userid;
	private String usernm;
	private String mobileno;
	private String emailid;
	private String gender;
	private String dob;
	private String branch;
private String lastseen; 

	public String getLastseen() {
		return lastseen;
	}
	public void setLastseen(String lastseen) {
		this.lastseen = lastseen;
	}
	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getDob() {
		return dob;
	}


	public void setDob(String dob) {
		this.dob = dob;
	}


	public String getBranch() {
		return branch;
	}


	public void setBranch(String branch) {
		this.branch = branch;
	}


	public String getUserid() {
		return userid;
	}


	public String getMobileno() {
		return mobileno;
	}


	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}


	public String getEmailid() {
		return emailid;
	}


	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}


	public void setUserid(String userid) {
		this.userid = userid;
	}


	public String getUsernm() {
		return usernm;
	}


	public void setUsernm(String usernm) {
		this.usernm = usernm;
	}


	public List<ViewStaff> getStaff(){
		
		GetConnection gc = new GetConnection();
		Connection con;
		ResultSet rs;
		ViewStaff vs;
		List<ViewStaff> lst=new ArrayList<ViewStaff>();
		LoginTracker login=new LoginTracker();
		try {
			
			con=gc.getConnection();
			
			Statement st;
			st=con.createStatement();
			
			rs=st.executeQuery("select * from staffpersonal;");
			
			while(rs.next()) {
				
				vs= new ViewStaff();
				vs.setUserid(rs.getString("userid"));
				vs.setUsernm(rs.getString("usernm"));
				vs.setEmailid(rs.getString("emailid"));
				vs.setMobileno(rs.getString("mobileno"));
				vs.setGender(rs.getString("gender"));
				vs.setBranch(rs.getString("branch"));
				vs.setDob(rs.getString("dob"));
				vs.setLastseen(login.getLastSeen(rs.getString("userid").toString().trim()));
				lst.add(vs);
			}
			
		}
		
		catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return(lst);
	}
}
