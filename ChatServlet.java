package com.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dto.ChatBot;

@WebServlet("/ChatServlet")
public class ChatServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private StringBuilder chatHistory = new StringBuilder();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String userMessage = request.getParameter("message");

        // Call the AI chatbot method to get the response
        ChatBot chatbot = new ChatBot();
        String aiResponse = chatbot.getAIResponse(userMessage);  // Ensure this is always non-null

        // Set the response attribute and forward to JSP
        request.setAttribute("aiResponse", aiResponse);
        RequestDispatcher dispatcher = request.getRequestDispatcher("chatbot.jsp");
        dispatcher.forward(request, response);
    }
}
