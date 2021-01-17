<%-- 
    Document   : connect
    Created on : 24.Kas.2020, 19:20:42
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>

<%@ page language="java" import="java.sql.*"%>
<%@page import= "java.sql.DriverManager" %>
<%! 
  
 String driver = "com.mysql.jdbc.Driver";
 String url = "jdbc:mysql://localhost:3306/crm";
 Connection con = null; 
%>
<%
try {
Class.forName(driver);
} catch (Exception e) {
out.print(" Hata olustu");
}

try {
con = DriverManager.getConnection( url, "root", "123456");
if(con!=null){

}
} catch (Exception e) {
out.print("Veritabanına Baglanirken Hata olustu<br>");
out.print("driverin adi : " + DriverManager.getDriver(url));
}
%>