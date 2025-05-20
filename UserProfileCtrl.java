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
 * Servlet implementation class UserProfileCtrl
 */
@WebServlet("/UserProfileCtrl")
public class UserProfileCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminDao model=new AdminDao();
		ArrayList<Doctor> dList=model.getAllDoctor();
		ArrayList<UserInfo> uList=model.getAllPatient();
		request.setAttribute("uList", uList);
		request.setAttribute("dList", dList);
		RequestDispatcher rd=request.getRequestDispatcher("UserProfile.jsp");
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
