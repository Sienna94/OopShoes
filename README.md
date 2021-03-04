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

5.1. 주문 테이블(ORDER)과 주문상세 테이블(ORDERS_DETAIL) 분리  

> **데이터 중복을 최소화하기 위해 주문 테이블과 주문 상세 테이블을 분리했으나 동시에 데이터를 넣는 방법을 찾지 못함. **
>
> - 하나의 jsp 파일에서 두개의 요청을 보낼 수 있는 방법 찾기에 매몰 됐기 때문.
>
> - Mapper에서 두개의 쿼리를 한번에 날릴 수 있는지만 고민함.
>
> **하나의 서비스에서  두개의 DAO method에 request하도록 바꿈. :pushpin: [코드 확인](https://github.com/Sienna94/OopShoes/blob/afe82b0164205ba2f316a466096b502f513d53c3/src/com/pay/service/PayInputService.java#L58)**
>
> - 제대로 이해하지 못한 상태에서 코드를 짜다보니 발생한 문제.
> - <strong>다중 테이블에 다중 행 입력</strong>이라고 검색할 수 있었으면 더 빠르게 해결했을 것.



5.2. 실제 결제 가능한 api 찾기

> **실제 결제 가능한 API, 특히 카카오결제 API를 활용할 방법을 찾지 못함.**
>
> - kakao  developers에 제시된 방법은 카카오페이 제휴신청만 설명되어 있었음. 간단한 테스트에는 맞지 않다고 생각
> - 그러나 쇼핑몰에서 가장 중요한 부분이 결제라고 생각했음... ~~집착의 시작.~~
>
> **구글링시 검색어를 카카오 결제 API에서 결제 API로 바꿈**
>
> * 다양한 제휴사의 결제 서비스를 제공하는 아임포트 API를 찾음. :pushpin: [코드 확인](https://github.com/Sienna94/OopShoes/blob/fa1b8bbe28a7bc7321227b5f0811249a081aa88a/WebContent/pay/payment.jsp#L64)
>   - 당시에는 실제 결제를 가능하게 한다는 이유 하나만으로 행복했다. **그러나** 지금 생각해보니 javascript를 조금이라도 이해하고 있었으면  혼자서 스크립트를 짰어야 했다. ~~팀플이라 시간에 쫓겼다는 건 이유가 아니겠지~~ kakao가 불친절했던 게 아니라 내가 무지해서였다. 다음에 결제 기능을 만든다고 하면 꼭 스스로 만들어 봐야겠다. :memo: [참고링크](https://dongsik93.github.io/til/2019/10/20/til-django-kakaopay/)



## 6. 회고/ 느낀 점

첫프로젝트를 팀플로 시작했고, 팀원들에게 짐이 되지 않겠다는 생각에 더 우왕좌왕했고, 강의를 듣고 코드를 몇줄 치는 것과 처음부터 끝까지 혼자 만드는 것의 엄청난 차이를 실감했다. 각자의 파트를 프론트, 백 모두 A to Z까지 만드는 과정이 크게 도움이 되었다. ~~그리고 프론트가 생각지도 못한 복병이었는데, div 태그가 그렇게 심오한 아이인지 몰랐다.~~ 프리라이더 없이 모든 팀원이 열심히 해주어서 즐겁게 프로젝트를 마무리 할 수 있었지만 다소 아쉬웠던 점들이 있었다.



6.1. 일관되지 못한 데이터 설계, 클래스 이름, 폴더 등

> 팀원들과도 나눈 얘기지만, **공통된 하나의 설계도**가 없는 채로 만들다보니, 작게는 변수명부터 폴더명, 크게는 테이블 구조까지 중구남방이라는 느낌을 받았다. 프로젝트 초반, 팀원 한명이 대략의 테이블 구조를 만들었다. (그리고 잘만들어주어서 크게 그곳에서 벗어나지 않았다) 그러나 프로젝트 기간이 워낙 짧았기 때문에 청사진을 진득하게 그릴 수 없었고, 계획과는 다르게 계속해서 생각도 못한 기능과 데이터를 추가하는 경우가 생겼다. 



6.2. 미숙했던 깃허브 사용

> 이클립스에서 깃허브로 커밋하는 과정에서 내가 내 커밋을 authorize하는 어이없는 실수를 범했다. ~~그래서 Sienna94(나)가 아닌 jsj94가 contributor에 올라가 있다~~ 깃헙 사용에 서툴었고, 혹시 내가 commit을 잘못해서 모두의 노력을 헛수고로 만들면 어떡하나 하는 걱정에 함부로 커밋도 못 눌렀다. 그리고 하나의 master에 모두가 커밋하고, git-flow를 제대로 이해하지 못했던 것이 아쉽다.


6.3. JavaScript

> JavaScript  자체에 대한 이해가 zero였던 상태에서 시작했고, 외부 API에 대한 이해도도 너무나 낮아서 베끼고 테스트하고 다시 고쳐보고 테스트하기 바빴다. 페이지를 이동하지 않고 처리할 수 있는 부분이 굉장히 많았는데 그러지 못한 부분이 많이 아쉽다.

