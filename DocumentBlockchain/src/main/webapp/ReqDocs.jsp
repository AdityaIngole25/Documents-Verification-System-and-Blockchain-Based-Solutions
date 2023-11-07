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
 

<h2>Required Document Registration</h2>
 
<hr>

<div class="form-group">
 <form name="frm" method="post" action="RegReqDocs" enctype="multipart/form-data"><table class="tblform">
	<tr><td>Title</td>
	<td><input type="text" name="title" value="<%=request.getAttribute("title").toString().trim() %>" class="form-control" required>
	<input type="hidden" name="formId" value="<%=request.getAttribute("formId").toString().trim() %>" class="form-control" required>
	</td>
	</tr>
	 
       <tr><td>Document Name</td>
       <td>
       <input type="text" name="docName"  class="form-control" required>
	
       </td>
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