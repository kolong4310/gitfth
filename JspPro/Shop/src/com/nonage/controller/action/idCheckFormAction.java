package com.nonage.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nonage.action.Action;
import com.nonage.dao.MemberDAO;


public class idCheckFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url="/member/idcheck.jsp";
		String id=request.getParameter("id");
		
		MemberDAO memberDAO= MemberDAO.getinstance();
		int message=memberDAO.confirmID(id);
		
		request.setAttribute("message", message);
		request.setAttribute("id", id);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
