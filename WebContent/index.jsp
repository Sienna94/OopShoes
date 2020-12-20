<%@page import="com.product.dto.ProductDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%--\
//쿠키가져오기
Cookie[] cookies = request.getCookies();
if(cookies != null){
    for(Cookie tempCookie : cookies){
        if(tempCookie.getName().equals("id")){
            //실행흐름이 서버에 있을때 서버코드로써 강제이동한다.
            //특정 page로 이동하라는 정보만 준다.
            /* response.sendRedirect("session_Main.jsp"); */
            System.out.println("cookie!=null: "+cookies);
        	session.getAttribute("logOK");
        }
    }
}
--%>
<%response.sendRedirect("/oop/contentList.do");%>