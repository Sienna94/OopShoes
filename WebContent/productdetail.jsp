<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

		<!-- 세자리마다 콤마(,) 찍기 -->
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

			<c:import url="menu.jsp" />
			<link rel="preconnect" href="https://fonts.gstatic.com">

			<!-- 웹 폰트 적용 -->
			<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">

			<section>
				<h2 style="margin-top: 130px; margin-bottom: 20px;">상품 상세정보</h2>
				<div class="product" style="margin-top: -10px;">
					<img src="/oop/img/shoes/${dto.getPimage1()}" width="300" height="300">
					<img src="/oop/img/shoes/${dto.getPimage1()}" width="300" height="300">
					<!-- </div> -->
					<table border="1" style="height: 300px; width: 400px; margin: auto;">
						<tr align="center">
							<td>상품명</td>
							<td>[${dto.pbrand}] ${dto.pname}</td>
						</tr>
						<tr align="center">
							<td>가격</td>
							<td>
								<fmt:formatNumber value="${dto.getPprice()}" pattern="#,### 원" />
							</td>
						</tr>

						<!-- 상품 수량 -->
						<tr align="center">
							<td colspan="2">
								<form name="form1" method="post" action="${path}/oop/cart/insert.do">
									<input type="hidden" name="productId" value="${dto.pid}">
									<select name="amount">
										<c:forEach begin="1" end="10" var="i">
											<option value="${i}">${i}</option>
										</c:forEach>
									</select>&nbsp;개<br>
									<br> <input type="submit" value="장바구니" style="font-family: 'Jua', sans-serif">
									<input type="submit" value="구매하기" style="font-family: 'Jua', sans-serif">
								</form>
								<br> <a href="location.href='productDetail.do?pg=${dto.getPid()}'">상품목록</a>
							</td>
						</tr>
					</table>
				</div>
			</section>

			<%-- end section --%>
				<c:import url="footer.jsp" />