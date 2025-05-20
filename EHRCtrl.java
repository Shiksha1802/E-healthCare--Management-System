package com.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.dao.AdminDao;
import com.dto.EHRInfo;

/**
 * Servlet implementation class EHRCtrl
 */
@MultipartConfig(
	    fileSizeThreshold = 1024 * 1024,   // 1MB
	    maxFileSize = 1024 * 1024 * 5,     // 5MB
	    maxRequestSize = 1024 * 1024 * 25  // 25MB
	)
@WebServlet("/EHRCtrl")
public class EHRCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  private static final String UPLOAD_DIR = "uploads";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EHRCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminDao model=new AdminDao();
		ArrayList<EHRInfo> ehr=model.getRecord();
		RequestDispatcher rd=request.getRequestDispatcher("showEHR.jsp");
		request.setAttribute("LIST",ehr);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Request Content Type: " + request.getContentType()); 
		String pName = request.getParameter("pName");
	     String dName = request.getParameter("dName");
	     Part filePart = request.getPart("ufile");
	     String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
	     String uploadPath = getServletContext().getRealPath("") + UPLOAD_DIR;
	     Files.createDirectories(Paths.get(uploadPath));
	        // Save the file
	        String filePath = uploadPath + "/" + fileName;
	        Files.copy(filePart.getInputStream(), Paths.get(filePath), StandardCopyOption.REPLACE_EXISTING);
	        // Create EHRInfo object and populate it
	        EHRInfo ehrInfo = new EHRInfo(dName, pName, filePath);
	        AdminDao model=new AdminDao();
	        int i=model.uploadEHR(ehrInfo);
	        if(i!=0)
	        	response.sendRedirect("PatientPor.jsp");
	        else {
	        	RequestDispatcher rd=request.getRequestDispatcher("EHR.jsp");
	        	rd.forward(request, response);
	        }
	}

}
