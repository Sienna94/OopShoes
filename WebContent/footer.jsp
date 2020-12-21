<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- <style>
	h5 {
		margin-top: 0px;
	}
</style> -->
<style>
/* 푸터 */
.footer {
   margin-top: 100px;
   text-align: center;
   padding: 10px 0;
/*    background-color: #ffffff; */
   width: 100%;
}

.footer dl {
   display: inline-block;
/*    background-color: #ffb74d; */
   margin-right: 10px;
}

.footer h4 {
   font-size: 13px;
   margin-bottom: 8px;
   margin-top: 8px;
}

.footer h6 {
   font-size: 12px;
   font-weight: normal;
   margin-left: 50px;
   margin-bottom: 3px;
}

.footer li {
   text-align: left;
   width: 100%;
   white-space: nowrap;
   border-top: 20px;
   white-space: nowrap;
}

.footer li:before {
   /*    content: ''; */
   width: 1px;
   height: 12px;
/*    background-color: #ffffff; */
   position: absolute;
   left: 0;
   top: 2px;
}

.footer li:first-child:before {
   width: 0;
}

.footer address {
   padding-top: 25px;
   text-align: center;
   font-size: 11px;
}
</style>
<!-- <footer>
<img src="/oop/img/Oopshoes.png" style="width: 108px; height: 31px;"><br>
02-3446-4138<br>
평일 : 11:00 ~ 17:00<br>
점심 : 12:00 ~ 13:00<br>
토,일,공휴일 휴무<br>

RETURN ADDRESS<br>
CJ 대한통운 이용시 : 서울 동대문구 답십리동 CJ택배 답십리중앙대리점<br>
타택배(편의점CJ포함) 이용시 : 서울 중랑구 봉화산로 243 4층(신내동)<br>

BANK INFO<br>
우리 1005-603-770542<br>
예금주 : 이택기(디플리티클로싱)<br>
COMPANY : 디플리티클로싱<br>
CEO : 이택기<br>
ADDRESS : 서울특별시 중랑구 봉화산로 243 (신내동) 4층<br>
BUSINESS LICENSE : 211-08-11928 [ CHECK IT ]<br>
PERMIT NUMBER : 2015-서울중랑-0696호<br>
CPO : 이택기 dipliti@naver.com<br>

PG ESCROW : KCP<br>
HOSTING : CAFE24 CORP.<br>
</footer> -->
<!-- 푸터 -->
<div class="container">
   <div class="footer">
      <dl>
         <dt style="font-size: 18px; padding-left: 10px">
            <b><a href="/oop/contentList.do"><img src="/oop/img/Oopshoes.png" style="width: 108px; height: 31px; float: left; margin-left: 50px;"><br><br></a></b>
         </dt>
         <dd style="padding-left: 10px">
            <ul>
               <li>
                  <h6>
					02-1234-5678<br>
                                   평일 10:00 ~ 1:00<br> 
                                   점심 13:00 ~ 14:00 <br>
                                   주말,공휴일 휴무<br> <br>
                    RETURN ADDRESS<br> 
		            CJ 대한통운 이용시 : 서울 동대문구 답십리동 CJ택배 답십리중앙대리점<br>
					타택배(편의점CJ포함) 이용시 : 서울 중랑구 봉화산로 243 4층(신내동)<br> <br> 
                    BANK INFO<br> 
		                     이젠은행 1234-456-6789-1004<br> 
		                     예금주 : OOSHOES(이런신발)
                  </h6>
               </li>
            </ul>
         </dd>
      </dl>

      <dl>
         <dd>
            <ul>
               <li>
                  <h6>
                    COMPANY : 디플리티클로싱<br> 
                    CEO : 이택기<br>
                    ADDRESS : 서울특별시 중랑구 봉화산로 243 (신내동) 4층<br> <br>
                    BUSINESS LICENSE : 211-08-11928 [ CHECK IT ]<br> 
		            PERMIT NUMBER : 2015-서울중랑-0696호<br> <br> 
                    CPO : 이택기 dipliti@naver.com<br> 
		            PG ESCROW : KCP<br> 
		            HOSTING : CAFE24 CORP.
		            ABOUT PRIVACY GUIDE TERMS OF USE DELIVERY
                  </h6>
               </li>
            </ul>
         </dd>
      </dl>

      <address>
         Copyright © <a href="http://ooshoes.co.kr"><strong>OOSHOES</strong></a>
         All Rights Reserved.
      </address>
   </div>
</div>
<%-- end footer --%>
</div>
<%-- end wrap --%>
</body>
<%-- end body --%>
</html>