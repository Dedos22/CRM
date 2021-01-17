<%-- 
    Document   : kullanıcı_kayit
    Created on : 19.Ara.2020, 17:12:18
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <%@ include file ="connect.jsp" %>

  <%
  
  String ad = request.getParameter("name");    

 
  //değerleri almıyo.artık alıyo

 
  %>
  
 <%try {
  PreparedStatement ifade= null;
   ifade=con.prepareStatement ("insert into login(login_username) values(?) ");

ifade.setString(1, ad);

ifade.executeUpdate();

con.close();
out.println("Kaydınız Veritabanımıza Yapıldı");

}
catch (SQLException e) {
out.println("Kaydınız Veritabanımıza yapılmadı");
}
%>