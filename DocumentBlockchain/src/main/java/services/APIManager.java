package services;

import java.util.List;
import java.util.Vector;

import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

 
 
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;

import beans.Applications;
import beans.ApplicationsTrans;
import beans.Documents;
import beans.Param;
import models.JavaFuns;
 

public class APIManager {
	 
	public Documents callGetDocsAPI( Param input) {

		Documents output=new Documents();
		try {

			Client client = Client.create();
			System.out.println("in api");
		  

			RestTemplate restTemplate=new RestTemplate();
			output= restTemplate.postForObject(
					  "http://localhost:8081/getDocuments/",
					  input,
					  Documents.class);
		 	//if (response.getStatus() != 201) {
			//	throw new RuntimeException("Failed : HTTP error code : "
			//	     + response.getStatus());
			//}

			System.out.println("Output from Server .... \n");
			 // output = response.getEntity(String.class);
			System.out.println(output.getLst());
		 

		  } catch (Exception e) {
			  System.out.println("err="+e.getMessage());
			e.printStackTrace();

		  }
		return output;

		}
	public Documents getUserDocsAPI( Param input) {

		Documents output=new Documents();
		try {

			Client client = Client.create();
			System.out.println("in api");
			JavaFuns jf=new JavaFuns();
			   Vector v1=jf.getValue("select docid from submittedDocs where userid='"+input.getUserid().trim()+"' and appId="+input.getAppId().trim() , 1);
			  String docid="";
			  if(docid.trim().equals("")){
				  docid= v1.elementAt(0).toString().trim() ;
			  }
			  else
				  docid+=","+v1.elementAt(0).toString().trim();
				
			input.setUserid(docid);  
			RestTemplate restTemplate=new RestTemplate();
			output= restTemplate.postForObject(
					  "http://localhost:8081/getUserDocuments/",
					  input,
					  Documents.class);
		 	//if (response.getStatus() != 201) {
			//	throw new RuntimeException("Failed : HTTP error code : "
			//	     + response.getStatus());
			//}

			System.out.println("Output from Server .... \n");
			 // output = response.getEntity(String.class);
			System.out.println(output.getLst());
		 

		  } catch (Exception e) {
			  System.out.println("err="+e.getMessage());
			e.printStackTrace();

		  }
		return output;

		}
	public Applications getApps( Param input) {

		Applications output=new Applications();
		try {

			Client client = Client.create();
			System.out.println("in api");
		  

			RestTemplate restTemplate=new RestTemplate();
			output= restTemplate.postForObject(
					  "http://localhost:8082/getPendingApps/",
					  input,
					  Applications.class);
		 	//if (response.getStatus() != 201) {
			//	throw new RuntimeException("Failed : HTTP error code : "
			//	     + response.getStatus());
			//}

			System.out.println("Output from Server .... \n");
			 // output = response.getEntity(String.class);
			System.out.println(output.getLst());
		 

		  } catch (Exception e) {
			  System.out.println("err="+e.getMessage());
			e.printStackTrace();

		  }
		return output;

		}
	public Applications getCityPendingApps( Param input) {

			Applications output=new Applications();
			try {

				Client client = Client.create();
				System.out.println("in api");
			  
				 JavaFuns jf=new JavaFuns();
				  Vector v=jf.getValue("select city from offices where userid='"+input.getUserid().trim()+"'" , 1);
				  Vector v1=jf.getValue("select userid from userdetails where city='"+v.elementAt(0).toString().trim()+"'" , 1);
				  String uid="";
				  for(int i=0;i<v1.size();i++)
				  {
				  if(uid.trim().equals("")){
					  uid="'"+v1.elementAt(i).toString().trim()+"'";
				  }
				  else
					  uid+=",'"+v1.elementAt(i).toString().trim()+"'";
			
				  }
					input.setUserid(uid);		  	
				RestTemplate restTemplate=new RestTemplate();
				output= restTemplate.postForObject(
						  "http://localhost:8082/getCityPendingApps/",
						  input,
						  Applications.class);
			 	//if (response.getStatus() != 201) {
				//	throw new RuntimeException("Failed : HTTP error code : "
				//	     + response.getStatus());
				//}

				System.out.println("Output from Server .... \n");
				 // output = response.getEntity(String.class);
				System.out.println(output.getLst().size());
			 

			  } catch (Exception e) {
				  System.out.println("err="+e.getMessage());
				e.printStackTrace();

			  }
			return output;

			}
	public Applications getPendingApps( Param input) {

		Applications output=new Applications();
		try {

			Client client = Client.create();
			System.out.println("in api");
		  

			RestTemplate restTemplate=new RestTemplate();
			output= restTemplate.postForObject(
					  "http://localhost:8082/getPendingApps/",
					  input,
					  Applications.class);
		 	//if (response.getStatus() != 201) {
			//	throw new RuntimeException("Failed : HTTP error code : "
			//	     + response.getStatus());
			//}

			System.out.println("Output from Server .... \n");
			 // output = response.getEntity(String.class);
			System.out.println(output.getLst().size());
		 

		  } catch (Exception e) {
			  System.out.println("err="+e.getMessage());
			e.printStackTrace();

		  }
		return output;

		}
	public Applications getSubmittedApps( Param input) {

		Applications output=new Applications();
		try {

			Client client = Client.create();
			System.out.println("in api");
		  

			RestTemplate restTemplate=new RestTemplate();
			output= restTemplate.postForObject(
					  "http://localhost:8082/getSubmittedApps/",
					  input,
					  Applications.class);
		 	//if (response.getStatus() != 201) {
			//	throw new RuntimeException("Failed : HTTP error code : "
			//	     + response.getStatus());
			//}

			System.out.println("Output from Server .... \n");
			 // output = response.getEntity(String.class);
			System.out.println(output.getLst());
		 

		  } catch (Exception e) {
			  System.out.println("err="+e.getMessage());
			e.printStackTrace();

		  }
		return output;

		}
		public ApplicationsTrans getApprovedApps( Param input) {

			ApplicationsTrans output=new ApplicationsTrans();
			try {

				Client client = Client.create();
				System.out.println("in api");
			  

				RestTemplate restTemplate=new RestTemplate();
				output= restTemplate.postForObject(
						  "http://localhost:8082/getApprovedApps/",
						  input,
						  ApplicationsTrans.class);
			 	//if (response.getStatus() != 201) {
				//	throw new RuntimeException("Failed : HTTP error code : "
				//	     + response.getStatus());
				//}

				System.out.println("Output from Server .... \n");
				 // output = response.getEntity(String.class);
				System.out.println(output.getLst());
			 

			  } catch (Exception e) {
				  System.out.println("err="+e.getMessage());
				e.printStackTrace();

			  }
			return output;

			}
		public Applications updateApp( Param input) {

			Applications output=new Applications();
			try {

				Client client = Client.create();
				System.out.println("in api");
			  

				RestTemplate restTemplate=new RestTemplate();
				output= restTemplate.postForObject(
						  "http://localhost:8082/updateApp/",
						  input,
						  Applications.class);
			 	//if (response.getStatus() != 201) {
				//	throw new RuntimeException("Failed : HTTP error code : "
				//	     + response.getStatus());
				//}

				System.out.println("Output from Server .... \n");
				 // output = response.getEntity(String.class);
				System.out.println(output.getLst());
			 

			  } catch (Exception e) {
				  System.out.println("err="+e.getMessage());
				e.printStackTrace();

			  }
			return output;

			}
}
