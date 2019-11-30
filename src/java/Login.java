/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.ebank.DAO.LoginDAO;
import com.ebank.bean.UserBean;
import com.ebank.database.db;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
@WebServlet(urlPatterns = {"/Login"})
public class Login extends HttpServlet {

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
        
       PrintWriter out = response.getWriter(); String s1,s3,s4;
        String s2 = request.getParameter("name").trim();
        String p = request.getParameter("pwd").trim();
        String c = request.getParameter("type");
        HttpSession session = request.getSession();
        session.setAttribute("logname", s2);
        try {
            if (c.equals("user")) {
                try
		{
		
                Connection con = new db().getConnection();
                    UserBean userbean = new UserBean();
                    userbean.setUsername(s2);
                    userbean.setPassword(p);
                
                    LoginDAO lDao = new LoginDAO();
                    ResultSet rs = lDao.loginUser(userbean);

                
		if(rs.next()){
                    String name1=rs.getString(1);
                    String name2=rs.getString(2);
                    String name3=rs.getString(3);
                    s1=name1;
                    s4=name2;
                    s3=name3;
                    System.out.println(s4);
                      System.out.println(s3);
                        System.out.println(s2);
                          System.out.println(p);
                    session.setAttribute("uname",s4);
                    session.setAttribute("uid", s1);
                                        if(s2.equals(s4) && p.equals(s3))
                    { session.setAttribute("uname", s4);
                session.setAttribute("uid", s1);
                             RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
                             response.sendRedirect("welcome.jsp?name="+s2);
                           
            rd.forward(request, response);  
                    }
            }else
                    {
                      
			RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");	
			request.setAttribute("msg","Please enter valid user name and password" );
			rd.forward(request, response);
		
		
                                        }
                }
		catch(Exception e)
		{
			System.out.println(e);
		}
        
            
            
            }
            else if (s2.equals("Trusted") && p.equals("Trusted") && c.equals("ttp")) {
                session.setAttribute("uname", "Trusted");
                session.setAttribute("uid", "Trusted");
                RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
                rd.forward(request, response);

            } else if (s2.equals("Admin") && p.equals("Admin") && c.equals("admin")) {
                      RequestDispatcher rd = request.getRequestDispatcher("Welcomeadmin.jsp");
                rd.forward(request, response);

            }
            else if (s2.equals("Adarsh") && p.equals("Adarsh") && c.equals("admin")) {
                      RequestDispatcher rd = request.getRequestDispatcher("Welcomeadmin.jsp");
                rd.forward(request, response);

            }
            else {
                RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
                request.setAttribute("msg", "INVALID ! Either Username or Password");
                rd.forward(request, response);
            }



        } catch (Exception e) {
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
