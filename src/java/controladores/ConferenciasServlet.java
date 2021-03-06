/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import static javax.print.attribute.Size2DSyntax.MM;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Conferencia;

/**
 *
 * @author CltControl
 */
@WebServlet(name = "ConferenciasServlet", urlPatterns = {"/Conferencia"})
public class ConferenciasServlet extends HttpServlet {

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

        
        
        String action = request.getParameter("action");
        
        System.out.println(action);
        
        if ("agregar".equals(action)){
            SimpleDateFormat formatoDelTexto = new SimpleDateFormat("yyyy-MM-dd");
            Date fecha;
            String nombre = request.getParameter("nombre");
            String descripcion = request.getParameter("descripcion");
            try {
                fecha = formatoDelTexto.parse(request.getParameter("fecha"));
                Conferencia.insertar(nombre, descripcion, fecha  );
            } catch (ParseException ex) {
                Logger.getLogger(ConferenciasServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            
        }
        if ("editar".equals(action)){
            SimpleDateFormat formatoDelTexto = new SimpleDateFormat("yyyy-MM-dd");
            Date fecha;
            String nombre = request.getParameter("nombre");
            String descripcion = request.getParameter("descripcion");
            int id = Integer.parseInt(request.getParameter("id"));
            try {
                fecha = formatoDelTexto.parse(request.getParameter("fecha"));
                Conferencia.editar(id,nombre, descripcion, fecha  );
            } catch (ParseException ex) {
                Logger.getLogger(ConferenciasServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        if ("eliminar".equals(action)){
            Conferencia.eliminar(Integer.parseInt(request.getParameter("id")));
        }
        
        request.setAttribute("conferencias", Conferencia.conferencias());
        
        try (PrintWriter out = response.getWriter()) {
        request.getRequestDispatcher("home.jsp")
                .forward(request, response);
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
