package models;

import java.sql.*;
import beans.*;

public class ApproveStudents {
	
	

	public  String updateStudentStatus(String userid) {
		

		Connection con;
		PreparedStatement pst;
		GetConnection gc = new GetConnection();
		String sts="";
		try {
			con=gc.getConnection();
			
			pst=con.prepareStatement("update users SET userstatus='active' where userid=?;");
			pst.setString(1, userid);
			
			int x=pst.executeUpdate();
			
			if(x>0) {
				
				pst=con.prepareStatement("update dealers SET userstatus='active' where userid=?");
				pst.setString(1, userid);
				
				x=pst.executeUpdate();
			}			
			else
				sts="failure";
			
			if(x>0)
				sts="success";
			else
				sts="failure";
			System.out.println("sts="+sts+" x="+x);
		}
		
		catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return(sts);
	}
	
}
