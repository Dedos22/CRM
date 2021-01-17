<%-- 
    Document   : urunupdate
    Created on : 15.Oca.2021, 15:03:44
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
  <%@ include file="connect.jsp" %>

<%
String id = request.getParameter("u_id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "crm";
String userid = "root";
String password = "123456";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from product where u_id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

 <%@ include file="header.jsp" %>


<!DOCTYPE html>
<html>
<body>
    
    <form style="    position: fixed; top: 60px; left: 325px;" method="post" action="update-process3.jsp">
        <h1>       COSTUMER UPDATE               </h1><br>
<input type="hidden" name="id" value="<%=resultSet.getString("u_id") %>">
<input type="text" name="id" value="<%=resultSet.getString("u_id") %>">
<br>
First name:<br>
<input type="text" name="first_name" value="<%=resultSet.getString("ü_isim") %>">
<br>
Last name:<br>
<input type="text" name="last_name" value="<%=resultSet.getString("model") %>">
<br>
City name:<br>
<input type="text" name="city_name" value="<%=resultSet.getString("marka") %>">
<br>
Email Id:<br>
<input type="text" name="email" value="<%=resultSet.getString("detaylar") %>">
<br><br>

<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>