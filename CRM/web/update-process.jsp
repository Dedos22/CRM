<%-- 
    Document   : update-process
    Created on : 06.Oca.2021, 10:24:01
    Author     : Lenovo
--%>
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/crm";%>
<%!String user = "root";%>
<%!String psw = "123456";%>
<%
String id = request.getParameter("id");
String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String city_name=request.getParameter("city_name");
String email=request.getParameter("email");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update musteriler set m_id=?,m_isim=?,m_soyisim=?,m_eposta=?,m_adres=? where m_id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, first_name);
ps.setString(3, last_name);
ps.setString(4, city_name);
ps.setString(5, email);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
