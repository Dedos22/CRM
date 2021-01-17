<%-- 
    Document   : contactmodal
    Created on : 06.Oca.2021, 10:12:58
    Author     : Lenovo
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("m_id");
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
String sql ="select * from musteriler where m_id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

 <%@ include file="header.jsp" %>


<!DOCTYPE html>
<html>
<body>
    
    <form style="    position: fixed; top: 60px; left: 325px;" method="post" action="update-process.jsp">
        <h1>       COSTUMER UPDATE               </h1><br>
<input type="hidden" name="id" value="<%=resultSet.getString("m_id") %>">
<input type="text" name="id" value="<%=resultSet.getString("m_id") %>">
<br>
First name:<br>
<input type="text" name="first_name" value="<%=resultSet.getString("m_isim") %>">
<br>
Last name:<br>
<input type="text" name="last_name" value="<%=resultSet.getString("m_soyisim") %>">
<br>
City name:<br>
<input type="text" name="city_name" value="<%=resultSet.getString("m_eposta") %>">
<br>
Email Id:<br>
<input type="text" name="email" value="<%=resultSet.getString("m_adres") %>">
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