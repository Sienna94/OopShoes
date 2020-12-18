<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<c:import url="../mymenu.jsp"/>

<h2>주문리스트</h2>
<div class="tbl_head01">
	<div class="tbl_head01">
		<table>
			<tr>
				<th align="center">주문번호</th>
				<th align="center">주문아이디</th>
				<th align="center">상품아이디</th>
				<th align="center">상품사이즈</th>
				<th align="center">상품구매수량</th>
			</tr>
			<c:if test="${!empty list}">
				<c:forEach items="${list}" var="ob">					
					<tr>
						<td align="center">${ob.getOdid()}</td>
						<td align="center"><a href="/oop/orderView.do?mid=${ob.getMid()}">${ob.getMid()}</a></td>
						<td align="center">${ob.getPname()}</td>
						<td align="center">${ob.getOdsize()}</td>
						<td align="center">${ob.getOdqty()}</td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>
</div>
</body>
</html>