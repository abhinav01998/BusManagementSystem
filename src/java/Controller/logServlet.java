package Controller;

import Model.Login;
import Model.LoginDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Abhinav Thakur
 */
public class logServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String uname = request.getParameter("name");
            String password = request.getParameter("passwd");
            String acctype = request.getParameter("acctype");
            
            Login l1 = new Login(uname,password,acctype);
            LoginDAO l2 = new LoginDAO();
            
            if(l2.search(l1) && "student".equals(l1.getAcctype())){
               HttpSession session = request.getSession();
               session.setAttribute("username",uname);
               response.sendRedirect("StudentHome.jsp");
           }
            else if(l2.search(l1) && "faculty".equals(l1.getAcctype())){
               HttpSession session = request.getSession();
               session.setAttribute("username",uname);
               response.sendRedirect("FacultyHome.jsp");
           }
            else if(l2.search(l1) && "admin".equals(l1.getAcctype())){
               HttpSession session = request.getSession();
               session.setAttribute("username",uname);
               response.sendRedirect("AdminHome.jsp");
           }
            else{
               response.sendRedirect("loginpage.jsp");
           }
        }
        catch(Exception e){
            System.out.println(e);
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
