<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

      <!-- 세자리마다 콤마(,) 찍기 -->
      <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

         <c:import url="menu.jsp" />
         <link rel="preconnect" href="https://fonts.gstatic.com">

         <!-- 웹 폰트 적용 -->
         <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">

      <script>
         function cartIn(){
            form = document.form1;
            form.action = "/oop/cartInput.do";
            form.submit();
         }
         function buyNow(){
            form = document.form1;
            form.action = "/oop/payBuynowList.do";
            form.submit();
         }
      </script>

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
                     
                        <!-- 장바구니 -->
                        <form id="form_a" name="form1" method="post" action="${path}/oop/cart/cartInput.do">
                           <input type="hidden" name="pid" value="${dto.getPid()}">
                           <select name="odqty">
                              <c:forEach begin="1" end="10" var="i">
                                 <option value="${i}">${i}</option>
                              </c:forEach>
                           </select>&nbsp;개<br>
                           <!-- 사이즈 선택이 없어서 임시로 만들었습니다. 수정해주세요 -->
                           <select class="size" name="odsize" data-parsley-required="" data-parsley-required-message="필수 선택 항목입니다.">
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
                                </select>
                           <!-- 넘겨줄 파라메터값들 -->
                           
                           <input type="hidden" name="mid" value="${logOK.getMid()}">
                          <%--  <input type="hidden" name="pid" value="${dto.pid}"> --%>
                           <input type="hidden" name="pimage1" value="${dto.getPimage1()}">
                           <input type="hidden" name="pname" value="${dto.pname}">
                           <input type="hidden" name="pprice" value="${dto.getPprice()}">
                        <%--    <input type="hidden" name="odsize"> 셀렉트에서--%>
                        <%--    <input type="hidden" name="odqty" > 셀렉트에서--%>
                        
                        
                           <!-- 장바구니 -->
                           <br> <input type="button" value="장바구니" onclick="cartIn()" style="font-family: 'Jua', sans-serif">
                           <!-- 바로구매 -->
                           <input type="button" value="구매하기" onclick="buyNow()" style="font-family: 'Jua', sans-serif">
                           
                        </form>
                        
                        
                        <br> <a href="location.href='productDetail.do?pg=${dto.getPid()}'">상품목록</a>
                     </td>
                  </tr>
               </table>
            </div>
         </section>

         <%-- end section --%>
            <c:import url="footer.jsp" />