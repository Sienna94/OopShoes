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
		// 자동로그인 체크변수
		String loginChk=request.getParameter("autologin");
		System.out.println("id: "+id+", "+"pass: "+ pass);
		System.out.println("autoLoginChk: "+loginChk);
		
		LoginDAO dao=new LoginDAO();
//		System.out.println("id333: "+id+", "+"pass: "+ pass);
		LoginDTO entity=dao.getLoginUser(id,pass);
		
		// DB값 소환
		String dbId=entity.getMid();
		String dbPass=entity.getMpw();
		
		//회원탈퇴시 로그인불가
		if(entity.getMdrop() == 1) {
			entity = null;
		}	
		
		HttpSession session=request.getSession();
		// DB값과 입력값 비교
		if (id.equals(dbId)) {
			if (pass.equals(dbPass)) {
				// 로그인작업 -> 세션생성
				session.setAttribute("id", id);
				// 로그인 유지처리
				if (loginChk != null) {
					Cookie cookie=new Cookie("id", id);
					cookie.setMaxAge(60);
					cookie.setPath("/");
					// 쿠키 등록
					response.addCookie(cookie);
					session.setAttribute("logOK", entity);
					System.out.println("로그인유지 cookie: "+cookie);
					
					return "index.jsp";
				}
			}
		}
		
		if (entity !=null) {
			//세션설정
			session.setAttribute("logOK", entity);
			
			return "index.jsp";
		}else {
			session.setAttribute("logFail","아이디 혹은 패스워드를 잘못 입력되었습니다");
			
			return "login/login.jsp";
		}
	}

}
