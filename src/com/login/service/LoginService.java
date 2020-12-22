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
		HttpSession session=request.getSession();
		
		String id=request.getParameter("id");
		String pass=request.getParameter("pass");
		// 자동로그인 변수
		String loginChk=request.getParameter("autologin");
		
		System.out.println("input>id:"+id );
		System.out.println("input>pass:"+pass );
		System.out.println("input>autoLog:"+loginChk );
		
		LoginDAO dao=new LoginDAO();
		LoginDTO entity=dao.getLoginUser(id,pass);
		
		//회원탈퇴시 로그인불가
		if(entity.getMdrop() == 1)	entity = null;	
		
		if (entity !=null) {
			// 세션설정
			session.setAttribute("logOK", entity);
			
			//로그인 유지처리
            if(loginChk != null){
                Cookie cookie = new Cookie("cid", id);
                cookie.setMaxAge(60);
                cookie.setPath("/");
                response.addCookie(cookie);
            }
			// 쿠키생성>쿠키존재여부>쿠키검색>쿠키비교>index이동
//			Cookie[] cookies = request.getCookies();
//			if(cookies != null){
//			    for(Cookie tempCookie : cookies){
//			        if(tempCookie.getName().equals("cId")){
//			            //실행흐름이 서버에 있을때 서버코드로써 강제이동한다.
//			            //특정 page로 이동하라는 정보만 준다.
//			            
//			        }
//			    }
//			}
			return "index.jsp";
		}else {
			session.setAttribute("logFail","아이디 혹은 패스워드를 잘못 입력되었습니다");
			
			return "login/login.jsp";
		}
	}
}
