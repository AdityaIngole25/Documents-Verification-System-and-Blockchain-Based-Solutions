<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="beans.*" %>
<%@page import="models.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
 <link rel="stylesheet" href="css/cust.css">
 
<title> Office</title>

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
<body><jsp:include page="Top.jsp"></jsp:include>
<div class="container"><div class="row"> <div class="col-md-6"> 
 
<%
Date dt1=new Date();
String dt=(dt1.getDate())+"/"+(dt1.getMonth()+1)+"/"+(dt1.getYear()+1900);
String tm=dt1.getHours()+":"+dt1.getMinutes();
String docid= session.getAttribute("userid").toString().trim()+"_"+request.getAttribute("formId").toString().trim();
String seckey=RandomString.getAlphaNumericString(8);
%>
<h2>Post Application Form</h2>
 
<hr>

<div class="form-group">
 <form name="frm" method="post" action="http://localhost:80/VerificationSystemIPFS/UploadAppForm.py" enctype="multipart/form-data"><table class="tblform">
	<tr><td>Title</td>
	<td><input type="text" name="title" value="<%=request.getAttribute("title").toString().trim() %>" class="form-control" required>
	<input type="hidden" name="formId" value="<%=request.getAttribute("formId").toString().trim() %>"  required>
	<input type="hidden" name="userid" value="<%=session.getAttribute("userid").toString().trim() %>"  required>
	<input type="hidden" name="dt" value="<%=dt %>"  required>
	<input type="hidden" name="tm" value="<%=tm%>"  required>
	<input type="hidden" name="docid" value="<%=docid%>"  required>
	<input type="hidden" name="seckey" value="<%=seckey %>"/>
	</td>
	</tr>
	 <tr><td>Description/Message</td>
	<td><textarea name="docdesc" class="form-control" required></textarea></td>
	</tr>
       <tr><td>Scanned Copy of Application Form</td>
       <td>
       <input type="file" name="file" class="form-control"/>
       </td>
       </tr>
	<tr>
	<td><input type="submit" value="Submit" class="btn btn-primary" ></td>
	</tr>
	</table>
</form>
</div></div><div class="col-md-6"><br/><br/>
<img src="images/officereg.jpg" width="100%"/>
</div>
</div></div>
</body>
</html>