# :athletic_shoe: Oopshoes

> 온라인 신발 쇼핑몰 팀프로젝트



## 1. 제작 기간 & 참여인원

- 2020.12.04 - 2020.12.24
- 팀 프로젝트 : 박진혁, 이동수, 장서정, 이한솔



## 2. 사용 기술

<strong>Back-end</strong>

- Java
- Eclipse Mar
- JavaScript
- JQuery
- JSP
- mybatis

- Oracle11g
- ApacheTomcat 9.0

<strong>Front-end</strong>

- HTML5
- CSS3



## 3. ERD 설계

<img src='http://drive.google.com/uc?export=view&id=1_cYbeDypntLJSip2a8Y1kXnZ9ff8vJ2q' /><br>



## 4. 핵심 기능

팀프로젝트에서 맡은 파트 : 장바구니 담기 및 비우기, 결제

담당 파트에서의 핵심 기능은 장바구니 담기와 결제입니다. 사용자가 상품을 장바구니에 담거나 비우고, 주문자 정보를 작성하고, 아임포트 API를 통해 결제를 완료합니다.



### 4.1. 전체 흐름 UI

<img src='http://drive.google.com/uc?export=view&id=1Pud360Tn6N5-0uZdpg5lsezt_dsU6qyb' />

- 사용자가 ADD TO CART를 누르면 해당 유저 id의 CART 테이블에 저장됩니다
- 전체 삭제의 경우는 유저id에 해당하는 row 전체를 delete, 상품 하나를 삭제할 경우는 CART에서 해당 row 하나만 delete합니다.

<br>

<img src='http://drive.google.com/uc?export=view&id=1BttgctJotg4pUz_SOfpI6Hmm7k10nF5a' /><br>

- 주문정보 작성시의 배송지 정보는 다음 우편번호 API를 사용합니다.
- 결제 완료 이후에 ORDERS, ORDERS_DETAIL 테이블에 데이터가 추가되고, 해당 유저의 CART가 Delete 됩니다.



## 5. 트러블 슈팅



## 6. 회고/ 느낀 점

