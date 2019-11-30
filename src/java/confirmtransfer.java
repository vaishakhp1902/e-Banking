
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
@WebServlet(urlPatterns = {"/confirmtransfer"})
public class confirmtransfer extends HttpServlet {

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
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         String fname = request.getParameter("fname");
        String username = request.getParameter("username");
         String time = request.getParameter("time");
       String recacc = request.getParameter("recacc");
        String sendacc = request.getParameter("sendacc");
        System.out.println("sender = " + request.getParameter("sendamount"));
        double sendamount = Double.parseDouble(request.getParameter("sendamount"));
        double recamount = Double.parseDouble(request.getParameter("recamount"));
        double tamount = Double.parseDouble(request.getParameter("tamount"));
        double lamount=sendamount-tamount;
        double pamount=recamount+tamount;
        Random rand = new Random();
             int  n = rand.nextInt(999) + 1;
                 String idTemp=(String.valueOf(n));
                 int rid=n;
                 String id =idTemp;
                 String accno=sendacc;
                 double amount=lamount;
                 double bamount=sendamount-tamount;
        
         if((tamount<sendamount)&&(sendamount>500))
           {  
               
               try {
           {
            Connection con = new db().getConnection();
            String sql = "update info set amount='"+pamount+"' where accno='"+recacc+"'";
                 PreparedStatement ps = con.prepareStatement(sql);
               ps.executeUpdate();
               String sql1 = "update info set amount='"+lamount+"' where accno='"+sendacc+"'";
                 PreparedStatement ps1 = con.prepareStatement(sql1);
               ps1.executeUpdate();
             String sql2 = "insert into ministate values('"+id+"','"+fname+"','"+username+"','"+accno+"','"+amount+"','"+time+"')";
                 PreparedStatement ps2 = con.prepareStatement(sql2);
               ps2.executeUpdate();
                con.close();
                ps.close();
            request.setAttribute("msg1", "Transfered Successfully");
                RequestDispatcher rd = request.getRequestDispatcher("transfer4.jsp");
                

                rd.forward(request, response);
           }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e);
        } finally {
            out.close();
        }
               
           }
        
            /* TODO output your page here. You may use following sample code. */
          
        
         
         
           else
         {
                request.setAttribute("msg1", "Invalid Figure! Maintain Balance Rs.500 or Figure out of Range");
                RequestDispatcher rd = request.getRequestDispatcher("transfer4.jsp");
                

                rd.forward(request, response);
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
            Logger.getLogger(confirmtransfer.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(confirmtransfer.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(confirmtransfer.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(confirmtransfer.class.getName()).log(Level.SEVERE, null, ex);
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
