package com.login.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.LoginDAO;
import com.login.dto.LoginDTO;

import controller.CommandAction;

public class LoginService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String id=request.getParameter("id");
		String pass=request.getParameter("pass");
		// 로그인 유지
//		String autologin=request.getParameter("autologin");
		// 체크시 on이 들어옴
//		System.out.println("autologin: "+autologin);
//		System.out.println("id: "+id+", "+"pass: "+ pass);
		
		
		
		LoginDAO dao=new LoginDAO();
//		System.out.println("id333: "+id+", "+"pass: "+ pass);
		LoginDTO entity=dao.getLoginUser(id,pass);
		
		
		//회원탈퇴시 로그인불가
		if(entity.getMdrop() == 1) {
			entity = null;
		}	
		
//		System.out.println(entity.getPass());
		HttpSession session=request.getSession();
		
		if (entity !=null) {
			//세션설정
			session.setAttribute("logOK", entity);
			
			// autoLogin이 null이면 id값을 쿠키로 저장
//			if (autologin != null) {
//				Cookie cookie=new Cookie("id",id);
//				/* 쿠키등록 */
//				response.addCookie(cookie);
//			}
			
			return "index.jsp";
		}else {
			session.setAttribute("logFail","아이디 혹은 패스워드를 잘못 입력되었습니다");
			
//			return "/oop/login/login.jsp";
			return "login/login.jsp";
		}
	}

}
