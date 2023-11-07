<%@page import="models.LoginTracker"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="soham"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
 <link rel="stylesheet" href="css/cust.css">

<title> </title>
</head>
<body><jsp:include page="Top.jsp"></jsp:include>
<%

String userid=String.valueOf(session.getAttribute("userid"));
String usertype=String.valueOf(session.getAttribute("usertype"));
if(!userid.equalsIgnoreCase("null")){	
	
session.setMaxInactiveInterval(10*60);
LoginTracker login=new LoginTracker();
%>
<h2>My Documents</h2>
<hr>
<form  method="post" action="SubmitReqDocs">
<table class="table table-bordered">
<tr style="background-color:seashell">
<th>Document Id</th>
<th>Title</th>
<th>Description</th>
<th>Date</th>
<th>Time</th>
  
 
</tr>

<input type="hidden" name="appId" value="<%=request.getAttribute("appId").toString().trim() %>"/>
<input type="hidden" name="formId" value="<%=request.getAttribute("formId").toString().trim() %>"/>
<soham:forEach items="${std}" var="rec">

<tr>
<td>
<input type="checkbox" name="${rec.docid}" value="${rec.title}"/>
</td>
<td>${rec.title}</td>
<td>${rec.docdesc}</td>
<td>${rec.dt}</td>
<td>${rec.tm} </td>
 <td>${rec.docid}</td>
</tr>

</soham:forEach>
</table>
<input type="submit" value="Submit" class="btn btn-primary"/>
</form>
<%
if(usertype.equals("admin")){
%> 
<%
}
else{	%>
	 
<%
	}
	
}
else{
	%>
	<h2>Invalid Session...Login again</h2>
	<br>
	<a href="index.jsp">Login</a>
	
	<%
}

%>
</body>
</html>