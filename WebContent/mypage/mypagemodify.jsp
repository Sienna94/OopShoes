 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<c:import url="../menu.jsp"/>

<meta charset="UTF-8">
<title>Insert title here</title>

<script>
/* $(function () {
	  $("#btn_modifychk").click(function () {
		    if(isTrue == 0){
				$("#join_pass").val("");
				$("#join_pass").focus();
				return false;
			}else{
				$( "#target" ).submit();
			}
		});
}); */

</script>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<h1>마이페이지수정</h1>
<form id="target" name="memberModifyForm" method="post" action="/oop/memberModify.do">
	<div class="tbl_head01">
		<table>
		   <tr>
		      <td>회원아이디</td>
		      <td><input type="text" name="id" size="50" value="${logOK.getMid()}" readonly></td>
		   </tr>
		   <tr>
		      <td>비밀번호</td>
		      <td><input id="join_pass" type="password" name="join_pass" placeholder="영문/숫자/특수문자 조합8~16자리(괄호 사용 불가)" maxlength="20"/><!-- <input type="text" name="pw" size="50" value=""> --></td>
		      
		   </tr> 
		   <tr>
		      <td>비밀번호확인</td>
		      <td><input id="chk_pass" type="password" name="chk_pass" placeholder="패스워드를 다시 입력해주세요" maxlength="20"/>
		      <p id="warning_chk_pass" class="warning"></p><!-- <input type="text" name="pwck" size="50" value=""> --></td>
		   </tr>  
		   <tr>
		      <td>회원이름</td>
		      <td><input type="text" name="name" size="50" value="${logOK.getMname()}"></td>
		   </tr>  
		   <tr>
		      <td>주소</td>
		      <td><input type="text" name="addr" size="50" value="${logOK.getMaddress()}"></td>
		   </tr>
		   <tr>
		      <td>우편번호</td>
		      <td><input type="text" name="post" size="50" value="${logOK.getMpost()}"></td>
		   </tr>
		   <tr>
		      <td>전화번호</td>
		      <td><input type="text" name="phone" size="50" value="${logOK.getMphone()}"></td>
		   </tr>
		   
		   <tr>
		      <td colspan="2" align="center">
		      	<div class="btn_list01">
			      <input id="btn_modifychk" type="button" value="수정완료"><!-- onclick="submit()" -->
			      <input type="reset" value="다시작성">
			     </div>
		      </td>
		   </tr>
		</table>
	</div>
</form>
<input type="button" value="회원탈퇴" onclick="if(confirm('회원탈퇴하시겠습니까?')){location.href='/oop/memberDrop.do?id=${logOK.getMid()}'}">
</body>
</html>