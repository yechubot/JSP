package ch15;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ch15/boardPost")//서블릿의 이름 지정, 다른곳에서 부를 때 이렇게 부르게 
public class BoardPostServlet extends HttpServlet {//상속..

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		BoardMgr bMgr = new BoardMgr();//객체 생성
		bMgr.insertBoard(request);//참조하고 게시판에 쓰고 
		response.sendRedirect("list.jsp");//이동하게 만듦
	}
}