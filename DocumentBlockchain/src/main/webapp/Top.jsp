<%@page import="java.util.List"%>
<%@page import="models.LoginTracker"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
 
<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title></title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content="Intense Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">


<script language="Javascript" type="text/javascript">
 

function createRequestObject() {
    var tmpXmlHttpObject;
    if (window.XMLHttpRequest) {
            tmpXmlHttpObject = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        tmpXmlHttpObject = new ActiveXObject("Microsoft.XMLHTTP");
    }

    return tmpXmlHttpObject;
}


var http = createRequestObject();

function makeGetRequest(st) {
   // st=document.frm.state.value;
   
    http.open('get', 'Cities?state=' + st);
    http.onreadystatechange = processResponse;
    http.send(null);
}

function processResponse() {
    if(http.readyState == 4){
        var response = http.responseText;
        document.getElementById('cities').innerHTML = response;
    }
}
 
</script>

</head>

<body>
    <!-- header -->
    <header id="home">
        <div class="container-fluid">
            <div class="header d-lg-flex justify-content-between align-items-center py-sm-3 py-2 px-sm-2 px-1">
                <!-- logo -->
                <div id="logo">
                    <h1><a href="index.jsp">Documents Verification System using Blockchain Based Solutions  </a></h1>
                </div>
                <!-- //logo -->
                <!-- nav -->
                <div class="nav_w3ls ml-lg-5">
                    <nav>
                        <label for="drop" class="toggle">Menu</label>
                        <input type="checkbox" id="drop" />
                        <ul class="menu">
                            
                           <!--  <li>
                                  
                                <label for="drop-2" class="toggle toogle-2">Dropdown <span class="fa fa-angle-down"
                                        aria-hidden="true"></span>
                                </label>
                                <a href="#">Dropdown <span class="fa fa-angle-down" aria-hidden="true"></span></a>
                                <input type="checkbox" id="drop-2" />
                                <ul>
                                    <li><a href="portfolio.html" class="drop-text">Portfolio</a></li>
                                    <li><a href="single.html" class="drop-text">Blog Post</a></li>
                                    <li><a href="index.html" class="drop-text">More</a></li>
                                </ul>
                            </li>  -->
                             <li><a href="/<%=session.getAttribute("usertype").toString().trim()%>">Home</a></li>
                              <%if(session.getAttribute("usertype").toString().trim().equals("admin"))
                                	{
                                	%>
                                	 
		<li><a href="regOffice" > Register Office</a></li>
		<li><a href="viewOffice" >View Offices</a></li>
		
		<li><a href="viewUsers" >View Users</a></li>
		
		 
		
								 <%} else if(session.getAttribute("usertype").toString().trim().equals("user"))
                            	{
                            	%>
                            	  <li><a href="uploaddoc" >Upload Documents </a></li>
                            	  <li><a href="viewMyDocs" >View My Documents </a></li>
                            	  <li><a href="viewMyApps" >View My Pending Applications </a></li>
                            	  <li><a href="viewMySubmittedApps" >View My Submitted Applications </a></li>
                            	  <li><a href="viewApprovedApps" >View My Approved Applications </a></li>
                            	  <li><a href="viewAppForms1" >Application Forms</a></li>
		
                
	<!-- 	<li><a href="viewQues">View Questions</a></li>
		<li><a href="RegModelAns">Register Model Answers</a></li>
		 
         <li><a href="RegExam">Schedule Exam</a> 
		
		</li>
		<li><a href="viewPendingExams">View Pending Exams</a>
		<li><a href="viewScheduledExams">View Scheduled Exams</a>
		<li><a href="viewConductedExams">View Conducted Exams</a>
		  -->
		  
		 
		 
         
                            	<%} else if(session.getAttribute("usertype").toString().trim().equals("officer"))
                            	{
                            	%>
                            	<li class="nav-item"><a  class="nav-link" href="uploadAppForms" >Upload Application Forms</a></li>
                            <li class="nav-item"><a  class="nav-link" href="viewAppForms" >View Application Forms</a></li>	 
                            <li class="nav-item"><a  class="nav-link" href="ViewCityPendingApps" >View Pending Applications</a></li>
                            
                            
                             <%} %> 
                            	<li class="nav-item"><a  class="nav-link" href="ChangePass">Change Password</a></li>
								<li class="nav-item"><a  class="nav-link" href="logout">Logout</a></li>
                           
                        </ul>
                    </nav>
                </div>
                <!-- //nav -->
            </div>
        </div>
    </header>
    <!-- //header -->
      <!-- inner banner -->
    <div class="inner-banner-w3ls d-flex flex-column justify-content-center align-items-center">
    </div>
    <!-- //inner banner -->
    <div class="container"> 
Logged in as </span> <%=session.getAttribute("userid").toString() %> (<%=session.getAttribute("usertype").toString() %>)
 
       