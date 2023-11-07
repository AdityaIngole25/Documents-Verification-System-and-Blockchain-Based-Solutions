<%@page import="beans.RandomString"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
 
<%@page import="java.util.List"%>
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

function makeGetRequest1(st) {
   // st=document.frm.state.value;
   //alert(st);
    http.open('get', 'Diseases?plantName=' + st);
    http.onreadystatechange = processResponse1;
    http.send(null);
}

function processResponse1() {
    if(http.readyState == 4){
        var response = http.responseText;
        document.getElementById('diseases').innerHTML = response;
    }
}
 
</script>

</head>
<body>
<jsp:include page="Top.jsp"></jsp:include>
<%  response.setHeader("Pragma", "No-cache");
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setDateHeader("Expires", -1);%>
<div class="container">
<div class="row">

<div class="col-md-6">
<img src="images/upload.jpg" width="100%"/>
</div>
<div class="col-md-6">
<%
Date dt1=new Date();
String dt=(dt1.getDate())+"/"+(dt1.getMonth()+1)+"/"+(dt1.getYear()+1900);
String tm=dt1.getHours()+":"+dt1.getMinutes();
String seckey=RandomString.getAlphaNumericString(8);
%>
<div ><center><h2>Approve Application</h2></center><br/>
 <form id="frm" action="http://localhost:80/VerificationSystemIPFS/ApproveAppForm.py" method="post"  enctype="multipart/form-data">
									 
									  <table class="tblform">
									  
									     
									  <tr>
									 <td>Title
									 </td>
									 <td> 
								 <input type="text" name="title" value="<%=request.getAttribute("title").toString().trim() %>" required class="form-control"/>
									 </td>
									 </tr>
									  <tr>
									 <td>Remark(if Any)
									 </td>
									 <td> 
								 <textarea name="remark" required class="form-control"></textarea>
									 </td>
									 </tr>
									 
	           <tr> <td>  Document</td>
		            <td>
		             <input type="file" name="file" class="form-control" required ></input>
 
		            <input type="hidden" name="userid" value="<%=session.getAttribute("userid").toString().trim() %>"/>
		            <input type="hidden" name="userid_user" value="<%=request.getAttribute("userid_user").toString().trim() %>"/>
		            <input type="hidden" name="docid" value="<%=request.getAttribute("appId").toString().trim() %>"/>
		            <input type="hidden" name="dt" value="<%=dt %>"/>
		            <input type="hidden" name="tm" value="<%=tm %>"/>
		            <input type="hidden" name="seckey" value="<%=seckey %>"/>
		            </td>
            </tr>
								 
	 

									 <tr>
									 <td colspan="2"><input type="submit" value="Submit" class="btn btn-primary"/>
									 </td></tr>
									 </table>
									 </form>
</div>
</div>

</div>

</div>
</body>
</html>