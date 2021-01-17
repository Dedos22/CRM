/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;


import Database.MyDatabase;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Lenovo
 */
public class KayitOl extends HttpServlet {
    
     /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            String m_isim = request.getParameter("m_isim");
            String m_soyisim = request.getParameter("m_soyisim");
             String m_tel = request.getParameter("m_tel");
              String m_adres= request.getParameter("m_adres");
               String m_eposta = request.getParameter("m_eposta");
            
            MyDatabase db = new MyDatabase();
            Connection con = db.getConnection();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM musteriler where m_isim ='"+m_isim+"' and m_soyisim = '"+m_soyisim+"' ;");
            
            if (!rs.next()) {
                
                String isim = request.getParameter("m_isim");
                String soyad = request.getParameter("m_soyisim");
                 String tel = request.getParameter("m_tel");
                  String eposta = request.getParameter("m_eposta");
                   String adres = request.getParameter("m_adres");
                

                stmt.execute("INSERT INTO musteriler (m_isim,m_soyisim,m_tel,m_adres,m_eposta) VALUES ('"+isim+"', '"+soyad+"','"+tel+"', '"+adres+"','"+eposta+"');");
                
                response.sendRedirect("musteri.jsp?p=ok");
            }else{
                response.sendRedirect("musteri.jsp?n=no");
            }
            
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(KayitOl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(KayitOl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
}
