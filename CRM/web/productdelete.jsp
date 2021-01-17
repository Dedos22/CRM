<%-- 
    Document   : productdelete
    Created on : 04.Oca.2021, 14:07:26
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Database.MyDatabase"%>
<meta http-equiv='Refresh' content="1" url="product.jsp"> 

<html>
<head>
<script language="Javascript">
function goto(){
window.location.href="product.jsp"
}
</script>
</head>
<body onload="goto()">
</body>
</html>
<%@page import="java.sql.*,java.util.*"%>
<%
String u_id=request.getParameter("u_id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/crm", "root", "123456");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM product WHERE u_id="+u_id);
out.println("Data Deleted Successfully!");
 
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>