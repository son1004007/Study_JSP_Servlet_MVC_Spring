package com.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BoardDAO;
import com.dto.BoardVO;

public class BoardCheckPassAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = null;
		String num = request.getParameter("num");
		String pass = request.getParameter("pass");
		BoardDAO bDao = BoardDAO.getInstance();
		BoardVO bVo = bDao.selectOneBoardByNum(num);
		if (bVo.getPass().equals(pass)) { // �꽦怨�
			url = "checkSuccess.jsp";
		} else {// �떎�뙣
			url = "boardCheckPass.jsp";
			request.setAttribute("message", "鍮꾨�踰덊샇媛� ���졇�뒿�땲�떎.");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
