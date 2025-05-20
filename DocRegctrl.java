package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AdminDao;
import com.dto.Doctor;
import com.dto.UserInfo;

/**
 * Servlet implementation class DocRegctrl
 */
@WebServlet("/DocRegctrl")
public class DocRegctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("dName");
		String email=request.getParameter("dEmail");
		String phone=request.getParameter("dMobile");
		String desig=request.getParameter("dDesig");
		String user=request.getParameter("user");
		String password =request.getParameter("password");
		Doctor dd=new Doctor(name,phone,email,desig,user,password);
		AdminDao model=new AdminDao();
		int i=model.insertDoctor(dd);
		if(i!=0) {
			response.sendRedirect("AdminPor.jsp");
			request.setAttribute("msg", "Successfully Registered");
		}
		else {
			RequestDispatcher rd=request.getRequestDispatcher("DoctorReg.jsp");
			request.setAttribute("msg", "Not Success");
			rd.forward(request, response);
		}
	}

}
