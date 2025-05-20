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

@WebServlet("/AdminProfileCtrl")
public class AdminProfileCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user=request.getParameter("user");
		AdminDao model=new AdminDao();
		AdminInfo ad=model.getAdmin(user);
		request.setAttribute("iser", user);
		request.setAttribute("LIST", ad);
		RequestDispatcher rd=request.getRequestDispatcher("Ad_Profile.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user=request.getParameter("aName");
		String pass=request.getParameter("password");
		AdminInfo ad=new AdminInfo(user,pass);
		AdminDao model=new AdminDao();	
		int i=model.updateAdmin(ad);
		ad=model.getAdmin(user);
		RequestDispatcher rd=request.getRequestDispatcher("Ad_Profile.jsp");
		if(i!=0)
		{
			request.setAttribute("msg", "update Successfully");
			request.setAttribute("LIST", ad);
		}
		else {
			request.setAttribute("msg", "not updated");
			request.setAttribute("LIST", ad);
		}
		rd.forward(request, response);
	}

} 
