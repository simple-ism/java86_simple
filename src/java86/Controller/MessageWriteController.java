package java86.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java86.DAO.MessageDAO;
import java86.VO.MessageVO;

@WebServlet("/MessageWrite")
public class MessageWriteController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/MessageWrite.jsp");
		rd.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		MessageVO msvo = new MessageVO();
		MessageDAO msDao = new MessageDAO();
		
		if(request.getParameter("mContent") != null){
			
			
			msvo.setmSendId(request.getParameter("memId"));
			msvo.setmTitle(request.getParameter("mTitle"));
			msvo.setmContent(request.getParameter("mContent"));
			
			
			msDao.(msvo);
			
			response.sendRedirect(request.getContextPath()+"/FineList");

			return;
			}
		request.setAttribute("memId", (request.getParameter("memId")));
				
		

		RequestDispatcher rd = request.getRequestDispatcher("jsp/MessageWrite.jsp");
		rd.forward(request, response);
		return;
	}
	
}
