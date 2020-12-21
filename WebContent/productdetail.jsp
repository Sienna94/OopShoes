<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 세자리마다 콤마(,) 찍기 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="menu.jsp" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet" href="/oop/css/productdetail.css" type="text/css">

<div class="contents">
	<div class="product_detail">
		<h2 style="font-size: 22px; margin-top: 130px; margin-bottom: 20px;">[${dto.pbrand}] ${dto.pname}</h2>

		<!-- 이미지 영역 -->
		<div class="detail_img">
			<img src="/oop/img/shoes/${dto.getPimage1()}" width="250" height="250">
			<img src="/oop/img/shoes/${dto.getPimage2()}" width="250" height="250">
			<img src="/oop/img/shoes/${dto.getPimage3()}" width="250" height="250">
			
		</div>

		<div class="detail_table">
			<h4 style="font-size: 14px; margin-top: 10px; margin-bottom: 10px;">
				<fmt:formatNumber value="${dto.getPprice()}" pattern="#,### 원" />
			</h4>
			<h6 style="margin-bottom: 10px;">${dto.pdetail}</h6>

			<!-- 상품 수량 -->
			<form name="form1" method="post" action="$/oop/cart/insert.do">
				<input type="hidden" name="productId" value="${dto.pid}">
				<select name="amount" style="margin-bottom: 10px">
					<c:forEach begin="1" end="10" var="i">
						<option value="${i}">${i}</option>
					</c:forEach>
				</select>&nbsp;개<br>SIZE <input type="hidden" name="productId"
					value="${dto.pid}"> <select name="amount">
					<option value="225">225</option>
					<option value="230">230</option>
					<option value="235">235</option>
					<option value="240">240</option>
					<option value="245">245</option>
					<option value="250">250</option>
					<option value="255">255</option>
					<option value="260">260</option>
					<option value="265">265</option>
					<option value="270">270</option>
					<option value="275">275</option>
					<option value="280">280</option>
					<option value="285">285</option>
					<option value="290">290</option>
					<option value="295">295</option>
					<option value="300">300</option>
				</select>
				<button type="submit" class="btn" value="cart">ADD TO CART</button>
				<button type="submit" class="btn" value="buy">BUY NOW</button>
			</form>
			<br>
			<!-- 상품목록 누르면 브랜드 페이지로 이동 -->
			<%-- 					 <form action="/oop/brandsList.do?pg=${dto.getPbrand()}" method="post"> --%>
			<!-- 					<button type="submit" class="btn" >상품목록</button> -->
			<!-- 					</form> -->
			<%-- 					<a href="/oop/brandsList.do?pg=${brand}'">상품목록</a> --%>
			<%-- 					<c:out value="${dto.getPbrand()}" /> --%>
		</div>
	</div>
</div>

<%-- end section --%>
<c:import url="footer.jsp" />