package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AdminDao;

/**
 * Servlet implementation class Loginctrl
 */
@WebServlet("/Loginctrl")
public class Loginctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public Loginctrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("aName");
		String pass=request.getParameter("password");
		AdminDao model=new AdminDao();
		int i=model.checkAdmin(name,pass);
		if(i!=0) {
			HttpSession session=request.getSession();
			session.setAttribute("user", name);
			response.sendRedirect("AdminPor.jsp");
			request.setAttribute("msg", "Login Success");
		}
		else {
			RequestDispatcher rd=request.getRequestDispatcher("AdminSign.jsp");
			request.setAttribute("msg", "wrong username or password");
			rd.forward(request, response);
		}
	}
	
}
