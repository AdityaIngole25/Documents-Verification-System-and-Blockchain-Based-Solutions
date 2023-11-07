package models;
import java.sql.*;
import java.util.List;
import java.util.Vector;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.GetConnection;
 
public class CheckUser {

	private String userid;
	private String pswd;
		
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPswd() {
		return pswd;
	}
	public void setPswd(String pswd) {
		this.pswd = pswd;
	}
	
	public String checkUser(HttpServletRequest request) {
		
		Connection con;
		ResultSet rs;
		String typ,st="";
		GetConnection gc = new GetConnection();
		
		
		try {
			
			
			con=gc.getConnection();
			PreparedStatement pst;
			pst=con.prepareStatement("select * from users where userid=? and pswd=? and userstatus='active' ");
			pst.setString(1,userid );
			pst.setString(2, pswd);
				
			rs=pst.executeQuery();
			
			if(rs.next()) {
								
				JavaFuns jf=new JavaFuns();
				String qr="";
				typ=rs.getString("usertype");
				System.out.println("typ="+typ);
				if(typ.trim().equals("user"))
				{
					qr="select emailid,usernm from userdetails where userid='"+userid+"'";
				}
				else if(typ.trim().equals("officer"))
				{
					qr="select emailid,usernm from offices where userid='"+userid+"'";
					System.out.println("typ="+qr);
				}
				HttpSession sess=request.getSession(true);
				if(typ.trim().equals("user") && typ.trim().equals("officer"))
				{
				Vector v=jf.getValue(qr, 2);
				System.out.println("qr="+qr); 
				sess.setAttribute("email",v.elementAt(0).toString().trim());
			 	System.out.println("email="+v.elementAt(0).toString().trim());
				sess.setAttribute("username",v.elementAt(1).toString().trim());
				System.out.println("username="+v.elementAt(1).toString().trim());
				}
				sess.setAttribute("userid",userid);
				sess.setAttribute("usertype", rs.getString("usertype"));
				 
				
				sess.setAttribute("photo", getPhoto(userid, typ));
				System.out.println("type="+typ);
				//LoginTracker lt=new LoginTracker();
				//lt.recordLogin(userid, typ);
				if(typ.equals("officer"))
					st="officer";
				else if(typ.equals("user"))
				{
					 
					 
					st="user";
				}
				else if(typ.equals("admin"))
					st="admin";
				 
			}
			else
				st="LoginFailure.jsp";
		}
		
		catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return(st);	
	}
public String getPhoto(String userid,String utype) {
		String photo="common.png";
		Connection con;
		ResultSet rs;
		String typ,st="";
		GetConnection gc = new GetConnection();
		
		
		try {
			
			
			con=gc.getConnection();
			PreparedStatement pst;
			String qr="";
			if(utype.equals("user"))
			{
				qr="select photo from userdetails where userid='"+userid+"'";
			}
			else
				qr="select photo from offices where userid='"+userid+"'";

			pst=con.prepareStatement(qr);
			 
			rs=pst.executeQuery();
			
			if(rs.next()) { 
				photo=rs.getString("photo");
				 
			}
			 
		}
		
		catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return(photo);	
	}
}
