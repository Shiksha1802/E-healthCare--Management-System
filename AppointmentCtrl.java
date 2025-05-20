package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AdminDao;
import com.dto.AppointmentInfo;

@WebServlet("/AppointmentCtrl")
public class AppointmentCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		String birth=request.getParameter("birth");
		String appoinDate=request.getParameter("appoinDate");
		String appoinTime=request.getParameter("appoinTime");
		String doctor=request.getParameter("doctor");
		String gender=request.getParameter("gender");
		String contact=request.getParameter("contact");
		String user=request.getParameter("user");
		String symptom=request.getParameter("symptom");
		AdminDao model=new AdminDao();
		AppointmentInfo ai=new AppointmentInfo(email,birth,appoinDate,appoinTime,doctor,gender,contact,user,symptom);
		int i=model.insertAppointInfo(ai);
		if(i!=0) {
			response.sendRedirect("PatientPor.jsp");
		}
		else {
		    request.setAttribute("errorMessage", "Failed to insert appointment details.");
		    RequestDispatcher rd = request.getRequestDispatcher("AppointmentForm.jsp");
		    rd.forward(request, response);
	}
	}
}
