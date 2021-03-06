package com.bankonet.servlet;
import com.bankonet.model.*;
import com.bankonet.service.*;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class TraiterLoginServlet
 */

public class TraiterLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TraiterLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String login = request.getParameter("login");
		String password = request.getParameter("motDePasse");
		
        BanqueService banqueService = BanqueServiceManager.getBanqueService();
        try {
			Client client = banqueService.findClient(login, password);
			
			//System.out.println("Client authentifiť : "+c.getNom()+" "+c.getPrenom());
			
			HttpSession session = request.getSession(true); 
			
			session.setAttribute( "client", client);
			
				
			session.setAttribute("compteEpargne",client.getCompteEpargneList().isEmpty());
			session.setAttribute( "nom", client.getNom());
			session.setAttribute( "prenom", client.getPrenom());
			response.sendRedirect(request.getContextPath()+"/pagePrincipale.jsp");
			
			
		} catch (BankonetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Connexion Impossible");
			response.sendRedirect(request.getContextPath()+"/erreur.jsp");
		}

	}

}
