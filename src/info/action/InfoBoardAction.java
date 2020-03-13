package info.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

public class InfoBoardAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setAttribute("display", "/information/infoMain.jsp");
		request.setAttribute("info", "/information/infoBoard.jsp");
		return "/main/main.jsp";
	}

} 
