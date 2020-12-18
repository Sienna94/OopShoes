<%@page import="com.cart.dto.CartDTO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<c:import url="../menu.jsp" />

	<div class="basket" id="basket">
		<h2 class ="cart-title">BASKET</h2>
<!-- 상품 총 수량 -->
		<div data-text-content="true" style="font-size: 14px; color: #999" class="cart-num" align = "center">
		<span class ="cart-num">
		</span>${fn:length(list)}개 상품</div>		
<!-- 전체 삭제 버튼	 -->
		<div class = "product-select-all" style="font-size: 14px; color: #999" class="cart-num" align = "left">
		<c:if test="${!empty list}">
			<c:forEach items="${list}" var="ob">
			<c:set var ="all" scope="session" value="${ob.getMid()}"/>
			</c:forEach></c:if>
			<input type="hidden" name="mid" value="${ob.getMid()}">
			<input id="btn_deleteAll" type="button" value="전체삭제" onclick="location.href='cartDeleteAll.do?id=${all}'">
		</div>
<!-- 상품목록 -->
	<c:if test="${!empty list}">
		<c:forEach items="${list}" var="ob">
		
		<div class = "item-cart" >
			<div class="item-info">
				<div class = "item-wrap">
				<!-- 이미지 -->
					<span class="img-wrap"><img src="${ob.getPimage1()}" ></span>
					<div class="info-wrap">
						<div class ="pName">
							${ob.getPname()}
						</div>
						<div >
							사이즈 : ${ob.getOdsize()}
						<div>
							수량 : ${ob. getOdqty()}
						</div>
						<div data-text-content="true" style="font-size: 16px; color: rgb(243, 156, 18); font-weight: bold;" class="">
							<span style="background-color: rgb(255, 255, 255); font-size: large;">${ob.getPprice()}원</span>	
						</div>
						</div>
					</div>
					<div class = "btn-cancel">

						<input type="button" value="삭제" onclick="location.href='cartDeleteEach.do?id=${ob.getCid()}'">
					</div>
				</div>
			</div>
		</div>				
		</c:forEach>
	</c:if>
					
			<!-- 주문 check란-->
			<div class="product-checkout">
					<div class =tit>주문예정금액</div>
					<div class = "checkout-container">
						<div class = "info-price">
							<!-- 상품금액 -->
							<div class ="item-price">
								<div class="label">상품금액</div>	
								<div class = "price">
						<c:if test="${!empty list}">
							<c:set var ="sum" value="0"/>
							<c:forEach var="ob" items="${list}">
							<c:set var="sum" value="${sum+ob.pprice}"/>
							</c:forEach>
									<strong>${sum}원</strong>
						</c:if>
								</div>
							</div>
		                    <!-- 예상배송비 -->               
		                    <div class ="item-price">
		                       <div class="label">예상배송비</div>
		                       <div class = "price">
		                          <c:choose>
		                             <c:when test = "${sum>=100000}">
		                                3000원
		                             </c:when>
		                             <c:otherwise>0원</c:otherwise>
		                          </c:choose>
		                       </div>
		                    </div>
							<!-- 상품 할인 금액 -->
							<div class = "item-price">
								<div class="label">상품 할인 금액</div>
								<div class="price sale">
									<strong>원</strong>
								</div>
							</div>
							<!-- 주문 할인 금액 -->
							<div class = "item-price">
								<span class="label">상품 할인 금액</span>
								<span class="price sale">
									<strong>원</strong>
								</span>
							</div>
						</div>
						<!-- 총 결제 예정 금액	 -->							
						<div class="total-price ">
							<strong class ="label" >총 결제 예정 금액</strong>
							<div class ="price sale total">
								<strong>${sum}원</strong>
							</div>
						</div>
						<!-- 주문하기 버튼 -->
 						<form action="/oop/payList.do" method="post">
							<c:if test="${!empty list}">
							<c:forEach items="${list}" var="ob">
							<c:set var ="all" scope="session" value="${ob.getMid()}"/>
							<input type="hidden" name="mid" value="${all}">
							</c:forEach></c:if>
						<button type="submit" class="btn-order" value="ORDER">ORDER</button></form>
					</div>
				</div>
			</div>	
<c:import url="../footer.jsp" />