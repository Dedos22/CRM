<%-- 
    Document   : update-process3
    Created on : 15.Oca.2021, 15:22:26
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv='Refresh' content="1" url="personel.jsp"> 

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
String sql="Update product set u_id=?,ü_isim=?,model=?,marka=?,detaylar=? where u_id="+id;
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
