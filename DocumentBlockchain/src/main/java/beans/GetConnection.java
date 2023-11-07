package beans;

import java.sql.*;

public class GetConnection {

	private Connection dbconnection;
    public GetConnection()
    {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            dbconnection=DriverManager.getConnection("jdbc:mysql://localhost:3306/notarydb?user=root&password=root&useSSL=false&allowPublicKeyRetrieval=true");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    
    public Connection getConnection()
    {
        return(dbconnection);
    }
	
}
