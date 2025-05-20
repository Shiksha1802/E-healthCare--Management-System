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
 * Servlet implementation class DoctorLoginctrl
 */
@WebServlet("/DoctorLoginctrl")
public class DoctorLoginctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DoctorLoginctrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("user");
		String pass=request.getParameter("password");
		AdminDao model=new AdminDao();
		int i=model.checkDoctor(name,pass);
		if(i!=0) {
			HttpSession session=request.getSession();
			session.setAttribute("user", name);
			response.sendRedirect("DocPortal.jsp");
			request.setAttribute("msg", "Login Success");
		}
		else {
			RequestDispatcher rd=request.getRequestDispatcher("Docsign.jsp");
			request.setAttribute("msg", "wrong username or password");
			rd.forward(request, response);
		}
	}

}
