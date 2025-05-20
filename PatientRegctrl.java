package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AdminDao;
import com.dto.UserInfo;

/**
 * Servlet implementation class PatientRegctrl
 */
@WebServlet("/PatientRegctrl")
public class PatientRegctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public PatientRegctrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("uName");
		String email=request.getParameter("uEmail");
		String phone=request.getParameter("uMobile");
		String user=request.getParameter("user");
		String password =request.getParameter("password");
		UserInfo ui=new UserInfo(name,phone,email,user,password);
		AdminDao model=new AdminDao();
		int i=model.insertPatient(ui);
		if(i!=0) {
			response.sendRedirect("PatientLogin.jsp");
			request.setAttribute("msg", "Successfully Registered");
		}
		else {
			RequestDispatcher rd=request.getRequestDispatcher("PatientSign.jsp");
			request.setAttribute("msg", "Not Success");
			rd.forward(request, response);
		}
	}

}
