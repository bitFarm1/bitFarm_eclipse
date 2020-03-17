package member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

public class NaverAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String type = request.getParameter("type");
		
		request.setAttribute("email", email);
		request.setAttribute("name", name);
		request.setAttribute("type", type);

		return "/member/naverInfo.jsp";
	}

}
 