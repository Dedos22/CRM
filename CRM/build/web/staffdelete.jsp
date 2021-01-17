<%-- 
    Document   : staffdelete
    Created on : 04.Oca.2021, 13:04:36
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Database.MyDatabase"%>
  <%@ include file="connect.jsp" %>
<meta http-equiv='Refresh' content="1" url="personel.jsp"> 

<html>
<head>
<script language="Javascript">
function goto(){
window.location.href="personel.jsp"
}
</script>
</head>
<body onload="goto()">
</body>
</html>
<%@page import="java.sql.*,java.util.*"%>
<%
String p_id=request.getParameter("p_id");
try
{

Statement st=con.createStatement();
int i=st.executeUpdate("DELETE FROM personel WHERE p_id="+p_id);
out.println("Data Deleted Successfully!");
 
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

