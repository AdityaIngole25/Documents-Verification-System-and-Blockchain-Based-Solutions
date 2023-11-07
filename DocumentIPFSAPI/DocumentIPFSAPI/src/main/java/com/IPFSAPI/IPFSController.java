package com.IPFSAPI;

import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import services.Documents;
import services.Param;
 

@RestController
public class IPFSController {
	 
	@RequestMapping(value = "/getDocuments", method = RequestMethod.POST )
	public ResponseEntity getDocResultCache1(@RequestBody Param response) {
		//List<CacheGroups> response = new ArrayList<CacheGroups>();
		System.out.println("in api cache "+response.getUserid());
		System.out.println("in api cache "+response.getUserid());
		Documents doc=new Documents();
		try {
			
			doc.getDocs(response.getUserid());
			 
		 
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("err in usergroupapi="+e.getMessage());
			doc.setTitle(e.getMessage());
		}
		return ResponseEntity.ok(doc);
		 
	//	return Response.status(201).entity(result).build();
	}
	@RequestMapping(value = "/getUserDocuments", method = RequestMethod.POST )
	public ResponseEntity getUserDocuments(@RequestBody Param response) {
		//List<CacheGroups> response = new ArrayList<CacheGroups>();
		System.out.println("in api cache "+response.getUserid());
		System.out.println("in api cache "+response.getUserid());
		Documents doc=new Documents();
		try {
			
			doc.getUserDocs(response.getUserid());
			 
		 
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("err in usergroupapi="+e.getMessage());
			doc.setTitle(e.getMessage());
		}
		return ResponseEntity.ok(doc);
		 
	//	return Response.status(201).entity(result).build();
	}
}
