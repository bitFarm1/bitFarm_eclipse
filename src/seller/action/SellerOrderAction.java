package seller.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

public class SellerOrderAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setAttribute("display", "/seller/sellerOrder.jsp");
		return "/main/main.jsp";
	}

}
