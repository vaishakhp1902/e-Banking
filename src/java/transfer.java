/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
@WebServlet(urlPatterns = {"/transfer"})
public class transfer extends HttpServlet {

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
      HttpSession session = request.getSession();
        String fname = request.getParameter("fname");
        String username = request.getParameter("uname");
        String password = request.getParameter("pwd");
        String gender = request.getParameter("gender");
        String address = request.getParameter("addr");
        String city= request.getParameter("dist");
        String state = request.getParameter("state");
        String nation = request.getParameter("country");
          Random rand = new Random();
             int  n = rand.nextInt(999999999) + 1;
             int n1=rand.nextInt(999)+1;
                 String idTemp=(String.valueOf(n));
                  String idTemp1=(String.valueOf(n1));
                 int rid=n;
                 String accno =idTemp;
                 String otp=idTemp1;
                 double amount=0;
session.setAttribute("name",username);
session.setAttribute("dsa",otp);

        try {

   
          
            request.setAttribute("msg1", "Details Saved! Generated DSA code  : "+otp+"");
                RequestDispatcher rd = request.getRequestDispatcher("mail.jsp");
                

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
