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
<body>
<jsp:include page="DefaultTop.jsp"></jsp:include>
<div class="container"><div class="jumbotron">
<div class="row">
<div class="col-md-6">
<h2>Forget Password</h2><br>
<hr>

<form name="frm" method="post" action="recoverpassword">
	<table>
		<tr>
			<td>Username</td>
			<td><input type="text" name="username" class="form-control" required></td>
		</tr>
		<tr>
			<td>Userid</td>
			<td><input type="text" name="userid" class="form-control" required></td>
		</tr>
		<tr>
			<td>Email ID</td>
			<td><input type="text" name="emailid" class="form-control" required></td>
		</tr>
		<tr>
			<td><input type="submit" value="Submit" class="btn btn-primary"></td>
		</tr>
	
	</table>
</form> </div><div class="col-md-6">
 <img src="images/changepass.png" width="90%"/>
 </div></div>
</div> </div>
</body>
</html>