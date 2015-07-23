package com.bankonet.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bankonet.model.*;


/**
 * Servlet implementation class DetailCompteEpargneServlet
 */
@WebServlet("/DetailCompteEpargneServlet")
public class DetailCompteEpargneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailCompteEpargneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void service (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession(false);
		if(session != null){
				int id = Integer.parseInt((String) request.getParameter("compteId"));
				Client client = (Client) session.getAttribute("client");
				Compte compte = client.getCompte(id);
				session.setAttribute( "compte",compte);
				response.sendRedirect(request.getContextPath()+"/detailCompteEpargne.jsp");
							
						
				} else {
		response.sendRedirect(request.getContextPath()+"/login.jsp");
		}
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.service(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.service(request, response);
	}

}
