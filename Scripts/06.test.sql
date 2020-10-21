select 1 from member where id='one';
select ID, PWD, NAME, EMAIL, ZIP_NUM, ADDRESS, PHONE, LEAVE_YN, JOIN_DATE 
  from member where id='one';
 
SELECT * FROM MEMBER;
SELECT count(*) FROM address;

select ZIP_NUM, SIDO, GUGUN, DONG, ZIP_CODE, BUNJI from address where dong like '%구암동%';

-- cart
insert into cart(memberid, pno, quantity) values('one', 1, 1);
select * from cart_view where id='one' order by cseq DESC;

SELECT c."NO" , c.MEMBERID , c.PNO , m.NAME , p.NAME, c.QUANTITY, c.REG_DATE, p.MARGIN , c.RESULT 
  FROM cart c JOIN MEMBER m ON c.MEMBERID = m.ID JOIN PRODUCT p ON c.PNO =p."NO" 
 WHERE result = '1';
 
-- ORDER
SELECT *
  FROM USER_SEQUENCES;

 SELECT ORDER_DETAIL_NO_SEQ.CURRVAL FROM dual;

select max(no) from orders;
SELECT * FROM ORDER_DETAIL;

-- 
SELECT * FROM cart;
SELECT * FROM product;
SELECT * FROM member;
--

SELECT * FROM ORDERs;
SELECT * FROM ORDER_DETAIL;
SELECT * FROM order_view;
SELECT * FROM cart;
SELECT DNO, ONO, MID, ORDER_DATE, PNO, QUANTITY, MNAME, ZIP_NUM, ADDRESS, PHONE, PNAME, SALEPRICE, RESULT
  FROM ORDER_VIEW WHERE MID = 'two' AND ono=(SELECT max(no) FROM ORDERS) AND RESULT = '1';
  
SELECT max(no) FROM ORDERS;
-- ORDER
insert into orders(id) values('two'); -- ono4

insert into order_detail(ono, pno, quantity) values((SELECT max(no) FROM ORDERS), 9, 3);
insert into order_detail(ono, pno, quantity) values((SELECT max(no) FROM ORDERS), 10, 3);
insert into order_detail(ono, pno, quantity) values((SELECT max(no) FROM ORDERS), 11, 3);

SELECT * FROM ORDER_VIEW where mid='two' and result='1' order by ono DESC;

select distinct ono from order_view 
where mid='two' and result='1' order by ono DESC;

SELECT ONO, MID, MNAME, PHONE, ZIP_NUM, ADDRESS, DNO, ORDER_DATE, RESULT,
       PNO, PNAME, QUANTITY, SALEPRICE 
  FROM ORDER_VIEW 
 WHERE MID='two' AND RESULT LIKE '%' ;
 

--QnA
SELECT NO, SUBJECT, CONTENT, REP, ID, REP_YN, WRITE_DATE FROM QNA;
update qna SET rep='답변내용', rep_yn='2';

SELECT NO, SUBJECT, CONTENT, REP, ID, REP_YN, WRITE_DATE FROM QNA WHERE ID='one' ORDER BY NO DESC;
SELECT NO, SUBJECT, CONTENT, REP, ID, REP_YN, WRITE_DATE FROM QNA WHERE NO=2;
INSERT INTO QNA (SUBJECT, CONTENT, ID) VALUES(?, ?, ?);

-- worker
SELECT * FROM worker;

SELECT 1 FROM worker WHERE id='admin' AND pwd='admin';
SELECT 1 FROM worker WHERE id='admin' AND pwd='1111';
SELECT 1 FROM worker WHERE id='aaaa' AND pwd='admin';
 
-- admin product
select * from product;
select count(*) from product;
select count(*) from product where name like '%%%';

SELECT NO, REG_DATE, NAME, PRICE, SALEPRICE , DEL_YN, BEST_YN 
  FROM PRODUCT 
 WHERE NAME LIKE '%%' ORDER BY NO DESC;

SELECT NO, REG_DATE, NAME, PRICE, SALEPRICE , DEL_YN, BEST_YN 
  FROM PRODUCT 
 WHERE NAME LIKE '%슬%' ORDER BY NO DESC;
 
INSERT INTO PRODUCT(NAME, KIND, PRICE, SALEPRICE, MARGIN, CONTENT, IMAGE) VALUES(?,?,?,?,?,?,?);
UPDATE PRODUCT SET KIND=?, DEL_YN=?, NAME=?, PRICE=?, SALEPRICE=?, MARGIN =?, CONTENT=?, IMAGE=?, BEST_YN=? WHERE NO=?

-- 주문관리
select * from order_view;

SELECT DNO, ONO, MID, ORDER_DATE, PNO, QUANTITY, MNAME, ZIP_NUM, ADDRESS, PHONE, PNAME, SALEPRICE, RESULT
  FROM ORDER_VIEW
where MNAME like '%김나리%' 
order by result, ONO DESC;

SELECT DNO, ONO, MID, ORDER_DATE, PNO, QUANTITY, MNAME, ZIP_NUM, ADDRESS, PHONE, PNAME, SALEPRICE, RESULT
  FROM ORDER_VIEW
order by result, ONO DESC, dno ;

SELECT * FROM ORDERS;

SELECT * FROM ORDER_DETAIL WHERE ono = 1;

UPDATE ORDER_DETAIL 
   SET RESULT_YN = '2'
 WHERE ONO = 1;
 

-- 관리자 회원관리
SELECT ID, PWD, NAME, EMAIL, ZIP_NUM, ADDRESS, PHONE, LEAVE_YN, JOIN_DATE FROM MEMBER WHERE NAME LIKE '%김%';

--관리자모드 QNA
SELECT NO, SUBJECT, CONTENT, REP, ID, REP_YN, WRITE_DATE FROM QNA ORDER BY WRITE_DATE DESC;
UPDATE QNA SET REP=?, REP_YN='2' WHERE NO=?;