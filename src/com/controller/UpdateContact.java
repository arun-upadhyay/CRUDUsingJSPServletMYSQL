package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.service.ContactService;

@WebServlet("/update-contact")
public class UpdateContact extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ContactService contactService = new ContactService();
		HttpSession session = request.getSession();
		session.setAttribute("contactById", contactService.getContactById(request.getParameter("id")));
		response.sendRedirect("index.jsp?update=true");

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ContactService contactService = new ContactService();
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String address = request.getParameter("address");
			String phoneno  = request.getParameter("phoneno");
			contactService.updateContact(id, name, address, phoneno);
			response.sendRedirect("home");
	}

}
