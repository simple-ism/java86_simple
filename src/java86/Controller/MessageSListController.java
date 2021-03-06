package java86.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java86.DAO.MessageDAO;
import java86.VO.MemberVO;
import java86.VO.MessageVO;

@WebServlet("/MessageSList")
public class MessageSListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MessageDAO msDao = new MessageDAO();
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("memberVO");
		
		List<MessageVO> msList = new ArrayList<>();
		msList = msDao.selectSendM(mvo.getMemId());
		
		request.setAttribute("msList", msList);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/MessageSList.jsp");
		rd.forward(request, response);
		
	}
	
}
