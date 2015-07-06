package com.bankonet.servlet;

import java.io.IOException;
import java.util.Date;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DateServlet
 */

public class DateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init(ServletConfig servconfig) throws ServletException {
    	System.out.println("initialisation de DateServlet");
    	super.init(servconfig);

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("Bienvenue sur Bankonet") ;
		SimpleDateFormat sdf = new SimpleDateFormat("dd MMMM yyyy");
		System.out.println(sdf.format(new Date())) ;

		
		RequestDispatcher disp = this.getServletContext().getRequestDispatcher("/login.jsp");
		disp.forward(request, response);
		
		//response.sendRedirect(request.getContextPath()+"/login.jsp");
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
		System.out.println("suppression de DateServlet");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	

	
	
}
