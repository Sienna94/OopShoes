package com.order.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.order.dao.OrderDAO;
import com.order.dto.OrderDTO;

import controller.CommandAction;

public class OrderViewService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		String mid = request.getParameter("mid");
		
		OrderDAO orderDao = new OrderDAO();
		List<OrderDTO> view = orderDao.orderView(mid);
		
		request.setAttribute("view", view);
		
		return "ad_order/orderview.jsp";
	}

}
