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

public class ApplicationForms {
	private String title,formPath; 
	private MultipartFile file;
	private int formId;
	  
public String getFormPath() {
		return formPath;
	}

	public void setFormPath(String formPath) {
		this.formPath = formPath;
	}

public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public int getFormId() {
		return formId;
	}

	public void setFormId(int formId) {
		this.formId = formId;
	}

public List<ApplicationForms> getApplicationForms( ){
		
		GetConnection gc = new GetConnection();
		Connection con;
		List<ApplicationForms> lst = new ArrayList<ApplicationForms>();
		 
		ResultSet rs;
		
		try {
		
		con= gc.getConnection();
		Statement st=con.createStatement();
		rs=st.executeQuery("select * from application_forms ");
		ApplicationForms vs;
		 
		while(rs.next()) {
			
			vs= new ApplicationForms();
			vs.setFormId(rs.getInt("formId"));
			vs.setTitle(rs.getString("title"));
			vs.setFormPath(rs.getString("formPath"));
			 
			lst.add(vs);
		}
		
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		return(lst);
	}
	 
	public String addForm()
	{
		GetConnection gc = new GetConnection();
		int y=0;
		
		Connection con;
		String st="";
		try {
		con=gc.getConnection();
		PreparedStatement pst;
		
		pst=con.prepareStatement("insert into application_forms values(?,?,? );");

		pst.setInt(1,formId);
		pst.setString(2,title);
		pst.setString(3,formPath);
		 
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
