select * from tab;
select * from product;
drop table product;

SELECT * FROM PRODUCT ORDER BY PID DESC

--상품 등록
CREATE TABLE PRODUCT(
    pID NUMBER(4) PRIMARY KEY, --상품아이디
    pNAME VARCHAR2(100), --상품이름
    pBRAND VARCHAR2(100), --브랜드
    --카테고리1
    pPRICE NUMBER(10), --가격
    pDISCOUNT NUMBER(4) DEFAULT 0, --할인율
    pSTOCK NUMBER(3), --재고
    pIMAGE1 VARCHAR2(4000), --이미지1
    pIMAGE2 VARCHAR2(4000), --이미지2
    pIMAGE3 VARCHAR2(4000), --이미지3
    pDETAIL CLOB, --상세설명
    pRDATE DATE DEFAULT SYSDATE, --등록일
    pSELL NUMBER(3) DEFAULT 0 --판매수량
);

create sequence seq_pid  nocache nocycle;

INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE) 
VALUES (seq_pid.nextval, '데이브레이크', '나이키', 119000, 99, '576351a3-e1bb-46ba-a263-60787c3d38de_primary.jpg', '3868b3a5-ac3a-44f3-8121-c16a1e4ef93c_4.jpg', 'fde915ce-9185-4bcf-97ed-9a95dc7386a4_2.jpg', '클래식 러닝화가 실루엣 전체에 레드와 블랙의 대담한 액센트로 모던함을 입었습니다. 절제된 그레이 소재는 텍스처를 더해주는 부드러운 스웨이드와 가죽 오버레이, 그리고 살짝 가미된 데이브레이크 오리지널 버전이 지닌 빈티지 감성과 조화를 이룹니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE) 
VALUES (seq_pid.nextval, '르브론18', '나이키', 239000, 89, '6209f5da-e0e7-4119-896b-a9b1619da951_primary.jpg', '53e5d102-1579-4d4e-9292-6e98531db849_4.jpg', '72ddf113-35e2-47e2-95d3-35fba75690d3_2.jpg', '르브론은 코트에서 질주하며 엄청난 힘을 발휘합니다. 르브론 18은 그의 능력을 십분 활용하면서 몸이 받는 스트레스 또한 줄일 수 있도록 디자인되었습니다. 발아래의 결합된 쿠셔닝이 그 누구도 막을 수 없는 그의 폭발적인 스피드에 힘을 실어 줍니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '에어조던1로우', '나이키', 119000, 79, 'aa8425a1-5604-4594-af44-ad1fe0b3af4c_primary.jpg', '671f77b1-b1ee-459f-811f-1b0c0c6c9806_4.jpg', 'c83d9f81-e8e8-47d5-9d9f-5308c77cc659_2.jpg', '1985년에 출시된 오리지널의 감성을 이어받은 에어 조던 1 로우는 친숙하면서도 참신한 느낌의 깔끔한 클래식 룩을 선보입니다. 아이코닉한 디자인을 더해 캐주얼 모드로 완성하여, 어디에나 잘 어울리고 스타일을 완성합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '에어조던9레트로', '나이키', 229000, 69, '815a1bea-33cf-425b-9f9d-5aa98605798e_primary.jpg', 'image2.jpg', 'c83d9f81-e8e8-47d5-9d9f-5308c77cc659_2.jpg', '1985년에 출시된 오리지널의 감성을 이어받은 에어 조던 1 로우는 친숙하면서도 참신한 느낌의 깔끔한 클래식 룩을 선보입니다. 아이코닉한 디자인을 더해 캐주얼 모드로 완성하여, 어디에나 잘 어울리고 스타일을 완성합니다.', SYSDATE);






INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (5, '에어', '뉴발란스', 75000, 23, 'image1.jpg', 'image2.jpg', 'image3.jpg', '5상세한설명입니다', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE) 
VALUES (6, '에어2', '휠라', 75000, 23, 'image1.jpg', 'image2.jpg', 'image3.jpg', '6상세한설명입니다', SYSDATE);



select * from PRODUCT ORDER BY pDETAIL DESC
