/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.ebank.database.db;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ISI
 */
@WebServlet(urlPatterns = {"/deposit"})
public class deposit extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        String fname = request.getParameter("fname");
        String username = request.getParameter("uname");
        String accno = request.getParameter("accno");
        double namount = Double.parseDouble(request.getParameter("amount1"));
        double pamount = Double.parseDouble(request.getParameter("amount"));
        double amount;
        amount=namount+pamount;
          String time  = request.getParameter("time");
       Random rand = new Random();
             int  n = rand.nextInt(999) + 1;
                 String idTemp=(String.valueOf(n));
                 int rid=n;
                 String id =idTemp;
       try {

   
              Connection con = new db().getConnection();
            String sql = "insert into ministate values('"+id+"','"+fname+"','"+username+"','"+accno+"','"+amount+"','"+time+"')";
                 PreparedStatement ps = con.prepareStatement(sql);
               ps.executeUpdate();
               String sql1 = "update info set amount='"+amount+"' where accno='"+accno+"'";
                 PreparedStatement ps1 = con.prepareStatement(sql1);
               ps1.executeUpdate();
            
                con.close();
                ps.close();
            request.setAttribute("msg1", "Account Successfully Modified! Account Accessed id: "+id+"");
                RequestDispatcher rd = request.getRequestDispatcher("saving.jsp");
                

                rd.forward(request, response);

           
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e);
        } finally {
            out.close();
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
