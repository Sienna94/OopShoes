package com.login.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dto.LoginDTO;

import controller.CommandAction;

public class LogoutService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		HttpSession session=request.getSession();
		LoginDTO entity=(LoginDTO)session.getAttribute("logOK");
		
		if(entity !=null) {
			session.removeAttribute("logOK");	// or session.invalidate();
			session.removeAttribute("logFail");	// 로그인 실패문구 삭제
			// 로그인 유지 쿠키 삭제
//			Cookie[] cookies = request.getCookies();
//			if(cookies != null){
//	            for(Cookie cookie : cookies){
//	                if(cookie.getName().equals("id")){
//	                    cookie.setMaxAge(0);
//	                    cookie.setPath("/");
//	                    response.addCookie(cookie);
//	                }
//	            }
//	        }
			return "index.jsp";
		}
		return null;
	}
}
