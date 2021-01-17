<%-- 
    Document   : giriskontrol
    Created on : 07.Oca.2021, 14:10:03
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Database.MyDatabase"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    
   
String kullaniciadi=request.getParameter("email");

String kullanicisifre=request.getParameter("password");


  MyDatabase db = new MyDatabase();
            Connection con = db.getConnection();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM users where email ='"+kullaniciadi+"' and password= '"+kullanicisifre+"' ;");

             if (rs.next()) {
                
                String isim = request.getParameter("email");
                String sifre = request.getParameter("password");
  
HttpSession anasayfa = request.getSession(true);
anasayfa.putValue("kullanici_giris", "gecerli");
response.sendRedirect("./index.jsp");

                
             
            }
            

else
{
out.println("Oturum açma başarısız");
}

%>