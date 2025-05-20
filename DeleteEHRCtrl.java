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
import com.dto.EHRInfo;
import com.dto.UserInfo;

/**
 * Servlet implementation class DeleteEHRCtrl
 */
@WebServlet("/DeleteEHRCtrl")
public class DeleteEHRCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteEHRCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		AdminDao model=new AdminDao();
		int i=model.deleteEHR(id);
		ArrayList<EHRInfo> list=model.getRecord();
		RequestDispatcher rd=request.getRequestDispatcher("showEHR.jsp");
		if(i!=0) {
			request.setAttribute("LIST", list);
		}
		else {
			request.setAttribute("LIST", list);
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
