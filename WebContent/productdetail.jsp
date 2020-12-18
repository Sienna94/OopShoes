<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="menu.jsp" />  

<section>
    <h2 style="margin-top: 150px; margin-bottom: 20px;">상품 상세정보</h2>
    <table border="1">
        <tr>
            <td>
                <img src="/oop/img/shoes/${dto.getPimage1()}" width="340" height="300">
            </td>
            <td>	
                <table border="1" style="height: 300px; width: 400px;">
                    <tr align="center">
                        <td>상품명</td>
                        <td>[${dto.pbrand}] ${dto.pname}</td>
                    </tr>
                    <tr align="center">
                        <td>가격</td>
<%--                         <td><fmt:formatNumber value="${dto.getPprice()}" pattern="#,### 원"/></td> --%>
                        <td>${dto.getPprice() }</td>
                    </tr>
                    
                    <!-- 상품 수량 -->
                    <tr align="center">
                        <td colspan="2">
                            <form name="form1" method="post" action="${path}/shop/cart/insert.do">
                                <input type="hidden" name="productId" value="${dto.pid}">
                                <select name="amount">
                                    <c:forEach begin="1" end="10" var="i">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>&nbsp;개<br><br>
                                <input type="submit" value="장바구니">
                                <input type="submit" value="구매하기">
                            </form><br>
                            
<%--                             <button id="btn_product" type="button"onclick="location.href='productDetail.do?pg=${ob.getPid()}'"></button> --%>
                            <a href="location.href='productDetail.do?pg=${dto.getPid()}'">상품목록</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</section>
<%-- end section --%>
<c:import url="footer.jsp" />