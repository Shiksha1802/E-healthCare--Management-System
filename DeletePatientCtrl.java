package com.controller;

import java.io.IOException;
import java.util.ArrayList;

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
 * Servlet implementation class DeletePatientCtrl
 */
@WebServlet("/DeletePatientCtrl")
public class DeletePatientCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletePatientCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user=request.getParameter("user");
		AdminDao model=new AdminDao();
		int i=model.deletePatient(user);
		ArrayList<UserInfo> list=model.getAllPatient();
		ArrayList<Doctor> dlist=model.getAllDoctor();
		RequestDispatcher rd=request.getRequestDispatcher("UserProfile.jsp");
		if(i!=0) {
			request.setAttribute("uList", list);
			request.setAttribute("dList",dlist);
		}
		else {
			request.setAttribute("uList", list);
			request.setAttribute("dList",dlist);
		}
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
