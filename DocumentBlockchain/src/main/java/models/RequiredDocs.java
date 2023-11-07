package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import org.springframework.web.multipart.MultipartFile;

import beans.GetConnection;

public class RequiredDocs  {
	private String title,docName;  
	private int formId,docId;
	 

public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDocName() {
		return docName;
	}

	public void setDocName(String docName) {
		this.docName = docName;
	}

	public int getFormId() {
		return formId;
	}

	public void setFormId(int formId) {
		this.formId = formId;
	}

	public int getDocId() {
		return docId;
	}

	public void setDocId(int docId) {
		this.docId = docId;
	}

public List<RequiredDocs> getRequiredDocs( ){
		
		GetConnection gc = new GetConnection();
		Connection con;
		List<RequiredDocs> lst = new ArrayList<RequiredDocs>();
		 
		ResultSet rs;
		
		try {
		
		con= gc.getConnection();
		Statement st=con.createStatement();
		rs=st.executeQuery("select * from requiredDocs ");
		RequiredDocs vs;
		 
		while(rs.next()) {
			
			vs= new RequiredDocs();
			vs.setFormId(rs.getInt("formId"));
			vs.setDocId(rs.getInt("docId"));
			vs.setTitle(rs.getString("title"));
			vs.setDocName(rs.getString("docName"));
			 
			lst.add(vs);
		}
		
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		return(lst);
	}
	 
	public String addReqDocs()
	{
		GetConnection gc = new GetConnection();
		int y=0;
		
		Connection con;
		String st="";
		try {
		con=gc.getConnection();
		PreparedStatement pst;
		
		pst=con.prepareStatement("insert into requiredDocs values(?,?,?,?);");
		pst.setInt(1,docId);
		pst.setString(2,docName);		 
		pst.setInt(3,formId);
		pst.setString(4,title);
		 
		 
		int x=pst.executeUpdate();
		
		if(x>0) {
			
			st="success";
		}
		else
			st="failure"; 
			
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		return st;
		
		
	} 
	public String SubmitDocs(int appId,String userid)
	{
		GetConnection gc = new GetConnection();
		int y=0;
		
		Connection con;
		String st="";
		try {
		con=gc.getConnection();
		PreparedStatement pst;
		int subId=0;
		JavaFuns jf=new JavaFuns();
		Vector v=jf.getValue("select ifnull(max(subId),1000)+1 from submitteddocs" , 1);
		subId=Integer.parseInt(v.elementAt(0).toString().trim());
		pst=con.prepareStatement("insert into submittedDocs values(?,?,?,?,?);");
		pst.setInt(1,subId);
		pst.setInt(2,docId);		 
		pst.setInt(3,appId);
		pst.setInt(4,formId);
		pst.setString(5,userid); 
		int x=pst.executeUpdate();
		
		if(x>0) {
			
			st="success";
		}
		else
			st="failure"; 
			
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		return st;
		
		
	} 
}
