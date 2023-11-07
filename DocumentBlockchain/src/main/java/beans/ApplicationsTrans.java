package beans;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import  services.*;

public class ApplicationsTrans {
private String docid,userid,user_userid,seckey,otp,uotp,title,docdesc,dt,tm,filePath;
private List<ApplicationsTrans> lst;
private int formId,appId;
Connection con;
CallableStatement csmt;
ResultSet rs;
 
public int getAppId() {
	return appId;
}

public void setAppId(int appId) {
	this.appId = appId;
}

public String getUser_userid() {
	return user_userid;
}

public void setUser_userid(String user_userid) {
	this.user_userid = user_userid;
}

public List<ApplicationsTrans> getLst() {
	return lst;
}

public void setLst(List<ApplicationsTrans> lst) {
	this.lst = lst;
}

public String getOtp() {
	return otp;
}

public int getFormId() {
	return formId;
}

public void setFormId(int formId) {
	this.formId = formId;
}

public void setOtp(String otp) {
	this.otp = otp;
}

public String getUotp() {
	return uotp;
}

public void setUotp(String uotp) {
	this.uotp = uotp;
}

public String getSeckey() {
	return seckey;
}

public void setSeckey(String seckey) {
	this.seckey = seckey;
}

public String getDocid() {
	return docid;
}

public void setDocid(String docid) {
	this.docid = docid;
}

public String getUserid() {
	return userid;
}

public void setUserid(String userid) {
	this.userid = userid;
}

public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public String getDocdesc() {
	return docdesc;
}

public void setDocdesc(String docdesc) {
	this.docdesc = docdesc;
}

public String getDt() {
	return dt;
}

public void setDt(String dt) {
	this.dt = dt;
}

public String getTm() {
	return tm;
}

public void setTm(String tm) {
	this.tm = tm;
}

public String getFilePath() {
	return filePath;
}

public void setFilePath(String filePath) {
	this.filePath = filePath;
}
public ApplicationsTrans()
{
	
}
public ApplicationsTrans(ResultSet rs)
{
	try
	{
		title=rs.getString("title").trim();
		seckey=rs.getString("skey").trim();
		System.out.println("tm="+formId);
		formId=rs.getInt("formId");
		appId=rs.getInt("appId");
   	 dt=rs.getString("dt").trim();
   	 System.out.println("dt="+dt);
   	 tm=rs.getString("tm").trim();
   	System.out.println("tm="+tm);
   	 docdesc=rs.getString("docdesc").trim();
   	System.out.println("docdesc="+docdesc);
   	userid=rs.getString("userid").trim();
	user_userid=rs.getString("user_userid").trim();
	   	System.out.println("userid="+userid);
   	 filePath=rs.getString("filePath").trim();
   	docid=rs.getString("docid").trim();
	}
	catch (Exception e) {
		// TODO: handle exception
		System.out.println("err="+e.getMessage());
	}
}  
}
