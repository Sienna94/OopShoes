package com.cart.service;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cart.dao.CartDAO;
import com.cart.dto.CartDTO;

import controller.CommandAction;

public class CartInputService implements CommandAction {

	@Override 
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		System.out.println("CartInputService mid:"+ request.getParameter("mid"));
		
//		int cid= 0; //테이블에서 생성
		String mid = request.getParameter("mid");
		int pid=Integer.parseInt(request.getParameter("pid"));
		String pimage1 = request.getParameter("image1");
		String pname = request.getParameter("name");
		int pprice = Integer.parseInt(request.getParameter("price"));
		int odsize= Integer.parseInt(request.getParameter("odsize"));
		int odqty= Integer.parseInt(request.getParameter("odqty"));
		
		// 데이터 저장
		CartDTO dto = new CartDTO();
//		dto.setCid(cid);
		dto.setMid(mid);
		dto.setPid(pid);
		dto.setPimage1(pimage1);
		dto.setPname(pname);
		dto.setPprice(pprice);
		dto.setOdsize(odsize);
		dto.setOdqty(odqty);
				
		// insert DB
		CartDAO cartDao = new CartDAO();
		int n = cartDao.cartInput(dto);
			
		request.setAttribute("CartInputService:n", n);
		return "cart/cart.jsp";		
	}
}
