<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href='<c:url value="/Resources/Css/login.css"></c:url>' rel="stylesheet">
</head>
<body>
	<h2 align="center"style="color:yellow">Login Page</h2>
	
	
	<c:if test="${error!=null }">
<div  class="loginerror" > <!--  invalid credentials -->
<span >${error }</span>
</div>
</c:if>
<c:if test="${msg!=null }">
<div class="msg" ><!--  loggedout successfully -->
<span>${msg }</span>
</div>
</c:if>
	<form action="<c:url value='/j_spring_security_check'></c:url>" method="post">
		 <div class="form-group" style="width:300px" >
 <label for="username"><h4 style="color:yellow">Enter Username:</h4></label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="j_email">
    </div>
				<div class="form-group" style="width:300px">
      <label for="pwd"><h4 style="color:yellow">Enter Password:</h4></label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="j_password">
    </div>
    <button type="submit" class="btn btn-default" value="SUBMIT">Submit</button>
	</form>
	 </div>
</body>
</html>