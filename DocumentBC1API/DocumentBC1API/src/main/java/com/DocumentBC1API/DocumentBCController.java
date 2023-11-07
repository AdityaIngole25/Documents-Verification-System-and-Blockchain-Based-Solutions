package com.DocumentBC1API;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
 
import services.Applications;
import services.ApplicationsTrans;
import services.Documents;
import services.JavaFuns;
import services.Param;

@RestController
public class DocumentBCController {
	@RequestMapping(value = "/getCityPendingApps", method = RequestMethod.POST )
	public ResponseEntity getCityPendingApps(@RequestBody Param response) {
		//List<CacheGroups> response = new ArrayList<CacheGroups>();
		System.out.println("in api cache "+response.getUserid());
		System.out.println("in api cache "+response.getUserid());
		services.Applications obj=new Applications();
		try {
			obj.getApplicationsCityPending(response.getUserid());
		  
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("err in usergroupapi="+e.getMessage());
			obj.setUserid(e.getMessage());
		}
		return ResponseEntity.ok(obj);
		 
	//	return Response.status(201).entity(result).build();
	}
	@RequestMapping(value = "/getPendingApps", method = RequestMethod.POST )
	public ResponseEntity getPendingApps(@RequestBody Param response) {
		//List<CacheGroups> response = new ArrayList<CacheGroups>();
		System.out.println("in api cache "+response.getUserid());
		System.out.println("in api cache "+response.getUserid());
		services.Applications obj=new Applications();
		try {
			obj.getApplicationsPending(response.getUserid());
		  
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("err in usergroupapi="+e.getMessage());
			obj.setUserid(e.getMessage());
		}
		return ResponseEntity.ok(obj);
		 
	//	return Response.status(201).entity(result).build();
	}
	@RequestMapping(value = "/updateApp", method = RequestMethod.POST )
	public ResponseEntity updateApp(@RequestBody Param response) {
		//List<CacheGroups> response = new ArrayList<CacheGroups>();
		System.out.println("in api cache "+response.getUserid());
		System.out.println("in api cache "+response.getUserid());
		services.Applications obj=new Applications();
		try {
			 JavaFuns jf=new JavaFuns();
			System.out.println("qr="+"update applications set sts='"+response.getSts()+"' where docid="+response.getAppId().trim());
			if(jf.execute("update applications set sts='"+response.getSts().trim()+"' where docid="+response.getAppId().trim()))
			{}
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("err in usergroupapi="+e.getMessage());
			obj.setUserid(e.getMessage());
		}
		return ResponseEntity.ok(obj);
		 
	//	return Response.status(201).entity(result).build();
	}
	@RequestMapping(value = "/getSubmittedApps", method = RequestMethod.POST )
	public ResponseEntity getSubmittedApps(@RequestBody Param response) {
		//List<CacheGroups> response = new ArrayList<CacheGroups>();
		System.out.println("in api cache "+response.getUserid());
		System.out.println("in api cache "+response.getUserid());
		services.Applications obj=new Applications();
		try {
			 obj.getApplicationsSubmitted(response.getUserid());
		  
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("err in usergroupapi="+e.getMessage());
			obj.setUserid(e.getMessage());
		}
		return ResponseEntity.ok(obj);
		 
	//	return Response.status(201).entity(result).build();
	}
	@RequestMapping(value = "/getApprovedApps", method = RequestMethod.POST )
	public ResponseEntity getApprovedApps(@RequestBody Param response) {
		//List<CacheGroups> response = new ArrayList<CacheGroups>();
		System.out.println("in api cache "+response.getUserid());
		System.out.println("in api cache "+response.getUserid());
		services.ApplicationsTrans obj=new ApplicationsTrans();
		try {
			 obj.getApplicationsApproved(response.getUserid());
		  
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("err in usergroupapi="+e.getMessage());
			obj.setUserid(e.getMessage());
		}
		return ResponseEntity.ok(obj);
		 
	//	return Response.status(201).entity(result).build();
	}
}
