package com.bankonet.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class TimeFilter implements Filter {
	
	public void doFilter(){}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		long timeBefore = System.currentTimeMillis();
		chain.doFilter(req, resp);
		long timeAfter = System.currentTimeMillis() - timeBefore;
		System.out.println("Le temps passé sur le servlet est de " + timeAfter +" ms" );
		//System.out.println(((HttpServletRequest) request).getRequestURL());
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
