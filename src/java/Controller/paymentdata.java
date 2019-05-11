/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class paymentdata extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try  {
            HttpSession session=request.getSession();
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/MinoBus?useSSL=false","root","sparashadmin1234.@");
            String query1="insert into feesp values(?,?,?,?,?)";
            PreparedStatement pstmt=conn.prepareStatement(query1);
            String em=(String)session.getAttribute("user");
            String u=request.getParameter("Name");
            String p=request.getParameter("Pnum");
            String q=request.getParameter("NOC");
            String r=request.getParameter("Card");
            pstmt.setString(1,em);
            pstmt.setString(2,u);
            pstmt.setString(3,p);
            pstmt.setString(4,q);
            pstmt.setString(5,r);
            int rs=pstmt.executeUpdate();
            if(rs>=1)
            {
                //System.out.print(rs);
              
                //String url=response.encodeRedirectURL("");
                
                String url=response.encodeRedirectURL("studant.html");
                response.sendRedirect(url);
            }
            else
            {
                request.getSession().invalidate();
            response.sendRedirect("Payment.html");
            }
        }
        catch (Exception e) {
            e.printStackTrace();
            
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
        processRequest(request, response);
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
        processRequest(request, response);
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
