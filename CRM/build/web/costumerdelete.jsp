<%-- 
    Document   : costumerdelete
    Created on : 04.Oca.2021, 13:55:02
    Author     : Lenovo
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Database.MyDatabase"%>
  <%@ include file="connect.jsp" %>

<meta http-equiv='Refresh' content="1" url="musteri.jsp"> 

<html>
<head>
<script language="Javascript">
function goto(){
window.location.href="musteri.jsp"
}
</script>
</head>
<body onload="goto()">
</body>
</html>
<%@page import="java.sql.*,java.util.*"%>
<%
String m_id=request.getParameter("m_id");
try
{

Statement st=con.createStatement();
int i=st.executeUpdate("DELETE FROM musteriler WHERE m_id="+m_id);
out.println("Data Deleted Successfully!");
 
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>