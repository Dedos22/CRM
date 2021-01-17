<%-- 
    Document   : UKayitEt
    Created on : 15.Oca.2021, 15:28:38
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*,java.util.*"%>
 


<%
String ü_isim=request.getParameter("ü_isim");

String fiyat=request.getParameter("fiyat");
String marka=request.getParameter("marka");
String model=request.getParameter("model");
String detaylar=request.getParameter("detaylar");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/crm", "root", "123456");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into product(ü_isim,fiyat,marka,model,detaylar)values('"+ ü_isim+"','"+fiyat+"','"+marka+"','"+model+"','"+detaylar+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
