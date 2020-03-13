package member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

import member.bean.MemberDTO;
import member.dao.MemberDAO;

public class WriteAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {		
		String id = request.getParameter("user_id");
		String pwd = request.getParameter("user_pwd");
		String name = request.getParameter("user_name");
		String email = request.getParameter("user_email");
		String phone = request.getParameter("user_phone");
		String addr1 = request.getParameter("user_address1");
		String addr2 = request.getParameter("user_address2");
		String gender = request.getParameter("user_gender");
		String birth = request.getParameter("user_birth");
		   
		MemberDTO memberDTO = new MemberDTO(); 
		MemberDAO memberDAO = MemberDAO.getInstance();
			
		memberDTO.setId(id); 
		memberDTO.setPwd(pwd); 
		memberDTO.setName(name); 
		memberDTO.setEmail(email); 
		memberDTO.setPhone(phone);
		memberDTO.setAddr1(addr1); 
		memberDTO.setAddr2(addr2);
		memberDTO.setGender(gender);
		memberDTO.setBirth(birth);
		memberDAO.insert(memberDTO);		
		 
		return "/member/writeOK.jsp";  
		
//		request.setAttribute("display", "/template/body.jsp");
//		return "/main/main.jsp";
	}

} 
