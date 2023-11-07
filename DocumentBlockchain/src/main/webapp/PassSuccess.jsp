<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
 <link rel="stylesheet" href="css/cust.css">

<title>AI Forum</title>
</head>
<body><jsp:include page="DefaultTop.jsp"></jsp:include>
<br/>
<%if(request.getParameter("msg").toString().trim().equals("S")){ %>
<center><h2>Password Recovered Successfully and Sent on your registered email id...</h2>
<%}else{ %>
<center><h2>Password Failed...</h2>
<%} %>
<br><br>
<a href="index.jsp">Home</a></center>
</body>
</html>