<%-- 
    Document   : Uyeol
    Created on : 07.Oca.2021, 14:50:51
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*,java.util.*"%>
<meta http-equiv='Refresh' content="1" url="sign_in.jsp"> 

<html>
<head>
<script language="Javascript">
function goto(){
window.location.href="sign_in.jsp"
}
</script>
</head>
<body onload="goto()">
</body>
</html>
<%
String sifre=request.getParameter("password");

String email=request.getParameter("email");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/crm", "root", "123456");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into users(password,email)values('"+ sifre+"','"+email+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>