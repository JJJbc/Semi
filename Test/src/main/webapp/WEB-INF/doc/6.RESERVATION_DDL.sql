-------------------------------------------------------------------------------
//LOCATION TABLE 

-- 테이블 삭제
DROP TABLE RESERVATION;

-- 테이블 생성
CREATE TABLE RESERVATION(
    RESERVATION_NO NUMBER(6) NOT NULL,
    AREA_NO NUMBER(2) NOT NULL,
    PLACE_NO NUMBER(6) NOT NULL,
    RESERVATION_DATE DATE DEFAULT SYSDATE NOT NULL,
    VISIT_DATE DATE NOT NULL,
    USER_NO NUMBER(6) NOT NULL,
    VISITOR_NUM NUMBER(4) NOT NULL   
);

-- 제약사항 수정
ALTER TABLE RESERVATION
ADD CONSTRAINT RESERVATION_NO_PK PRIMARY KEY(RESERVATION_NO);

ALTER TABLE RESERVATION
ADD CONSTRAINT RESERVATION_AREA_NO_FK FOREIGN KEY(AREA_NO) REFERENCES AREA (AREA_NO);

ALTER TABLE RESERVATION
ADD CONSTRAINT PLACE_NO_FK FOREIGN KEY(PLACE_NO) REFERENCES PLACE (PLACE_NO);

ALTER TABLE RESERVATION
ADD CONSTRAINT USER_NO_FK FOREIGN KEY(USER_NO) REFERENCES USER_INFO (USER_NO);


-- 시퀀스 삭제
DROP SEQUENCE RESERVATION_NO_SEQ;

-- 시퀀스 생성
CREATE SEQUENCE RESERVATION_NO_SEQ
INCREMENT BY 1
START WITH 1;

-- 데이터 삽입
INSERT INTO RESERVATION
(RESERVATION_NO, AREA_NO, PLACE_NO, VISIT_DATE, USER_NO, VISITOR_NUM)
VALUES (RESERVATION_NO_SEQ.NEXTVAL, 1, 1, '2024-08-16' , 2, 5);

INSERT INTO RESERVATION
(RESERVATION_NO, AREA_NO, PLACE_NO, VISIT_DATE, USER_NO, VISITOR_NUM)
VALUES (RESERVATION_NO_SEQ.NEXTVAL, 2, 2, '2024-08-16' , 2, 5);



-- 테이블 구조 확인
DESC RESERVATION;

-- 데이터 확인
SELECT RESERVATION_NO, AREA_NO, PLACE_NO, RESERVATION_DATE, VISIT_DATE, USER_NO, VISITOR_NUM
FROM RESERVATION;


-- 커밋
COMMIT;
-------------------------------------------------------------------------------