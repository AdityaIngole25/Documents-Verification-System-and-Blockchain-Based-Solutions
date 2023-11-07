package services;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import  services.*;

public class Applications {
private String docid,userid,seckey,otp,uotp,title,docdesc,dt,tm,filePath;
private List<Applications> lst;
private int formId;
Connection con;
CallableStatement csmt;
ResultSet rs;
 
public List<Applications> getLst() {
	return lst;
}

public void setLst(List<Applications> lst) {
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
public Applications()
{
	
}
public Applications(ResultSet rs)
{
	try
	{docid=rs.getString("docid").trim();
		title=rs.getString("title").trim();
		seckey=rs.getString("skey").trim();
		System.out.println("tm="+formId);
		formId=rs.getInt("formId");
   	 dt=rs.getString("dt").trim();
   	 System.out.println("dt="+dt);
   	 tm=rs.getString("tm").trim();
   	System.out.println("tm="+tm);
   	 docdesc=rs.getString("docdesc").trim();
   	System.out.println("docdesc="+docdesc);
   	userid=rs.getString("userid").trim();
	   	System.out.println("userid="+userid);
   	 filePath=rs.getString("filePath").trim();
	}
	catch (Exception e) {
		// TODO: handle exception
		System.out.println("err="+e.getMessage());
	}
}
public void getApplications(String userid)
{
	boolean flag=false;
	  lst=new ArrayList<Applications>();
    try
    {
         DBConnector obj=new  DBConnector();
         
        con=obj.connect();
        csmt=con.prepareCall("{call getApplications1(?)}");
         
        csmt.setString(1, userid);
        
         csmt.execute();
         rs=csmt.getResultSet();
                     
        while(rs.next())
        {  
        	lst.add(new Applications(rs));
        }
    }
       
     
    catch(Exception ex)
    {
        System.out.println("err in api="+ex.getMessage());
         
    }
     
}
public void getApplicationsPending(String userid)
{
	boolean flag=false;
	  lst=new ArrayList<Applications>();
    try
    {
         DBConnector obj=new  DBConnector();
         
        con=obj.connect();
        csmt=con.prepareCall("{call getApplicationsPending(?)}");
         
        csmt.setString(1, userid);
        
         csmt.execute();
         rs=csmt.getResultSet();
                     
        while(rs.next())
        {  
        	lst.add(new Applications(rs));
        }
    }
       
     
    catch(Exception ex)
    {
        System.out.println("err in api="+ex.getMessage());
         
    }
     
}
public void getApplicationsSubmitted(String userid)
{
	boolean flag=false;
  lst=new ArrayList<Applications>();
    try
    {
         DBConnector obj=new  DBConnector();
         
        con=obj.connect();
        csmt=con.prepareCall("{call getApplicationsSubmitted(?)}");
         
        csmt.setString(1, userid);
        
         csmt.execute();
         rs=csmt.getResultSet();
                     
        while(rs.next())
        {  
        	lst.add(new Applications(rs));
        }
    }
       
     
    catch(Exception ex)
    {
        System.out.println("err in api="+ex.getMessage());
         
    }
     
}
public void getApplicationsApproved(String userid)
{
	boolean flag=false;
	 lst=new ArrayList<Applications>();
    try
    {
         DBConnector obj=new  DBConnector();
         
        con=obj.connect();
        csmt=con.prepareCall("{call getApplicationsApproved(?)}");
         
        csmt.setString(1, userid);
        
         csmt.execute();
         rs=csmt.getResultSet();
                     
        while(rs.next())
        {  
        	lst.add(new Applications(rs));
        }
    }
       
     
    catch(Exception ex)
    {
        System.out.println("err in api="+ex.getMessage());
         
    }
    
}
public void getApplicationsCityPending(String userid)
{
	boolean flag=false;
  lst=new ArrayList<Applications>();
    try
    {
         DBConnector obj=new  DBConnector();
         
        con=obj.connect();
        Statement st=con.createStatement();
        System.out.println("qr="+"select * from getApplications where  sts='submitted' and userid in("+userid+")");
		rs=st.executeQuery("select * from getApplications where  sts='submitted' and userid in("+userid+")");
         
          
                     
        while(rs.next())
        {  
        	lst.add(new Applications(rs));
        }
    }
       
     
    catch(Exception ex)
    {
        System.out.println("err in api="+ex.getMessage());
         
    }
     
}
}
