<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<c:import url="../menu.jsp"/>

<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 커밋 테스트용1 -->
<h1>ddddd</h1>

<!-- 이거는 어떻게 들어가냐  -->
html 파일은 그냥 써도 된다

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div><h1>마이페이지</h1></div>

<div>
아이디
${logOK.getMid()}
</div>
<div>
이름
${logOK.getMname()}
</div>
<div>
주소
${logOK.getMaddress()}
</div>
<div>
우편번호
${logOK.getMpost()}
</div>

<div>
전화번호
${logOK.getMphone()}
</div>
<div>
가입일
${logOK.getMrdate()}
</div>

<a href="mypage/mypagemodify.jsp">회원정보수정</a>

<br>
<br>
<br>
<br>
<br>
<h1>주문현황</h1>
<table style="width: 50%; margin-left: 200px">
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
				<td align="center">${ob.getMid()}</td>
				<td align="center">${ob.getPname()}</td>
				<td align="center">${ob.getOdsize()}</td>
				<td align="center">${ob.getOdqty()}</td>
			</tr>
		</c:forEach>
	</c:if>
	<c:if test="${empty list}">
		주문내역이 없습니다
	</c:if>
</table>
</body>
</html>