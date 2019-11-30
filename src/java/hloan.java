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

/**
 *
 * @author ISI
 */
@WebServlet(urlPatterns = {"/hloan"})
public class hloan extends HttpServlet {

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
            throws ServletException, IOException, ClassNotFoundException, IllegalAccessException, InstantiationException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();
              String username = request.getParameter("username"); 
              String date = request.getParameter("time");    
              String accno = request.getParameter("accno"); 
                 double camount = Double.parseDouble(request.getParameter("camount"));
                 
                 String type=request.getParameter("type");
                   double rqamount = Double.parseDouble(request.getParameter("rqamount"));
              
                 String property=request.getParameter("property");
                 String detail=request.getParameter("detail");
                 String status="Requested";
                  Random rand = new Random();
          int  n = rand.nextInt(999) + 1;
                 String rid=(String.valueOf(n));
               //  String id=(String.valueOf(n1));
                 
                 
              
        try {
          
             Connection con = new db().getConnection();
            String sql ="insert into lrequest values('"+rid+"','"+username+"','"+type+"','"+accno+"','"+camount+"','"+rqamount+"','"+property+"','"+detail+"','"+status+"','"+date+"','null')";
                 PreparedStatement ps = con.prepareStatement(sql);
               ps.executeUpdate();
               
               String sql1 ="insert into loanview values('"+rid+"','"+username+"','"+type+"','"+accno+"','"+camount+"','"+rqamount+"','"+property+"','"+detail+"','"+status+"','"+date+"','null')";
                 PreparedStatement ps1 = con.prepareStatement(sql1);
               ps1.executeUpdate();
               
                con.close();
                ps.close();
            request.setAttribute("msg1", "Request Send Successfully!  : "+rid);
                RequestDispatcher rd = request.getRequestDispatcher("hloan1.jsp");
                

                rd.forward(request, response);

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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(hloan.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(hloan.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(hloan.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(hloan.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(hloan.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(hloan.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(hloan.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(hloan.class.getName()).log(Level.SEVERE, null, ex);
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
