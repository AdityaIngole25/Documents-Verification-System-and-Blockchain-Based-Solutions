package com.Document;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Vector;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.boot.system.ApplicationTemp;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import beans.Applications;
import beans.ApplicationsTrans;
import beans.Documents;
import beans.Mail;
import beans.Param;
import beans.RandomString;
import models.ApplicationForms;
import models.ApproveStudents;
import models.CheckUser;
import models.JavaFuns;
import models.Offices;
import models.Pass;
import models.PasswordRecovery;
import models.RequiredDocs;
import models.Users;
 
import models.ViewOffice;
import services.APIManager;
import services.CallMinnerAPI;
 

@Controller
public class DocumentController implements ErrorController{
	@RequestMapping("/home")
	public String index()
	{
		return "index.jsp";
	}
	@RequestMapping("/Cities")
	public String cities()
	{
		return "Cities.jsp";
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
        session.invalidate();
		return "Logout.jsp";
	}
	@RequestMapping("/regOffice")
	public String registration()
	{
		return "Register.jsp";
	}
	@RequestMapping("/user")
	public String student()
	{
		return "User.jsp";
	}
	@RequestMapping("/dealer")
	public String staff()
	{
		return "Dealer.jsp";
	}
	@RequestMapping("/uploadAppForms")
	public String uploadAppForms()
	{
		return "UploadAppForms.jsp";
	}
	@RequestMapping("/uploaddoc")
	public String uploaddoc()
	{
		return "UploadDocs.jsp";
	}
	@RequestMapping("/DeclineApp")
	public ModelAndView DeclineApp(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("DeclineApp.jsp");
		mv.addObject("appId",request.getParameter("appId").trim());
		mv.addObject("title",request.getParameter("title").trim());
		mv.addObject("userid_user",request.getParameter("userid_user").trim());
		return mv;
	}
	@RequestMapping("/ApproveApp")
	public ModelAndView ApproveApp(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("ApproveApp.jsp");
		mv.addObject("appId",request.getParameter("appId").trim());
		mv.addObject("title",request.getParameter("title").trim());
		mv.addObject("userid_user",request.getParameter("userid_user").trim());
		return mv;
	}
	@RequestMapping("/admin")
	public String admin()
	{
		return "Admin.jsp";
	}
	@RequestMapping("/ReqDocReg")
	public ModelAndView ReqDocReg(HttpSession ses,HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("ReqDocs.jsp");
		mv.addObject("formId",request.getParameter("formId").toString().trim());
		mv.addObject("title",request.getParameter("title").toString().trim());
		return mv ;
	}
	@RequestMapping("/PostApplication")
	public ModelAndView PostApplication(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("NewApp.jsp");
		mv.addObject("title",request.getParameter("title").trim());
		mv.addObject("formId",request.getParameter("formId").trim());
		return mv;
	}
	@RequestMapping("/SubmitReqDocs")
	public ModelAndView SubmitReqDocs(HttpServletRequest request,HttpSession ses)
	{
		ModelAndView mv=new ModelAndView();
		//System.out.println("docs="+request.getParameter("chkdoc").toString().trim());
		try {
		    Enumeration  e=request.getParameterNames();
		    String title="",formId="",appId="";
		    Vector v=new Vector();
		    while(e.hasMoreElements())
		    {
		    String Chknm=(String)e.nextElement();
		     if(Chknm.equals("appId"))
		    {
		    	appId=request.getParameter(Chknm);
		    }
		     else if(Chknm.equals("formId"))
			 {
		    	 formId=request.getParameter(Chknm);
			 }
		    else
		    { 
		    	v.addElement(Chknm.trim());
		    }
		    RequiredDocs obj=new RequiredDocs();
		    
		   for(int i=0;i<v.size();i++)
		   {
			   obj.setDocId(Integer.parseInt(v.elementAt(i).toString().trim()));
			   obj.setFormId(Integer.parseInt(formId.trim()));
			   obj.SubmitDocs(Integer.parseInt(appId), ses.getAttribute("userid").toString().trim()) ;
			  // CallMinnerAPI minner=new CallMinnerAPI();
			   APIManager minner=new APIManager();
			   Param param=new Param();
			   param.setAppId(String.valueOf(appId));
			   param.setSts("submitted");
			   minner.updateApp(param);
		   }
		    }
		    mv.setViewName("Success.jsp");
		    mv.addObject("activity","SubmitDoc");
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("err="+e.getMessage());
		}
		return mv;
	}
	@RequestMapping("/officer")
	public String officer()
	{
		return "Officer.jsp";
	}
	 @RequestMapping("/error")
    public String handleError() {
        //do something like logging
		return "home";
    }
  
    public String getErrorPath() {
        return "/error";
    }
    @RequestMapping("/check")
	public String check(CheckUser cu,HttpServletRequest request) {
		
		String st=cu.checkUser(request);
		
		return st;
	}	  
	 @RequestMapping("/AppPostedPython1")
   	public ModelAndView AppPostedPython1(ServletRequest request)
   	{
   		ModelAndView mv=new ModelAndView();  
   		 try { 
   			 String st=request.getParameter("sts").toString().trim();
   			 mv.setViewName("gotoPython.jsp");
			 System.out.println("param="+st);
			 mv.addObject("path",beans.GetURL.getPythonBlockChainServerURL2()+"PostApplication.py?param="+st);
			  	 	 
   		 }
   		 catch (Exception e) {
   			// TODO: handle exception
   			 mv.setViewName("Failure.jsp");
   		} 
   		
   		 return mv;
   		
   	}
	 
	 @RequestMapping("/AppApprovedPython1")
	   	public ModelAndView AppApprovedPython1(ServletRequest request)
	   	{
	   		ModelAndView mv=new ModelAndView();  
	   		 try { 
	   			 String st=request.getParameter("sts").toString().trim();
	   			 mv.setViewName("gotoPython.jsp");
				 System.out.println("param="+st);
				 mv.addObject("path",beans.GetURL.getPythonBlockChainServerURL2()+"ApproveApplication.py?param="+st);
				  	 	 
	   		 }
	   		 catch (Exception e) {
	   			// TODO: handle exception
	   			 mv.setViewName("Failure.jsp");
	   		} 
	   		
	   		 return mv;
	   		
	   	}
	 @RequestMapping("/DeclinedAppPython")
	   	public ModelAndView DeclinedAppPython(ServletRequest request)
	   	{
	   		ModelAndView mv=new ModelAndView();  
	   		 try { 
	   			 String st=request.getParameter("sts").toString().trim();
	   			 mv.setViewName("Success.jsp");
				 System.out.println("param="+st);
				 mv.addObject("activity","ApplicationDeclined");
				  	 	 
	   		 }
	   		 catch (Exception e) {
	   			// TODO: handle exception
	   			 mv.setViewName("Failure.jsp");
	   		} 
	   		
	   		 return mv;
	   		
	   	}
	 @RequestMapping("/AppPostedPython2")
	   	public ModelAndView AppPostedPython2(ServletRequest request)
	   	{
	   		ModelAndView mv=new ModelAndView();  
	   		 try { 
	   			  mv.setViewName("Success.jsp");
				 
				 mv.addObject("activity","AppPosted");
				  	 	 
	   		 }
	   		 catch (Exception e) {
	   			// TODO: handle exception
	   			 mv.setViewName("Failure.jsp");
	   		} 
	   		
	   		 return mv;
	   		
	   	}
	 @RequestMapping("/AppApprovePython2")
	   	public ModelAndView AppApprovePython2(ServletRequest request)
	   	{
	   		ModelAndView mv=new ModelAndView();  
	   		 try { 
	   			  mv.setViewName("Success.jsp");
				 
				 mv.addObject("activity","AppApproved");
				  	 	 
	   		 }
	   		 catch (Exception e) {
	   			// TODO: handle exception
	   			 mv.setViewName("Failure.jsp");
	   		} 
	   		
	   		 return mv;
	   		
	   	}
    @RequestMapping("/FromAppFormPython")
   	public ModelAndView FromAppFormPython(ServletRequest request)
   	{
   		ModelAndView mv=new ModelAndView();  
   		 try {
   			  
   			 
   			 String st=request.getParameter("sts").toString().trim();
   			 mv.setViewName("gotoPython.jsp");
			 System.out.println("param="+st);
			 mv.addObject("path",beans.GetURL.getPythonBlockChainServerURL1()+"PostApplication.py?param="+st);
			  	 
   					 
   		 }
   		 catch (Exception e) {
   			// TODO: handle exception
   			 mv.setViewName("Failure.jsp");
   		} 
   		
   		 return mv;
   		
   	}
    @RequestMapping("/AppFormApprovalPython")
   	public ModelAndView AppFormApprovalPython(ServletRequest request)
   	{
   		ModelAndView mv=new ModelAndView();  
   		 try {
   			  
   			 
   			 String st=request.getParameter("sts").toString().trim();
   			 mv.setViewName("gotoPython.jsp");
			 System.out.println("param="+st);
			 mv.addObject("path",beans.GetURL.getPythonBlockChainServerURL1()+"ApproveApplication.py?param="+st);
			  	 
   					 
   		 }
   		 catch (Exception e) {
   			// TODO: handle exception
   			 mv.setViewName("Failure.jsp");
   		} 
   		
   		 return mv;
   		
   	}
    @RequestMapping("/FromPythonDec")
   	public ModelAndView FromPythonDec(ServletRequest request)
   	{
   		ModelAndView mv=new ModelAndView();  
   		 try {
   			  
   			 
   			 String st=request.getParameter("sts").toString().trim();
   				 
   					mv.setViewName("download.jsp");
   				 mv.addObject("sts",st);
   		 }
   		 catch (Exception e) {
   			// TODO: handle exception
   			 mv.setViewName("Failure.jsp");
   		} 
   		
   		 return mv;
   	}
   		
    @RequestMapping("/FromPythonDec1")
   	public ModelAndView FromPythonDec1(ServletRequest request)
   	{
   		ModelAndView mv=new ModelAndView();  
   		 try {
   			  
   			 
   			 String st=request.getParameter("sts").toString().trim();
   				 
   					mv.setViewName("download1.jsp");
   				 mv.addObject("sts",st);
   		 }
   		 catch (Exception e) {
   			// TODO: handle exception
   			 mv.setViewName("Failure.jsp");
   		} 
   		
   		 return mv;
   		
   	}
    @RequestMapping("/datasetInsrtPython")
   	public ModelAndView datasetInsrtPython(ServletRequest request)
   	{
   		ModelAndView mv=new ModelAndView();  
   		 try {
   			  
   			 
   			 String st=request.getParameter("sts").toString().trim();
   				if(st.equals("success"))
   					mv.setViewName("Success.jsp");
   				else
   					mv.setViewName("Failure.jsp");
   		 }
   		 catch (Exception e) {
   			// TODO: handle exception
   			 mv.setViewName("Failure.jsp");
   		} 
   		 mv.addObject("activity","DocUpload");
   		 return mv;
   		
   	}
    @SessionScope
	@RequestMapping("/OTPAuth")
	public ModelAndView OTPAuth(Documents eobj,HttpServletRequest request,HttpSession ses)
	{
		ModelAndView mv=new ModelAndView();
	 
		 try {
			 
			 eobj.setUserid(ses.getAttribute("userid").toString().trim());
			 if(eobj.getOtp().equals(eobj.getUotp()))
			 {
				 System.out.println("otp verified");
				 beans.Base64Encoder encoder=new beans.Base64Encoder();
				 mv.setViewName("gotoPython.jsp");
				 String param= request.getParameter("seckey").toString().trim()+"|"+request.getParameter("filePath").toString().trim() ;
				 System.out.println("param="+param);
				 param=encoder.encode(param.getBytes());
				 mv.addObject("path",beans.GetURL.getPythonServerURL()+"DecryptDoc.py?param="+param);
				 
				 //mv.setViewName("Download.jsp");
				// mv.addObject("path","Uploads/temp/"+eobj.getDocpath());
			 }
			 else
			 { 
				mv.setViewName("Failure.jsp?type=OTPAuth"); 
			 }
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 System.out.println("err="+e.getMessage());
			 mv.setViewName("Failure.jsp?type=OTPAuth"); 
		}
		 return mv;
	}
     
	@RequestMapping("/OTPAuth1")
	public ModelAndView OTPAuth1(Applications eobj,HttpServletRequest request,HttpSession ses)
	{
		ModelAndView mv=new ModelAndView();
	 
		 try {
			 
			 eobj.setUserid(ses.getAttribute("userid").toString().trim());
			 if(eobj.getOtp().equals(eobj.getUotp()))
			 {
				 System.out.println("otp verified");
				 beans.Base64Encoder encoder=new beans.Base64Encoder();
				 mv.setViewName("gotoPython.jsp");
				 String param= request.getParameter("seckey").toString().trim()+"|"+request.getParameter("filePath").toString().trim() ;
				 System.out.println("param="+param);
				 param=encoder.encode(param.getBytes());
				 mv.addObject("path",beans.GetURL.getPythonServerURL()+"DecryptApp.py?param="+param);
				 
				 //mv.setViewName("Download.jsp");
				// mv.addObject("path","Uploads/temp/"+eobj.getDocpath());
			 }
			 else
			 { 
				mv.setViewName("Failure.jsp?type=OTPAuth"); 
			 }
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 System.out.println("err="+e.getMessage());
			 mv.setViewName("Failure.jsp?type=OTPAuth"); 
		}
		 return mv;
	}
	@RequestMapping("/OTPAuth11")
	public ModelAndView OTPAuth11(ApplicationsTrans eobj,HttpServletRequest request,HttpSession ses)
	{
		ModelAndView mv=new ModelAndView();
	 
		 try {
			 
			 eobj.setUserid(ses.getAttribute("userid").toString().trim());
			 if(eobj.getOtp().equals(eobj.getUotp()))
			 {
				 System.out.println("otp verified");
				 beans.Base64Encoder encoder=new beans.Base64Encoder();
				 mv.setViewName("gotoPython.jsp");
				 String param= request.getParameter("seckey").toString().trim()+"|"+request.getParameter("filePath").toString().trim() ;
				 System.out.println("param="+param);
				 param=encoder.encode(param.getBytes());
				 mv.addObject("path",beans.GetURL.getPythonServerURL()+"DecryptApp.py?param="+param);
				 
				 //mv.setViewName("Download.jsp");
				// mv.addObject("path","Uploads/temp/"+eobj.getDocpath());
			 }
			 else
			 { 
				mv.setViewName("Failure.jsp?type=OTPAuth"); 
			 }
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 System.out.println("err="+e.getMessage());
			 mv.setViewName("Failure.jsp?type=OTPAuth"); 
		}
		 return mv;
	}
	@RequestMapping("/OTPAuth2")
	public ModelAndView OTPAuth2(Applications eobj,HttpServletRequest request,HttpSession ses)
	{
		ModelAndView mv=new ModelAndView();
	 
		 try {
			 
			 //eobj.setUserid(ses.getAttribute("userid").toString().trim());
			 if(eobj.getOtp().equals(eobj.getUotp()))
			 {
				 System.out.println("otp verified");
				   
				  mv.setViewName("viewUserDocs");
				  mv.addObject("userid",request.getParameter("userid").trim());
				  mv.addObject("appId",request.getParameter("docId").trim());
				   
			 }
			 else
			 { 
				mv.setViewName("Failure.jsp?type=OTPAuth"); 
			 }
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 System.out.println("err="+e.getMessage());
			 mv.setViewName("Failure.jsp?type=OTPAuth"); 
		}
		 return mv;
	}
	@SessionScope
	@RequestMapping("/sendOTP2")
	public ModelAndView sendOTP2(Applications eobj,HttpServletRequest request,HttpSession ses)
	{
	 ModelAndView mv=new ModelAndView();
	 
		 try {
			 eobj.setDocid( (request.getParameter("docId").trim()));
			 eobj.setFilePath(request.getParameter("path").trim());
			 eobj.setSeckey(request.getParameter("seckey").trim());
			 eobj.setUserid(ses.getAttribute("userid").toString().trim());
			 String otp=RandomString.getAlphaNumericString(4);
			    mv.setViewName("OTPVerification1.jsp");
			    System.out.println("path="+eobj.getFilePath()+" skey="+eobj.getSeckey());
				mv.addObject("path",eobj.getFilePath());
				mv.addObject("docId",eobj.getDocid());
				mv.addObject("seckey",eobj.getSeckey());
				mv.addObject("otp",otp);
				Mail mail=new Mail();
				System.out.println("otp="+otp);
				JavaFuns jf=new JavaFuns();
				String qr="select emailid,usernm from offices where userid='"+ses.getAttribute("userid").toString().trim()+"'";
				Vector v=jf.getValue(qr, 2);
				ses.setAttribute("username", v.elementAt(1).toString().trim());
				ses.setAttribute("email", v.elementAt(0).toString().trim());
				
				String msg="Dear "+ses.getAttribute("username").toString().trim()+", your one time password is "+otp;
				
				try
				{
				if(mail.sendMail(msg, ses.getAttribute("email").toString().trim(),"One time Password"))
				{
					
				}
				}
				catch (Exception e) {
					// TODO: handle exception
					System.out.println("err in mail="+e.getMessage());
				}
			  
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 System.out.println("err="+e.getMessage());
			 mv.setViewName("Failure.jsp?type=sendOTP");
		}
		 return mv;
	}
	@SessionScope
	@RequestMapping("/sendOTP21")
	public ModelAndView sendOTP21(ApplicationsTrans eobj,HttpServletRequest request,HttpSession ses)
	{
	 ModelAndView mv=new ModelAndView();
	 
		 try {
			// eobj.setDocid( (request.getParameter("docId").trim()));
			 eobj.setFilePath(request.getParameter("path").trim());
			 eobj.setSeckey(request.getParameter("seckey").trim());
			 eobj.setUser_userid(ses.getAttribute("userid").toString().trim());
			 String otp=RandomString.getAlphaNumericString(4);
			    mv.setViewName("OTPVerification11.jsp");
			    System.out.println("path="+eobj.getFilePath()+" skey="+eobj.getSeckey());
				mv.addObject("path",eobj.getFilePath());
			//	mv.addObject("docId",eobj.getDocid());
				mv.addObject("seckey",eobj.getSeckey());
				mv.addObject("otp",otp);
				Mail mail=new Mail();
				System.out.println("otp="+otp);
				JavaFuns jf=new JavaFuns();
				String qr="select emailid,usernm from userdetails where userid='"+ses.getAttribute("userid").toString().trim()+"'";
				Vector v=jf.getValue(qr, 2);
				ses.setAttribute("username", v.elementAt(1).toString().trim());
				ses.setAttribute("email", v.elementAt(0).toString().trim());
				
				String msg="Dear "+ses.getAttribute("username").toString().trim()+", your one time password is "+otp;
				
				try
				{
				if(mail.sendMail(msg, ses.getAttribute("email").toString().trim(),"One time Password"))
				{
					
				}
				}
				catch (Exception e) {
					// TODO: handle exception
					System.out.println("err in mail="+e.getMessage());
				}
			  
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 System.out.println("err="+e.getMessage());
			 mv.setViewName("Failure.jsp?type=sendOTP");
		}
		 return mv;
	}
	@SessionScope
	@RequestMapping("/sendOTP3")
	public ModelAndView sendOTP3(Applications eobj,HttpServletRequest request,HttpSession ses)
	{
	 ModelAndView mv=new ModelAndView();
	 
		 try {
			 eobj.setDocid( (request.getParameter("docId").trim()));
			 eobj.setFilePath(request.getParameter("path").trim());
			 eobj.setSeckey(request.getParameter("seckey").trim());
			 eobj.setUserid(ses.getAttribute("userid").toString().trim());
			 String otp=RandomString.getAlphaNumericString(4);
			    mv.setViewName("OTPVerification2.jsp");
			    System.out.println("path="+eobj.getFilePath()+" skey="+eobj.getSeckey());
				mv.addObject("path",eobj.getFilePath());
				mv.addObject("docId",eobj.getDocid());
				mv.addObject("seckey",eobj.getSeckey());
				mv.addObject("userid",request.getParameter("userid").toString().trim());
				mv.addObject("otp",otp);
				Mail mail=new Mail();
				System.out.println("otp="+otp);
				JavaFuns jf=new JavaFuns();
				String qr="select emailid,usernm from offices where userid='"+ses.getAttribute("userid").toString().trim()+"'";
				Vector v=jf.getValue(qr, 2);
				ses.setAttribute("username", v.elementAt(1).toString().trim());
				ses.setAttribute("email", v.elementAt(0).toString().trim());
				
				String msg="Dear "+ses.getAttribute("username").toString().trim()+", your one time password is "+otp;
				
				try
				{
				if(mail.sendMail(msg, ses.getAttribute("email").toString().trim(),"One time Password"))
				{
					
				}
				}
				catch (Exception e) {
					// TODO: handle exception
					System.out.println("err in mail="+e.getMessage());
				}
			  
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 System.out.println("err="+e.getMessage());
			 mv.setViewName("Failure.jsp?type=sendOTP");
		}
		 return mv;
	}
    @SessionScope
	@RequestMapping("/sendOTP")
	public ModelAndView sendOTP(Documents eobj,HttpServletRequest request,HttpSession ses)
	{
	 ModelAndView mv=new ModelAndView();
	 
		 try {
			 eobj.setDocid( (request.getParameter("docId").trim()));
			 eobj.setFilePath(request.getParameter("path").trim());
			 eobj.setSeckey(request.getParameter("seckey").trim());
			 eobj.setUserid(ses.getAttribute("userid").toString().trim());
			 String otp=RandomString.getAlphaNumericString(4);
			    mv.setViewName("OTPVerification.jsp");
			    System.out.println("path="+eobj.getFilePath()+" skey="+eobj.getSeckey());
				mv.addObject("path",eobj.getFilePath());
				mv.addObject("docId",eobj.getDocid());
				mv.addObject("seckey",eobj.getSeckey());
				mv.addObject("otp",otp);
				Mail mail=new Mail();
				System.out.println("otp="+otp);
				JavaFuns jf=new JavaFuns();
				String qr="select emailid,usernm from userdetails where userid='"+ses.getAttribute("userid").toString().trim()+"'";
				Vector v=jf.getValue(qr, 2);
				ses.setAttribute("username", v.elementAt(1).toString().trim());
				ses.setAttribute("email", v.elementAt(0).toString().trim());
				String msg="Dear "+ses.getAttribute("username").toString().trim()+", your one time password is "+otp;
				
				try
				{
				if(mail.sendMail(msg, ses.getAttribute("email").toString().trim(),"One time Password"))
				{
					
				}
				}
				catch (Exception e) {
					// TODO: handle exception
					System.out.println("err in mail="+e.getMessage());
				}
			  
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 System.out.println("err="+e.getMessage());
			 mv.setViewName("Failure.jsp?type=sendOTP");
		}
		 return mv;
	}
	@RequestMapping("/submitDoc")
	@SessionScope
	public ModelAndView submitDoc(HttpSession ses,HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		try
		{
		List<Documents> lst = new ArrayList<Documents>();
		//CallMinnerAPI vs = new CallMinnerAPI();
		APIManager vs=new APIManager();
		Param param=new Param();
		param.setUserid(ses.getAttribute("userid").toString().trim());
		Documents obj= vs.callGetDocsAPI(param);
		mv.addObject("appId",request.getParameter("appId").toString().trim());
		mv.addObject("formId",request.getParameter("formId").toString().trim());
		mv.addObject("std",obj.getLst());
		System.out.println("appid="+request.getParameter("appId").toString().trim());
		System.out.println("formId="+request.getParameter("formId").toString().trim());
		mv.setViewName("ViewMyDocs1.jsp");
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("err="+e.getMessage());
		}
		return mv;
	}
	@RequestMapping("/viewUserDocs")
	@SessionScope
	public ModelAndView viewUserDocs(HttpSession ses,HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		try
		{
		List<Documents> lst = new ArrayList<Documents>();
		//CallMinnerAPI vs = new CallMinnerAPI();
		APIManager vs=new APIManager();
		Param param=new Param();
		param.setAppId(request.getAttribute("appId").toString().trim());
		param.setUserid(request.getAttribute("userid").toString().trim());
		Documents obj=vs.getUserDocsAPI(param);
		
		mv.addObject("std",obj.getLst());
		mv.setViewName("ViewUserDocs.jsp");
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("err="+e.getMessage());
		}
		return mv;
	}
	@RequestMapping("/viewMyDocs")
	@SessionScope
	public ModelAndView viewMyDocs(HttpSession ses) {
		ModelAndView mv=new ModelAndView();
		try
		{
		List<Documents> lst = new ArrayList<Documents>();
		//CallMinnerAPI vs = new CallMinnerAPI();
		APIManager api=new APIManager();
		Param p =new Param();
		p.setUserid(ses.getAttribute("userid").toString().trim());
		Documents obj=api.callGetDocsAPI(p);
		
		mv.addObject("std",obj.getLst());
		mv.setViewName("ViewMyDocs.jsp");
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("err="+e.getMessage());
		}
		return mv;
	}
	@RequestMapping("/viewMySubmittedApps")
	@SessionScope
	public ModelAndView viewMySubmittedApps(HttpSession ses) {
		ModelAndView mv=new ModelAndView();
		try
		{
		List<Applications> lst = new ArrayList<Applications>();
		//CallMinnerAPI vs = new CallMinnerAPI();
		APIManager vs=new APIManager();
		Param param=new Param();
		param.setUserid(ses.getAttribute("userid").toString().trim());
		Applications obj=vs.getSubmittedApps(param);
		
		mv.addObject("std",obj.getLst());
		mv.setViewName("ViewMySubmittedApps.jsp");
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("err="+e.getMessage());
		}
		return mv;
	}
	@RequestMapping("/ViewCityPendingApps")
	@SessionScope
	public ModelAndView ViewCityPendingApps(HttpSession ses) {
		ModelAndView mv=new ModelAndView();
		try
		{
		List<Applications> lst = new ArrayList<Applications>();
		//CallMinnerAPI vs = new CallMinnerAPI();
		APIManager vs=new APIManager();
		Param param=new Param();
		param.setUserid(ses.getAttribute("userid").toString().trim());
		 Applications obj=vs.getCityPendingApps(param);
		
		mv.addObject("std",obj.getLst());
		mv.setViewName("ViewCityPendingApps.jsp");
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("err="+e.getMessage());
		}
		return mv;
	}
	@RequestMapping("/viewApprovedApps")
	@SessionScope
	public ModelAndView viewApprovedApps(HttpSession ses) {
		ModelAndView mv=new ModelAndView();
		try
		{
		List<ApplicationsTrans> lst = new ArrayList<ApplicationsTrans>();
		APIManager vs = new APIManager();
		Param param=new Param();
		param.setUserid(ses.getAttribute("userid").toString().trim());
		
		ApplicationsTrans app=vs.getApprovedApps(param);
		lst=app.getLst();
		mv.addObject("std",lst);
		mv.setViewName("ViewMyApprovedApps.jsp");
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("err="+e.getMessage());
		}
		return mv;
	}
	@RequestMapping("/viewMyApps")
	@SessionScope
	public ModelAndView viewMyApps(HttpSession ses) {
		ModelAndView mv=new ModelAndView();
		try
		{
		List<Applications> lst = new ArrayList<Applications>();
		//CallMinnerAPI vs = new CallMinnerAPI();
		//lst=vs.getPendingApps(ses.getAttribute("userid").toString().trim());
		APIManager minner=new APIManager();
		   Param param=new Param();
		   param.setUserid(ses.getAttribute("userid").toString().trim() );
		   //param.setSts("submitted");
		   Applications obj=minner.getPendingApps(param);
		mv.addObject("std",obj.getLst());
		mv.setViewName("ViewMyApps.jsp");
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("err="+e.getMessage());
		}
		return mv;
	}
	@RequestMapping("/viewUsers")
	@SessionScope
	public ModelAndView viewUsers() {
		
		List<Users> lst = new ArrayList<Users>();
		Users vs = new Users();
		lst=vs.getStudentReport();
		ModelAndView mv=new ModelAndView();
		mv.addObject("std",lst);
		mv.setViewName("ViewUsersReport.jsp");
		return mv;
	}
	@RequestMapping("/viewUserDetails")
	@SessionScope
	public ModelAndView viewUserDetails(HttpServletRequest request) {
		
		List<Users> lst = new ArrayList<Users>();
		Users vs = new Users();
		lst=vs.getUserReport(request.getParameter("userid").toString().trim());
		ModelAndView mv=new ModelAndView();
		mv.addObject("std",lst);
		mv.setViewName("ViewUsersReport.jsp");
		return mv;
	}
	@RequestMapping("/ViewReqDoc")
	@SessionScope
	public ModelAndView ViewReqDoc(HttpServletRequest request) {
		
		List<RequiredDocs> lst = new ArrayList<RequiredDocs>();
		RequiredDocs vs = new RequiredDocs();
		lst=vs.getRequiredDocs();
		ModelAndView mv=new ModelAndView();
		mv.addObject("std",lst);
		mv.addObject("title",request.getParameter("title").toString().trim());
		mv.setViewName("ViewReqDoc.jsp");
		return mv;
	}
	@RequestMapping("/viewAppForms")
	@SessionScope
	public ModelAndView viewAppForms() {
		
		List<ApplicationForms> lst = new ArrayList<ApplicationForms>();
		ApplicationForms vs = new ApplicationForms();
		lst=vs.getApplicationForms();
		ModelAndView mv=new ModelAndView();
		mv.addObject("std",lst);
		mv.setViewName("ViewAppForms.jsp");
		return mv;
	}
	@RequestMapping("/viewAppForms1")
	@SessionScope
	public ModelAndView viewAppForms1() {
		
		List<ApplicationForms> lst = new ArrayList<ApplicationForms>();
		ApplicationForms vs = new ApplicationForms();
		lst=vs.getApplicationForms();
		ModelAndView mv=new ModelAndView();
		mv.addObject("std",lst);
		mv.setViewName("ViewAppForms1.jsp");
		return mv;
	}
	@RequestMapping("/viewOffice")
	@SessionScope
	public ModelAndView viewOffice() {
		
		List<ViewOffice> lst = new ArrayList<ViewOffice>();
		ViewOffice vs = new ViewOffice();
		lst=vs.getOfficeList();
		ModelAndView mv=new ModelAndView();
		mv.addObject("std",lst);
		System.out.println("lst="+lst.size());
		mv.setViewName("ViewOfficeReport.jsp");
		return mv;
	}
    @RequestMapping("/activatedealer")
	public ModelAndView activatestudent(String uid) {
		ModelAndView mv=new ModelAndView();
		ApproveStudents ap=new ApproveStudents();
		String sts=ap.updateStudentStatus(uid);
		if(sts.equals("success"))
			 mv.setViewName("Success.jsp");
		else
			 mv.setViewName("Failure.jsp");
		mv.addObject("activity","studActivation");
		 return mv;
	}
    @RequestMapping("/registerOffice")
	public ModelAndView registerdealer(Offices stu,ServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		 try
		 {MultipartFile file=stu.getFile();
		 String filepath=request.getServletContext().getRealPath("/")+"/UploadsOffice/";
		 
		 
		 System.out.println("path="+filepath);
		 File f=new File(filepath);
		 f.mkdir();
		  
		 try {
			  
			 String fileName=stu.getUserid()+"."+ file.getOriginalFilename().split("\\.")[1];
			 file.transferTo(new File(filepath+"/"+fileName));
			 stu.setPath(fileName);
			 String st=stu.addNewUser();
				if(st.equals("success"))
					mv.setViewName("Success.jsp");
				else
					mv.setViewName("Failure.jsp");
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 mv.setViewName("Failure.jsp");
		}}
		 catch (Exception e) {
				// TODO: handle exception
			 mv.setViewName("Failure.jsp");
			}
		 mv.addObject("activity","OfficeReg");
		 return mv;
		
	}	 
	@RequestMapping("/uploadForm")
	public ModelAndView uploadForm(ApplicationForms stu,ServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		 try
		 {MultipartFile file=stu.getFile();
		 String filepath=request.getServletContext().getRealPath("/")+"/ApplicationForms/";
		 
		 
		 System.out.println("path="+filepath);
		 File f=new File(filepath);
		 f.mkdir();
		  
		 try {
			 JavaFuns jf=new JavaFuns();
			 Vector v=jf.getValue("select (ifnull(max(formId),1000)+1) as mxid from application_forms" , 1);
			 String fileName=v.elementAt(0).toString().trim()+"."+ file.getOriginalFilename().split("\\.")[1];
			 file.transferTo(new File(filepath+"/"+fileName));
			 stu.setFormPath(fileName);
			 stu.setFormId(Integer.parseInt(v.elementAt(0).toString().trim()));
			 String st=stu.addForm();
				if(st.equals("success"))
					mv.setViewName("Success.jsp");
				else
					mv.setViewName("Failure.jsp");
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 mv.setViewName("Failure.jsp");
		}}
		 catch (Exception e) {
				// TODO: handle exception
			 mv.setViewName("Failure.jsp");
			}
		 mv.addObject("activity","FormReg");
		 return mv;
		
	}
	@RequestMapping("/RegReqDocs")
	public ModelAndView RegReqDocs(RequiredDocs stu,ServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		 try
		 {  
			 JavaFuns jf=new JavaFuns();
			 Vector v=jf.getValue("select (ifnull(max(docId),1000)+1) as mxid from requiredDocs" , 1);
			 
			 stu.setDocId(Integer.parseInt(v.elementAt(0).toString().trim()));
			 String st=stu.addReqDocs();
				if(st.equals("success"))
					mv.setViewName("Success.jsp");
				else
					mv.setViewName("Failure.jsp");
		 }
		 catch (Exception e) {
				// TODO: handle exception
			 mv.setViewName("Failure.jsp");
		 }
		 mv.addObject("activity","ReqDocsReg");
		 return mv; 
	}
	@RequestMapping("/registeruser")
	public ModelAndView registeruser(Users stu,ServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		 try
		 {MultipartFile file=stu.getFile();
		 String filepath=request.getServletContext().getRealPath("/")+"/Uploads/";
		 
		 
		 System.out.println("path="+filepath);
		 File f=new File(filepath);
		 f.mkdir();
		  
		 try {
			  
			 String fileName=stu.getUserid()+"."+ file.getOriginalFilename().split("\\.")[1];
			 file.transferTo(new File(filepath+"/"+fileName));
			 stu.setPath(fileName);
			 String st=stu.addNewUser();
				if(st.equals("success"))
					mv.setViewName("Success.jsp");
				else
					mv.setViewName("Failure.jsp");
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 mv.setViewName("Failure.jsp");
		}}
		 catch (Exception e) {
				// TODO: handle exception
			 mv.setViewName("Failure.jsp");
			}
		 mv.addObject("activity","UserReg");
		 return mv;
		
	}
	@RequestMapping("/updateuser")
	public ModelAndView updateuser(Users stu,ServletRequest request,HttpSession ses)
	{String fileName="NA";
		
	ModelAndView mv=new ModelAndView();
	try
		 {
			 stu.setUserid(ses.getAttribute("userid").toString().trim());
			 
		  
		 try {
			 MultipartFile file=stu.getFile();
			 String filepath=request.getServletContext().getRealPath("/")+"/Uploads/";
			 
			 
			 System.out.println("path="+filepath);
			 File f=new File(filepath);
			 f.mkdir();
			  fileName=stu.getUserid()+"."+ file.getOriginalFilename().split("\\.")[1];
			 file.transferTo(new File(filepath+"/"+fileName));
			 
		 }
		 catch (Exception e) {
			// TODO: handle exception
			// return "UserRegFailure.jsp";
		}
		 if(!fileName.equals("NA"))
		 {
			 ses.setAttribute("photo", fileName);
		 }
		 stu.setPath(fileName);
		 String st=stu.updateUser(stu.getUserid());
		 if(st.equals("success"))
				mv.setViewName("Success.jsp");
			else
				mv.setViewName("Failure.jsp");
		 }
		 catch (Exception e) {
			 System.out.println("in update="+e.getMessage());
				// TODO: handle exception
			 mv.setViewName("Failure.jsp");
			}
		 mv.addObject("activity","StudProfile");
		 return mv;
	}
	@RequestMapping("/updateDealer")
	public ModelAndView updatestaff(Offices stu,ServletRequest request,HttpSession ses)
	{
		ModelAndView mv=new ModelAndView();
		String fileName="NA";
		 try
		 {
			 stu.setUserid(ses.getAttribute("userid").toString().trim());
			
		 try {
			 MultipartFile file=stu.getFile();
			 String filepath=request.getServletContext().getRealPath("/")+"/UploadsDealer/";
			 
			 
			 System.out.println("path="+filepath);
			 File f=new File(filepath);
			 f.mkdir();
			  
			  fileName=stu.getUserid()+"."+ file.getOriginalFilename().split("\\.")[1];
			 file.transferTo(new File(filepath+"/"+fileName));
			 
		 }
		 catch (Exception e) {
			// TODO: handle exception
			// return "UserRegFailure.jsp";
		}
		 if(!fileName.equals("NA"))
		 {
			 ses.setAttribute("photo", fileName);
		 }
		 stu.setPath(fileName);
		 String st=stu.updateOffice(stu.getUserid());
		 if(st.equals("success"))
				mv.setViewName("Success.jsp");
			else
				mv.setViewName("Failure.jsp");
		 }
		 catch (Exception e) {
			 System.out.println("in update="+e.getMessage());
				// TODO: handle exception
			 mv.setViewName("Failure.jsp");
			}
		 mv.addObject("activity","StaffProfile");
		 return mv;
	}
	@RequestMapping("/forgetpassword")
	public String forgetpassword() {
		
		return("ForgetPassword.jsp");
	}
	@RequestMapping("/recoverpassword")
	public String recoverpassword(PasswordRecovery pr) {
		
		String sts=pr.getNewPassword();
		
		return(sts);
	}
	@RequestMapping("/ChangePass")
	public String ChangePass()
	{
		return "ChangePass.jsp";
	}
	@RequestMapping("/ChangePassService")
	public ModelAndView ChangePassService(Pass eobj,HttpSession ses)
	{
		ModelAndView mv=new ModelAndView();
		 try
		 {
			 
			 eobj.setUserid(ses.getAttribute("userid").toString().trim());
			 if(eobj.changePassword())
			 { 
				 mv.setViewName("Success.jsp");
			 }
			 else
			 { 
				 mv.setViewName("Failure.jsp");
			 }
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 System.out.println("err="+e.getMessage());
			 mv.setViewName("Failure.jsp");
		}
		 mv.addObject("activity","changePass");
		 return mv;
		 
	}

	 

}
 
