
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
import com.dto.AppointmentInfo;

/**
 * Servlet implementation class approveAppointment
 */
@WebServlet("/approveAppointment")
public class approveAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public approveAppointment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		
		String email=request.getParameter("email");
		String birth=request.getParameter("birth");
		String appoinDate=request.getParameter("appoinDate");
		String appoinTime=request.getParameter("appoinTime");
		String doctor=request.getParameter("doctor");
		String gender=request.getParameter("gender");
		String contact=request.getParameter("contact");
		String user=request.getParameter("user");
		String symptom=request.getParameter("symptom");
		String state=request.getParameter("state");
		
		AdminDao model=new AdminDao();
		AppointmentInfo ai=new AppointmentInfo(id,email,birth,appoinDate,appoinTime,doctor,gender,contact,user,symptom,state);
		ai.setUser(user);
		int i=model.approveAppointment(ai,user);
		
		ArrayList<AppointmentInfo> list=model.getAppointments();
		
		request.setAttribute("list", list);
		RequestDispatcher rd=request.getRequestDispatcher("Showappointmentondoc.jsp");
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
