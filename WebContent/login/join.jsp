<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../menu.jsp"/>
  <body>
 <!-- section -->
     <section>
       <div class="join">
          <div class="section_header">
            <!-- <img src="../img/Oopshoes.png" alt="oopshoes-logo" id="img"/> -->
            <h2>회원 가입</h2>
          </div>
          <form action="/oop/join.do" method="post">
            <div class="input_group">
              <input id="id" type="email" name="id" placeholder="E-mail을 입력해주세요" maxlength="30"/><br/>
              <p id="warning_id" class="warning"></p>
              <input id="name" type="text" name="name" placeholder="이름을 입력해주세요" maxlength="20"/><br/>
              <p id="warning_name" class="warning"></p>
              <input id="phone" type="text" name="phone" placeholder="연락처를 '-'표 없이 입력해주세요" maxlength="20"/><br/>            
              <p id="warning_phone" class="warning"></p>
              <input id="join_pass" type="password" name="join_pass" placeholder="영문/숫자/특수문자 조합8~16자리(괄호 사용 불가)" maxlength="20"/>
              <input id="chk_pass" type="password" name="chk_pass" placeholder="패스워드를 다시 입력해주세요" maxlength="20"/>
              <p id="warning_chk_pass" class="warning"></p>
            </div>
            <div class="terms">
              <span>이용약관</span>
              <a href="contract.html">전문보기</a>
              <div class="document">
                <p>이용약관을 적어주세요</p>
              </div>
              <div class="terms_chk">
                <label>
                  <input type="checkbox" name="chk_term" />(필수) 약관에 동의합니다
                </label>
              </div>
            </div>
            <!-- //terms -->
            <div class="get_info">
                  <span>개인정보 수집 및 이용</span>
              <table class="infotable">
                <tr>
                  <th scope="col" width=40>일시</th>
                  <th scope="col" width=80>수집항목</th>
                  <th scope="col">수집목록</th>
                  <th scope="col">보유기간</th>
                </tr>
                <tr>
                  <td>가입시</td>
                  <td>아이디,이메일,패스워드,이름,연락처,성별,생년월일</td>
                  <td>회원식별 및 연락</td>
                  <td>회원탈퇴시까지</td>
                </tr>
                <tr>
                  <td>최초 구매시</td>
                  <td>성별, 생년월일, 연락처, DI</td>
                  <td>본인확인</td>
                  <td>회원탈퇴시까지</td>
                </tr>
                <tr>
                  <td>상품주문시</td>
                  <td>수령인 정보(이름, 연락처, 주소), 결제수단 정보</td>
                  <td>상품 주문 및 배송 등 구매계약의 이행, 상품구매 관련문의사항과 반품, 환불등 민원사항의 상담 및 처리</td>
                  <td>전자상거래법등 관련 법령에 따른 보관기간</td>
                </tr>
              </table>
              <div class="info_chk">
                <label><input type="checkbox" name="chk_info"/>(필수) 개인정보 수집, 이용 동의</label><br>
                <label><input type="checkbox" name="chk_mail"/>(선택) 쇼핑정보 E-mail 수신 동의</label><br>
                <label><input type="checkbox" name="chk_sms" />(선택) 쇼핑정보 SMS 수신 동의</label>
              </div>
              <div class="info_ref">
                <p>※ 약관 및 개인정보 처리방침은 홈페이지 하단에 전문이 게재되어 있습니다.</p>
                  <p>※ 선택 항목으로 동의하지 않아도 불이익을 받지 않습니다</p>
                <span>만 14세 미만은 회원가입 및 서비스 이용이 불가합니다</span>
              </div>
            </div>
            <!-- //get_info -->
          </div>
            <button id="btn_chk" class="btn_join" >회원 가입</button>
          </form>
        </div>
      </section>
      <!-- //section -->
      <!-- footer -->
      <footer>회사 정보 넣을 자리</footer>
      <!-- //footer -->
    </div>
  </body>
</html>