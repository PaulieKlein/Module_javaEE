package com.bankonet.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bankonet.model.*;
import com.bankonet.service.BanqueService;
import com.bankonet.service.BanqueServiceManager;


/**
 * Servlet implementation class TraiterVirementServlet
 */
@WebServlet("/TraiterVirementServlet")
public class TraiterVirementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TraiterVirementServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	HttpSession session = request.getSession(false);
		if(session != null){
			
				int compteSr = Integer.parseInt((String) request.getParameter("compteSource"));
				int compteDes = Integer.parseInt((String) request.getParameter("compteDestination"));
				float montant = Float.parseFloat((String) request.getParameter("montant"));
				
				Client client = (Client) session.getAttribute("client");
				Compte compteSR = client.getCompte(compteSr);
				Compte compteDES = client.getCompte(compteDes);
				
				 BanqueService banqueService = BanqueServiceManager.getBanqueService();
				try {
					Virement virement = banqueService.effectuerVirement(compteSR, compteDES, montant);
					session.setAttribute( "virement",virement);
				
					response.sendRedirect(request.getContextPath()+"/virementEffectue.jsp");
					
					response.sendRedirect(request.getContextPath()+"/erreurVirement.jsp");
				} catch (BankonetException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
								
				} else {
		response.sendRedirect(request.getContextPath()+"/login.jsp");
		}
	}

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
