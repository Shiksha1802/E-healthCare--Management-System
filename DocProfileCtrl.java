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

/**
 * Servlet implementation class DocProfileCtrl
 */
@WebServlet("/DocProfileCtrl")
public class DocProfileCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DocProfileCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user=request.getParameter("user");
		AdminDao model=new AdminDao();
		Doctor dd=model.getAnDoctor(user);
		request.setAttribute("LIST", dd);
		RequestDispatcher rd=request.getRequestDispatcher("Doc_Profile.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("dName");
		String email=request.getParameter("dEmail");
		String desig=request.getParameter("dDesig");
		String mobile=request.getParameter("dMobile");
		String user=request.getParameter("user");
		String pass=request.getParameter("password");
		Doctor dd=new Doctor(name,mobile,email,desig,user,pass);
		AdminDao model=new AdminDao();
		int i=model.updateDoctor(dd);
		dd=model.getAnDoctor(user);
		RequestDispatcher rd=request.getRequestDispatcher("Doc_Profile.jsp");
		if(i!=0) {
			request.setAttribute("LIST",dd);
		}
		else {
			request.setAttribute("LIST",dd);
		}
		rd.forward(request, response);
	}

}
