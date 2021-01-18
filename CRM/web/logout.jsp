<%-- 
    Document   : logout
    Created on : 18.Oca.2021, 20:01:28
    Author     : Lenovo
--%>
<meta http-equiv='Refresh' content="1" url="sign_in.jsp"> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script language="Javascript">
function goto(){
window.location.href="sign_in.jsp"
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
</head>
<body onload="goto()">
<% session.invalidate(); %>
<p>You have been successfully logout</p>
</body>
</html>