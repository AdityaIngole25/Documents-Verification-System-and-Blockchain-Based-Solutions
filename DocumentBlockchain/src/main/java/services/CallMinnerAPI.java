package services;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Vector;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonParser;
 
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;

import beans.Applications;
import beans.Base64Encoder;
import beans.Documents;
import models.JavaFuns;
 

public class CallMinnerAPI {

	
	public List<Documents> getUserDocs(String appid,String uid) {

		  String output="na";
		  List<Documents> list=new ArrayList<Documents>() ;
		try {
			 JavaFuns jf=new JavaFuns();
			   Vector v1=jf.getValue("select docid from submittedDocs where userid='"+uid+"' and appId="+appid , 1);
			  String docid="";
			  if(docid.trim().equals("")){
				  docid= v1.elementAt(0).toString().trim() ;
			  }
			  else
				  docid+=","+v1.elementAt(0).toString().trim();
				
			Client client = Client.create();
			Base64Encoder encoder=new Base64Encoder();
			 String param1=encoder.encode(docid.getBytes());
			WebResource webResource = client
			   .resource("http://localhost:8081/DocumentRestAPI/rest/getUserDocs/get/"+param1);

			ClientResponse response = webResource.accept("application/json")
	                   .get(ClientResponse.class);

			if (response.getStatus() != 200) {
			   throw new RuntimeException("Failed : HTTP error code : "
				+ response.getStatus());
			}

			   output = response.getEntity(String.class);

	//Gson gson = new Gson();
	//JsonParser parser = new JsonParser();
	//com.google.gson.JsonObject object = (com.google.gson.JsonObject) parser.parse(output);// response will be the json String
	//MsgDetails obj = gson.fromJson(object, List<MsgDetails>.class);  
	 list = Arrays.asList(new GsonBuilder().create().fromJson(output, Documents[].class));
	/* for(int i=0;i<list.size();i++)
	 {
		 Documents emp=new Documents();
		 System.out.println("uid="+list.get(i).getUserid());
		 
		 list.get(i).setUsername(emp.get(list.get(i).getUserid()));
		 
	 }*/

			System.out.println(output);

		  } catch (Exception e) {

			e.printStackTrace();

		  }
		return list;

		}
  public List<Documents> getDocs(String uid) {

	  String output="na";
	  List<Documents> list=new ArrayList<Documents>() ;
	try {

		Client client = Client.create();
		Base64Encoder encoder=new Base64Encoder();
		 String param1=encoder.encode(uid.getBytes());
		WebResource webResource = client
		   .resource("http://localhost:8081/DocumentRestAPI/rest/getDocs/get/"+param1);

		ClientResponse response = webResource.accept("application/json")
                   .get(ClientResponse.class);

		if (response.getStatus() != 200) {
		   throw new RuntimeException("Failed : HTTP error code : "
			+ response.getStatus());
		}

		   output = response.getEntity(String.class);

//Gson gson = new Gson();
//JsonParser parser = new JsonParser();
//com.google.gson.JsonObject object = (com.google.gson.JsonObject) parser.parse(output);// response will be the json String
//MsgDetails obj = gson.fromJson(object, List<MsgDetails>.class);  
 list = Arrays.asList(new GsonBuilder().create().fromJson(output, Documents[].class));
/* for(int i=0;i<list.size();i++)
 {
	 Documents emp=new Documents();
	 System.out.println("uid="+list.get(i).getUserid());
	 
	 list.get(i).setUsername(emp.get(list.get(i).getUserid()));
	 
 }*/

		System.out.println(output);

	  } catch (Exception e) {

		e.printStackTrace();

	  }
	return list;

	}
  public List<Applications> getApps(String uid) {

	  String output="na";
	  List<Applications> list=new ArrayList<Applications>() ;
	try {

		Client client = Client.create();
		Base64Encoder encoder=new Base64Encoder();
		 String param1=encoder.encode(uid.getBytes());
		WebResource webResource = client
		   .resource("http://localhost:8081/DocumentAPIBC1/rest/getPendingApps/get/"+param1);

		ClientResponse response = webResource.accept("application/json")
                   .get(ClientResponse.class);

		if (response.getStatus() != 200) {
		   throw new RuntimeException("Failed : HTTP error code : "
			+ response.getStatus());
		}

		   output = response.getEntity(String.class);

//Gson gson = new Gson();
//JsonParser parser = new JsonParser();
//com.google.gson.JsonObject object = (com.google.gson.JsonObject) parser.parse(output);// response will be the json String
//MsgDetails obj = gson.fromJson(object, List<MsgDetails>.class);  
 list = Arrays.asList(new GsonBuilder().create().fromJson(output, Applications[].class));
/* for(int i=0;i<list.size();i++)
 {
	 Documents emp=new Documents();
	 System.out.println("uid="+list.get(i).getUserid());
	 
	 list.get(i).setUsername(emp.get(list.get(i).getUserid()));
	 
 }*/

		System.out.println(output);

	  } catch (Exception e) {

		e.printStackTrace();

	  }
	return list;

	}
  public List<Applications> getPendingApps(String uid) {

	  String output="na";
	  List<Applications> list=new ArrayList<Applications>() ;
	try {

		Client client = Client.create();
		Base64Encoder encoder=new Base64Encoder();
		 String param1=encoder.encode((uid).getBytes());
		WebResource webResource = client
		   .resource("http://localhost:8081/DocumentAPIBC1/rest/getPendingApps/get/"+param1);

		ClientResponse response = webResource.accept("application/json")
                   .get(ClientResponse.class);

		if (response.getStatus() != 200) {
		   throw new RuntimeException("Failed : HTTP error code : "
			+ response.getStatus());
		}

		   output = response.getEntity(String.class);

//Gson gson = new Gson();
//JsonParser parser = new JsonParser();
//com.google.gson.JsonObject object = (com.google.gson.JsonObject) parser.parse(output);// response will be the json String
//MsgDetails obj = gson.fromJson(object, List<MsgDetails>.class);  
 list = Arrays.asList(new GsonBuilder().create().fromJson(output, Applications[].class));
/* for(int i=0;i<list.size();i++)
 {
	 Documents emp=new Documents();
	 System.out.println("uid="+list.get(i).getUserid());
	 
	 list.get(i).setUsername(emp.get(list.get(i).getUserid()));
	 
 }*/

		System.out.println(output);

	  } catch (Exception e) {

		e.printStackTrace();

	  }
	return list;

	}
  public List<Applications> getSubmittedApps(String uid) {

	  String output="na";
	  List<Applications> list=new ArrayList<Applications>() ;
	try {

		Client client = Client.create();
		Base64Encoder encoder=new Base64Encoder();
		 String param1=encoder.encode((uid).getBytes());
		WebResource webResource = client
		   .resource("http://localhost:8081/DocumentAPIBC1/rest/getSubmittedApps/get/"+param1);

		ClientResponse response = webResource.accept("application/json")
                   .get(ClientResponse.class);

		if (response.getStatus() != 200) {
		   throw new RuntimeException("Failed : HTTP error code : "
			+ response.getStatus());
		}

		   output = response.getEntity(String.class);

//Gson gson = new Gson();
//JsonParser parser = new JsonParser();
//com.google.gson.JsonObject object = (com.google.gson.JsonObject) parser.parse(output);// response will be the json String
//MsgDetails obj = gson.fromJson(object, List<MsgDetails>.class);  
 list = Arrays.asList(new GsonBuilder().create().fromJson(output, Applications[].class));
/* for(int i=0;i<list.size();i++)
 {
	 Documents emp=new Documents();
	 System.out.println("uid="+list.get(i).getUserid());
	 
	 list.get(i).setUsername(emp.get(list.get(i).getUserid()));
	 
 }*/

		System.out.println(output);

	  } catch (Exception e) {

		e.printStackTrace();

	  }
	return list;

	}
  public List<Applications> getApprovedApps(String uid) {

	  String output="na";
	  List<Applications> list=new ArrayList<Applications>() ;
	try {

		Client client = Client.create();
		Base64Encoder encoder=new Base64Encoder();
		 String param1=encoder.encode((uid).getBytes());
		WebResource webResource = client
		   .resource("http://localhost:8081/DocumentAPIBC1/rest/getApprovedApps/get/"+param1);

		ClientResponse response = webResource.accept("application/json")
                   .get(ClientResponse.class);

		if (response.getStatus() != 200) {
		   throw new RuntimeException("Failed : HTTP error code : "
			+ response.getStatus());
		}

		   output = response.getEntity(String.class);

//Gson gson = new Gson();
//JsonParser parser = new JsonParser();
//com.google.gson.JsonObject object = (com.google.gson.JsonObject) parser.parse(output);// response will be the json String
//MsgDetails obj = gson.fromJson(object, List<MsgDetails>.class);  
 list = Arrays.asList(new GsonBuilder().create().fromJson(output, Applications[].class));
/* for(int i=0;i<list.size();i++)
 {
	 Documents emp=new Documents();
	 System.out.println("uid="+list.get(i).getUserid());
	 
	 list.get(i).setUsername(emp.get(list.get(i).getUserid()));
	 
 }*/

		System.out.println(output);

	  } catch (Exception e) {

		e.printStackTrace();

	  }
	return list;

	}
  public List<Applications> getCityPendingApps(String uid) {

	  String output="na";
	  JavaFuns jf=new JavaFuns();
	  Vector v=jf.getValue("select city from offices where userid='"+uid.trim()+"'" , 1);
	  Vector v1=jf.getValue("select userid from userdetails where city='"+v.elementAt(0).toString().trim()+"'" , 1);
	  uid="";
	  if(uid.trim().equals("")){
		  uid="'"+v1.elementAt(0).toString().trim()+"'";
	  }
	  else
		  uid+=",'"+v1.elementAt(0).toString().trim()+"'";
			  
	  List<Applications> list=new ArrayList<Applications>() ;
	try {

		Client client = Client.create();
		Base64Encoder encoder=new Base64Encoder();
		 String param1=encoder.encode((uid).getBytes());
		WebResource webResource = client
		   .resource("http://localhost:8081/DocumentAPIBC1/rest/getCityPendingApps/get/"+param1);

		ClientResponse response = webResource.accept("application/json")
                   .get(ClientResponse.class);

		if (response.getStatus() != 200) {
		   throw new RuntimeException("Failed : HTTP error code : "
			+ response.getStatus());
		}

		   output = response.getEntity(String.class);

//Gson gson = new Gson();
//JsonParser parser = new JsonParser();
//com.google.gson.JsonObject object = (com.google.gson.JsonObject) parser.parse(output);// response will be the json String
//MsgDetails obj = gson.fromJson(object, List<MsgDetails>.class);  
 list = Arrays.asList(new GsonBuilder().create().fromJson(output, Applications[].class));
/* for(int i=0;i<list.size();i++)
 {
	 Documents emp=new Documents();
	 System.out.println("uid="+list.get(i).getUserid());
	 
	 list.get(i).setUsername(emp.get(list.get(i).getUserid()));
	 
 }*/

		System.out.println(output);

	  } catch (Exception e) {

		e.printStackTrace();

	  }
	return list;

	}
  public String updateApp(String appId,String sts) {

	  String output="na";
	  
	  try {

		Client client = Client.create();
		Base64Encoder encoder=new Base64Encoder();
		 String param1=encoder.encode((appId+"|"+sts).getBytes());
		System.out.println("param1="+param1);
		 WebResource webResource = client
		   .resource("http://localhost:8081/DocumentAPIBC1/rest/updateApp/get/"+param1);

		ClientResponse response = webResource.accept("application/json")
                   .get(ClientResponse.class);

		if (response.getStatus() != 200) {
		   throw new RuntimeException("Failed : HTTP error code : "
			+ response.getStatus());
		}

		   output = response.getEntity(String.class);

//Gson gson = new Gson();
//JsonParser parser = new JsonParser();
//com.google.gson.JsonObject object = (com.google.gson.JsonObject) parser.parse(output);// response will be the json String
//MsgDetails obj = gson.fromJson(object, List<MsgDetails>.class);  
 //list = Arrays.asList(new GsonBuilder().create().fromJson(output, Applications[].class));
/* for(int i=0;i<list.size();i++)
 {
	 Documents emp=new Documents();
	 System.out.println("uid="+list.get(i).getUserid());
	 
	 list.get(i).setUsername(emp.get(list.get(i).getUserid()));
	 
 }*/

		System.out.println(output);

	  } catch (Exception e) {

		e.printStackTrace();

	  }
	return output;

	}
}