<%-- 
    Document   : taskdelete
    Created on : 04.Oca.2021, 09:22:39
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*,java.util.*"%>
  <%@ include file="connect.jsp" %>
<meta http-equiv='Refresh' content="1" url="index.jsp"> ->1 saniye sonra hemen yönlendirme yapar. İstersen uzatabilirsin.

<html>
<head>
<script language="Javascript">
function goto(){
window.location.href="index.jsp"
}
</script>
</head>
<body onload="goto()">
</body>
</html>
<%
String id=request.getParameter("id");
try
{

Statement st=con.createStatement();
int i=st.executeUpdate("DELETE FROM todolist WHERE id="+id);
out.println("Data Deleted Successfully!");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
