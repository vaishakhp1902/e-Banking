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
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(urlPatterns = {"/rd"})
public class rd extends HttpServlet {

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
        HttpSession session=request.getSession();
              String username = request.getParameter("username"); 
              String fname=username;
              String date=request.getParameter("time");
              String time=date;
       String accno = request.getParameter("accno"); 
       double camount = Double.parseDouble(request.getParameter("camount"));
       double rdamount = Double.parseDouble(request.getParameter("rdamount"));
       double rd = Double.parseDouble(request.getParameter("rd"));

       //remaining amount
       double ramount=camount-rdamount;
       double amount=ramount;
       
//interest
      double itr=rdamount*0.11*rd;
       double si=(itr)/10;
       double tfd=(12*rdamount)+si; 
         Random rand = new Random();
          int  n = rand.nextInt(9999999) + 1;
                 int  n1 = rand.nextInt(999) + 1;
                 String rdno="RD"+(String.valueOf(n));
                 String id=(String.valueOf(n1));
            session.setAttribute("rdno", rdno);
    
      if(rdamount<(camount-499))
      {
          try {
           {
             Connection con = new db().getConnection();
            String sql = "update info set amount='"+ramount+"' where accno='"+accno+"'";
                 PreparedStatement ps = con.prepareStatement(sql);
               ps.executeUpdate();
               
                String sql1 = "insert into ministate values('"+id+"','"+fname+"','"+username+"','"+accno+"','"+amount+"','"+time+"')";
                 PreparedStatement ps1 = con.prepareStatement(sql1);
               ps1.executeUpdate();
               
              
             String sql2 = "insert into rd values('"+rdno+"','"+username+"','"+accno+"','"+rdamount+"','"+rd+"','"+si+"','"+tfd+"','"+date+"')";
                 PreparedStatement ps2 = con.prepareStatement(sql2);
               ps2.executeUpdate();
                con.close();
                ps.close();
          RequestDispatcher rs=request.getRequestDispatcher("rd1.jsp");
                request.setAttribute("msg1","Your Recurring Deposit Number :"+rdno);
               rs.include(request,response);
            
           }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e);
        } finally {
            out.close();
        }
      
      }
      else
      {
            RequestDispatcher rs=request.getRequestDispatcher("rd.jsp");
                  request.setAttribute("msg1","Invalid! Maintain Rs.500 balance ! " );
               rs.include(request,response);
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
