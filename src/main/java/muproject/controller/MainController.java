package muproject.controller;



import java.net.http.HttpRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import muproject.dao.LoginDAO;
import muproject.dao.MuDAO;
import muproject.vo.Login;
import muproject.vo.Users;

@Controller
public class MainController {
	
	@Autowired
	LoginDAO dao;
	
	@Autowired
	MuDAO muDao;


	@RequestMapping("login.do")
	public String loginForm(HttpSession session) {
		session.setAttribute("alertLogin", "");
		//testtest 주성 오후 0527
		return "login";
	}
	
	@RequestMapping("logout.do")
	public String loginout(HttpSession session, HttpServletRequest request) {
		 session.invalidate();

		 session = request.getSession(true);
		 session.setAttribute("alertLogin", "");
		 
		return "login";
	}
	
	
	@RequestMapping("registermu.do")
	public String signupPage() {
		return "register";
	}
	
	@RequestMapping("/registeraction.do")
	public String register(Login login, @RequestParam("nickname") String nickname, HttpSession session) throws Exception {
		
		String tmpId = login.id;
		
		int checkId = muDao.selectIdFromUsersUnique(tmpId);
		
		if (checkId == 1) {
			System.out.println("사용자가 이미 존재함.");
			session.setAttribute("alertLogin", "사용자가 이미 존재함.");
			return "login";
		}
		
		else {
			session.setAttribute("nickname", nickname);
			
			dao.insertlogin(login);
			session.setAttribute("alertLogin", "");
			return "login";
		}
		
		
		
	}
	
	@RequestMapping("/loginAction.do")
	public String login(@RequestParam("id") String id, 
	                    @RequestParam("pw") String pw, 
	                    Login login, HttpSession session, Model model) throws Exception {
	    
	    session.setAttribute("id", id);
	    session.setAttribute("pw", pw);
	    session.setAttribute("alertLogin", "");
	    
	    Users tmpUser = muDao.getUserById(id);
	    
	    // 로그인 실패 시 로그인 폼으로 되돌아가기 위한 변수
	    boolean loginFailed = true;
	    
	    if (tmpUser != null) {
	        session.setAttribute("nickname", tmpUser.getNickname());
	        
	        int count = dao.countlogin(login);
	        
	        if (count >= 1) {
	            // 로그인 성공
	        	
	            loginFailed = false;
	            return "main";
	        }
	    }
	    
	    // 로그인 실패 시
	    model.addAttribute("loginFailed", loginFailed);
	    return "login";
	}
	

}
