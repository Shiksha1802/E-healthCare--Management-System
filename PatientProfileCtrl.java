package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AdminDao;
import com.dto.AdminInfo;
import com.dto.UserInfo;

/**
 * Servlet implementation class PatientProfileCtrl
 */
@WebServlet("/PatientProfileCtrl")
public class PatientProfileCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientProfileCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user=request.getParameter("user");
		AdminDao model=new AdminDao();
		UserInfo ad=model.getAnPatient(user);
		request.setAttribute("LIST", ad);
		RequestDispatcher rd=request.getRequestDispatcher("Pat_Profile.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("uName");
		String email=request.getParameter("uEmail");
		String mobile=request.getParameter("uMobile");
		String user=request.getParameter("user");
		String pass=request.getParameter("password");
		UserInfo ui=new UserInfo(name,mobile,email,user,pass);
		AdminDao model=new AdminDao();
		int i=model.updatePatient(ui);
		ui=model.getAnPatient(user);
		RequestDispatcher rd=request.getRequestDispatcher("Pat_Profile.jsp");
		if(i!=0) {
			request.setAttribute("LIST", ui);
		}
		else {
			request.setAttribute("LIST", ui);
		}
		rd.forward(request, response);
	}

}
