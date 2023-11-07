package beans;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
 
 

public class Applications {
private String docid,userid,seckey,otp,uotp,title,docdesc,dt,tm,filePath;
private int formId;
private List<Applications> lst;
Connection con;
CallableStatement csmt;
ResultSet rs;
 
public String getOtp() {
	return otp;
}

public int getFormId() {
	return formId;
}

public List<Applications> getLst() {
	return lst;
}

public void setLst(List<Applications> lst) {
	this.lst = lst;
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
public Applications()
{
	
}
public Applications(ResultSet rs)
{
	try
	{docid=rs.getString("docid").trim();
		title=rs.getString("title").trim();
		seckey=rs.getString("skey").trim();
		formId=rs.getInt("formId");
   	 dt=rs.getString("dt").trim();
   	 tm=rs.getString("tm").trim();
   	 docdesc=rs.getString("docdesc").trim();
   	 filePath=rs.getString("filePath").trim();
	}
	catch (Exception e) {
		// TODO: handle exception
	}
} 
}
