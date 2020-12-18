<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="menu.jsp" />  

<section>
    <h2 style="margin-top: 150px">상품 상세정보</h2>
    <table border="1">
        <tr>
            <td>
                <img src="/oop/img/shoes/"${dto.getPimage1()}" width="500" height="300">
            </td>
            <td>
                <table border="1" style="height: 300px; width: 400px;">
                    <tr align="center">
                        <td>상품명</td>
                        <td>${vo.productName}</td>
                    </tr>
                    <tr align="center">
                        <td>가격</td>	
                        <td><fmt:formatNumber value="${vo.productPrice}" pattern="###,###,###"/></td>
                    </tr>

                    <tr align="center">
                        <td colspan="2">
                            <form name="form1" method="post" action="${path}/shop/cart/insert.do">
                                <input type="hidden" name="productId" value="${vo.productId}">
                                <select name="amount">
                                    <c:forEach begin="1" end="10" var="i">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>&nbsp;개
                                <input type="submit" value="장바구니">
                                <input type="submit" value="구매하기">
                            </form>
                            <a href="${path}/shop/product/list.do">상품목록</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </section>
<%-- end section --%>
<c:import url="footer.jsp" />