-------------------------------------------------------------------------------
//PLACE TABLE 

-- 테이블 삭제
DROP TABLE PLACE;

-- 테이블 생성
CREATE TABLE PLACE(
    PLACE_NO NUMBER(6) NOT NULL,
    CATEGORY VARCHAR2(10) NOT NULL,
    AREA_NO NUMBER(2) NOT NULL,
    PLACE_NAME VARCHAR2(100) NOT NULL,
    PL_ADDRESS VARCHAR2(4000) NOT NULL,
    PL_PHONE VARCHAR2(30) NOT NULL,
    PL_WEBSITE VARCHAR2(50) NOT NULL,
    GEN_RESERVATION NUMBER(6) DEFAULT 0 NOT NULL,
    RECO_RESERVATION NUMBER(6) DEFAULT 0 NOT NULL,
    PLACE_IMG_PATH VARCHAR2(3000) DEFAULT ''
);

-- 제약사항 수정
ALTER TABLE PLACE
ADD CONSTRAINT PLACE_NO_PK PRIMARY KEY(PLACE_NO);

ALTER TABLE PLACE
ADD CONSTRAINT PL_WEBSITE_UK UNIQUE(PL_WEBSITE);

ALTER TABLE PLACE
ADD CONSTRAINT AREA_NO_FK FOREIGN KEY(AREA_NO) REFERENCES AREA (AREA_NO);

-- 시퀀스 삭제
DROP SEQUENCE PLACE_NO_SEQ;

-- 시퀀스 생성
CREATE SEQUENCE PLACE_NO_SEQ
INCREMENT BY 1
START WITH 1;

-- 데이터 삽입
--\\경기도-----------------------------------------------------------------------------------------------------------------------------------------------
--카페
INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 1, '테누커피', '서울 마포구 연남동 241-89', '050713657553', 'http://instagram.com/tenucoffee' , 0, 0, 'tenucoffee.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 1, '우나나베이크하우스', '경기 고양시 일산서구 호수로838번길 34-17 1층', '050713399338', 'https://www.instagram.com/oohnana_bakehouse' , 0, 0, 'oohnana_bakehouse.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 1, '오모나', '경기 연천군 청산면 청창로 469 오모나', '050714497529', 'https://www.instagram.com/omona_cafe' , 0, 0, 'omona_cafe.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 1, '런어웨이', '서울 서대문구 홍제내4길 4-11 1층', '050713435786', 'https://www.instagram.com/runaway.seoul' , 0, 0, 'runaway.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 1, '플랫하우스', '경기 연천군 청산면 아우라지길 57-24', '0318322171', 'http://www.flathouse.kr/sub04/sub04_2' , 0, 0, 'flathouse.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 1, '포레스트그린', '경기 이천시 호법면 중부대로 935 포레스트그린', '01039100196', 'http://4restgreen.com' , 0, 0, '4restgreen.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 1, '카페 플럼 용문', '경기 양평군 용문면 용문로 316-1', '050713289095', 'https://blog.naver.com/dabin05172' , 0, 0, 'dabin05172.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 1, '온유여월', '경기 수원시 팔달구 장안동 28-10', '050713313850', 'https://www.instagram.com/cafe_onu_yeowol/' , 0, 0, 'cafe_onu_yeowol.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 1, '카페아우라이', '경기 안성시 태평무길 47 카페아우라이', '050713480166', 'https://www.facebook.com/aulaitcafe2019/' , 0, 0, 'aulaitcafe2019.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 1, '카페 더킹', '경기 고양시 일산서구 한류월드로 300 원마운트 1층 1249호 카페 더킹', '0319616662', 'http://www.instagram.com/cafe_theking' , 0, 0, 'cafe_theking.jpg');

--식당

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 1, 'HIDE 방배', '서울 서초구 방배중앙로 164', '07042421807', 'https://www.instagram.com/hideseoul_official' , 0, 0, 'hideseoul_official.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 1, '블루페이지', '서울 서초구 잠원동 121-9', '025347789', 'https://www.instagram.com/bluepagelounge' , 0, 0, 'bluepagelounge.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 1, '하다식당', '서울 강동구 풍성로 105 1층', '050714173555', 'http://instagram.com/hada_sikdang' , 0, 0, 'hada_sikdang.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 1, '용문산 촌두부', '경기 양평군 용문면 신점리 369-63', '01052539331', 'http://cafe.daum.net/ymschondubu' , 0, 0, 'ymschondubu.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 1, '리얼펍 장호원점', '경기 이천시 장호원읍 장감로65번길 39 리얼펍 장호원점', '0316439999', 'http://realpub.co.kr/' , 0, 0, 'realpub.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 1, '파머스그라운드', '경기 용인시 처인구 양지면 양지로 242 186- 2 갈비명가 소들녘', '0313223924', 'https://catchtable.co.kr/ct/shop/farm_ersground' , 0, 0, 'farm_ersground.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 1, '숲속정원', '경기 여주시 강천면 부평로 800', '0318813838', 'http://instagram.com/forestgarden_yeoju' , 0, 0, 'forestgarden_yeoju.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 1, '박석농장||ch(38)||일품양평해장국', '경기 파주시 파평면 청송로 82 박석농장||ch(38)||일품양평해장국 파주파평점', '0319586758', 'http://instagram.com/okyoung503' , 0, 0, 'okyoung503.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 1, '하동농원', '경기 김포시 하성면 봉성리 643-20', '0319832755', 'https://blog.naver.com/yeon_bob' , 0, 0, 'yeon_bob.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 1, '김영민 일품장어', '경기 광주시 초월읍 지월로16번길 51 1층', '0317970722', 'https://eelheaven.modoo.at' , 0, 0, 'yeon_bob.jpg');

--펜션
INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 1, '가온신촌호스텔', '서울 마포구 백범로4길 14', '0263798801', 'https://blog.naver.com/hotelmkorea' , 0, 0, 'hotelmkorea.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 1, '호텔 카푸치노', '서울 강남구 봉은사로 155 호텔 카푸치노', '050714419500', 'https://hotelcappuccino.co.kr/' , 0, 0, 'hotelcappuccino.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 1, '프로방스하우스', '경기 파주시 운정4길 150 프로방스하우스', '050713503884', 'http://site.onda.me/135450' , 0, 0, 'provencehouse.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 1, '솔발펜션', '경기 양주시 장흥면 유원지로 37', '0318553497', 'http://solpension.modoo.at/' , 0, 0, 'solpension.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 1, '모란재', '경기 광주시 퇴촌면 원당길 120-44 1층', '01054976359', 'https://www.instagram.com/moranjae_pension/' , 0, 0, 'moranjae_pension.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 1, '게스트하우스 버스', '경기 고양시 일산서구 대산로 161 504동 1201호', '01092292615', 'https://youtube.com/sleepbus22' , 0, 0, 'sleepbus22.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 1, '아임버디', '경기 파주시 탄현면 필승로 487-32', '050714344102', 'http://imbuddypaju.modoo.at' , 0, 0, 'imbuddypaju.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 1, '푸른솔텐션', '경기 광주시 퇴촌면 원당길 120-44 1층', '050714052331', 'https://purunsolps.modoo.at/' , 0, 0, 'purunsolps.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 1, '꿈꾸는숲', '경기 포천시 소흘읍 죽엽산로 490', '050714211173', 'https://dreamyforest.modoo.at/' , 0, 0, 'dreamyforest.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 1, '펜션숲', '경기 양평군 단월면 통골길 83 펜션숲', '050713582941', 'https://pssoop.modoo.at' , 0, 0, 'pssoop.jpg');

--//강원도--------------------------------------------------------------------------------------------------------------------------------------------------
--카페
INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 2, '슬로우 26', '강원 평창군 봉평면 메밀꽃길 26 슬로우26', '050714903314', 'https://www.instagram.com/slow_at_26' , 0, 0, 'slow_at_26.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 2, '카페 이루아', '강원 평창군 봉평면 태기로 303', '01089533616', 'https://blog.naver.com/g10005' , 0, 0, 'g10005.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 2, '위켄드74', '강원 홍천군 남면 남노일로 1123 1층 위켄드74', '050713763024', 'https://www.instagram.com/weekend74_cafe/' , 0, 0, 'weekend74_cafe.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 2, '무궁화', '강원 홍천군 홍천읍 오룡로 76-12 무궁화카페', '050714907596', 'https://www.instagram.com/cafe.moogung/' , 0, 0, 'cafe.moogung.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 2, '파미르', '강원 춘천시 동면 순환대로 1154-144 파미르 카페', '0332540800', 'https://www.instagram.com/cafe_pamir/' , 0, 0, 'cafe_pamir.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 2, 'A3CAFE', '강원 양양군 현북면 하륜길 46 1층 a3coffee', '050713434646', 'https://www.instagram.com/a3cafe_yangyang/' , 0, 0, 'a3cafe_yangyang.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 2, '오베르망', '강원 속초시 장사항해안길 7', '0336380304', 'https://www.instagram.com/oberman_bakery/' , 0, 0, 'oberman_bakery.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 2, '앙빵', '강원 강릉시 창해로 307', '050713908579', 'https://new.stjohns.co.kr/' , 0, 0, 'stjohns.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 2, '카페성지 묵호점', '강원 동해시 해안로 509 2층', '050713908579', 'https://www.instagram.com/cafeseongji_donghae/' , 0, 0, 'cafeseongji_donghae.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 2, '카페공간', '강원 철원군 갈말읍 직탕길 26 카페공간', '050713413489', 'https://www.instagram.com/_cafe_gonggan_/' , 0, 0, '_cafe_gonggan.jpg');

--식당
INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 2, '풀내음', '강원 평창군 봉평면 메밀꽃길 13', '0333350034', 'https://www.instagram.com/pulnaeum2001' , 0, 0, 'pulnaeum.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 2, '돼지오리 무한리필 참숯불구이', '강원 평창군 봉평면 기풍로 121-10', '050714005292', 'https://blog.naver.com/ehflcjs84' , 0, 0, 'ehflcjs84.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 2, '명가춘천닭갈비막국수', '강원 평창군 봉평면 기풍로 121-10', '0334363100', 'https://www.instagram.com/myung_ga_._dak/' , 0, 0, 'myung_ga_._dak.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 2, '맛있는모곡계곡가든펜션', '강원 홍천군 서면 한서로 934 맛있는 모곡계곡 가든 펜션', '050713614049', 'https://blog.naver.com/mokokg' , 0, 0, 'mokokg.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 2, '제이바베큐', '강원 춘천시 우두길 71-52 1층', '050714317811', 'https://www.instagram.com/j_bbq2022/' , 0, 0, 'j_bbq.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 2, '싱글핀 에일웍스', '강원 양양군 현북면 하조대2길 48-42', '050714651175', 'https://www.singlefin-aleworks.com/' , 0, 0, 'singlefin-aleworks.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 2, '바닷가락', '강원 속초시 중앙로 348 바닷가락', '050713547469', 'https://www.instagram.com/badatgarak/' , 0, 0, 'badatgarak.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 2, '경포대불타는횟집', '강원 강릉시 창해로 451', '050714143361', 'https://bultabulata.modoo.at/' , 0, 0, 'bultabulata.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 2, '옥상조개구이||ch(38)||홍게무한리필', '강원 동해시 일출로 88 3층', '050714339282', 'https://www.instagram.com/mukho_oksang/' , 0, 0, 'mukho_oksang.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 2, '견우와직녀', '강원 철원군 갈말읍 태봉로 1379', '050713050096', 'http://geunwoo.co.kr/' , 0, 0, 'geunwoo.jpg');

--펜션
INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 2, '힐링하시개', '강원 평창군 봉평면 안흥동길 132-7 힐링하시개', '01094802327', 'http://xn--h49at2x25g1itdrc.kr' , 0, 0, 'healinghasigea.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 2, '코코애견펜션', '강원 홍천군 북방면 노일로238번길 72-10 코코애견펜션', '07043649508', 'http://www.cocodogpension.co.kr/' , 0, 0, 'cocodogpension.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 2, '댕숲 애견펜션', '강원 평창군 봉평면 석이바우길 92-34 댕숲 애견펜션', '050713387827', 'http://daengforest.kr/' , 0, 0, 'daengforest.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 2, '홍천 라임오렌지', '강원 홍천군 북방면 구룡밭길 40', '07043649508', 'https://limeorangeps.com/' , 0, 0, 'limeorangeps.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 2, '비안단테 펜션 춘천', '강원 춘천시 서면 금산2길 22-4 비안단테 펜션 춘천', '050713864314', 'http://www.viandante.co.kr/' , 0, 0, 'viandante.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 2, '아쇼카펜션', '강원 양양군 손양면 선사유적로 316-104', '01083226495', 'http://www.asoka.kr/' , 0, 0, 'asoka.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 2, '월드 애견동반펜션', '강원 속초시 새마을13길 16', '07043766425', 'https://xn--hy1bu0vrew1s30i0ik.com/' , 0, 0, 'worldpension.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 2, '경포코지펜션', '강원도 강릉시 난설헌로 219번길 22', '050714977753', 'http://www.cozypension.co.kr/' , 0, 0, 'cozypension.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 2, '동해 하루 오션뷰펜션', '강원 동해시 일출로 277-8', '07043649542', 'https://harupension.net/' , 0, 0, 'harupension.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 2, '프로방스펜션', '강원 철원군 갈말읍 순담길 299', '01041863113', 'https://blog.naver.com/prvc3113' , 0, 0, 'provence.jpg');

--\\충청도-----------------------------------------------------------------------------------------------------------------------------------------------
--카페
INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 3, '썬하우스', '대전 서구 탄방로 29 1층', '050713130757', 'http://www.instargram.com/ssunhouse_sh/' , 0, 0, 'ssunhouse.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 3, '리리스카페', '충남 보령시 성주면 개화리 177-2', '07041332845', 'http://www.ririss.com/' , 0, 0, 'ririss.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 3, '노이도밍고', '대전 유성구 은구비남로7번길 29 1층 노이도밍고', '050714681986', 'https://www.instagram.com/noidomingo' , 0, 0, 'noidomingo.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 3, '미광다방 로스터리카페', '충남 당진시 백암로 18 101~103호', '050713340616', 'http://instagram.com/mg_dabang' , 0, 0, 'mg_dabang.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 3, '위드솔', '충남 천안시 동남구 성남면 대정리 169', '050714191600', 'https://blog.naver.com/cafe_withsol' , 0, 0, 'cafe_withsol.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 3, '데이원', '충남 서산시 예천4로 48-12 1층 데이원', '050713966691', 'https://www.instagram.com/day1.cafe' , 0, 0, 'day1.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 3, '카페더뷰', '충북 청주시 상당구 성내로124번길 26', '01054590116', 'https://www.instagram.com/cj_cafe_theview' , 0, 0, 'cj_cafe_theview.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 3, '점선 에스프레소바', '충북 청주시 흥덕구 강서동 546', '050713529367', 'https://www.instagram.com/dotlineespressobar' , 0, 0, 'dotlineespressobar.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 3, '충주댐198510', '충북 충주시 충주호수로 586', '050714561985', 'https://www.instagram.com/chungjudam198510/' , 0, 0, 'chungjudam198510.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 3, '카페 소소', '충북 영동군 영동읍 동정리 94-2', '0437450026', 'https://www.instagram.com/cafe.soso_' , 0, 0, 'soso.jpg');

--식당
INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 3, '성주', '대전 서구 문정로112번안길 55 1층 101호', '050713470156', 'https://www.instagram.com/sungzou.bottle.shop' , 0, 0, 'sungzou_bottle_shop.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 3, 'LITTLE TAP', '대전 유성구 노은로 150 드래곤랜드', '0428252280', 'http://www.facebook.com/littletapbeer' , 0, 0, 'littletapbeer.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 3, '황금마차', '충남 서산시 대산읍 독곶리 산230-2', '0416816055', 'http://황금마차.gajagaja.co.kr' , 0, 0, 'goldcarriage.png');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 3, '두레', '충남 서산시 예천7로 50-2 1층(예천동) cu편의점 옆', '050714610826', 'https://www.instagram.com/seosan_doore' , 0, 0, 'seosan_doore.png');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 3, '그린메이트', '충남 부여군 부여읍 사비로54번길 18 그린메이트', '0414087811', 'https://www.instagram.com/buyeo_greenmate' , 0, 0, 'buyeo_greenmate.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 3, '임꺽정', '충남 청양군 정산면 효자길 19-1', '0419431457', 'https://imkkukjeong.modoo.at/' , 0, 0, 'imkkukjeong.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 3, '오미주', '충북 청주시 청원구 우암동 303-37', '050713026418', 'http://instagram.com/ohmiju.official' , 0, 0, 'ohmiju_official.png');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 3, '슬릭', '충북 청주시 상당구 우암산로 31 1층', '050713308976', 'https://app.catchtable.co.kr/ct/shop/thebarsleek' , 0, 0, 'thebarsleek.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 3, '무드인소울', '충북 충주시 충주호수로 634', '0437450026', 'http://www.instagram.com/_moodinsoul' , 0, 0, '_moodinsoul.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 3, '치킨이 좋은사람', '충북 충주시 용정7길 2 1층 좋은사람', '050713786271', 'http://m.smartstore.naver.com/' , 0, 0, 'chickenlove.png');

--펜션
INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 3, '바다이야기 펜션', '충남 태안군 안면읍 흑석동길 38 바다이야기펜션', '050713934414', 'http://바다이야기.kr/' , 0, 0, 'seastory.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 3, '안스테이펜션', '충남 금산군 부리면 적벽강로 332-11 안스테이 펜션', '050713536135', 'https://www.instagram.com/ann_stay_pension/' , 0, 0, 'ann_stay_pension.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 3, '메르벨르리조트', '충남 태안군 남면 몽산포길 41-9 11, 13. 15', '050713707307', 'http://merbelle.com' , 0, 0, 'merbelle.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 3, '콩밭매는 댕댕이 펜션', '충남 청양군 대치면 까치내로 1067-81 콩밭매는 댕댕이 펜션', '01090483274', 'http://farmingpuppies.com' , 0, 0, 'farmingpuppies.png');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 3, '서동선화한옥', '충남 부여군 부여읍 월함로 105-1 서동 선화 한옥', '01096460182', 'https://blog.naver.com/kyple22' , 0, 0, 'kyple22.png');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 3, '진흥채', '충남 공주시 장대3길 5 봉황동', '01086424458', 'https://www.instagram.com/dehelove2002' , 0, 0, 'dehelove2002.png');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 3, '참조은펜션', '충북 제천시 한수면 미륵송계로 1652 참조은펜션', '050714063621', 'http://www.참조은펜션.com/' , 0, 0, 'chamjoeunpension.png');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 3, '환타파인펜션', '충북 옥천군 군북면 비야대정로 596-78', '050714247020', 'https://blog.naver.com/sotae1' , 0, 0, 'sotae1.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 3, '빌라독애견펜션', '충북 단양군 어상천면 어상천로 630', '050714352119', 'http://www.villadog.co.kr' , 0, 0, 'villadog.png');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 3, '피앤피펜션', '충북 단양군 적성면 상학1길 168 피앤피펜션', '0434225327', 'https://blog.naver.com/herb7khll' , 0, 0, 'herb7khllg.png');

--\\전라도-----------------------------------------------------------------------------------------------------------------------------------------------
--카페
INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 4, '피읖카페', '전남 여수시 돌산읍 돌산로 3292-6 피읖카페', '0616433292', 'https://www.instagram.com/pieup_cafe' , 0, 0, 'pieup_cafe.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 4, '콜리스', '전남 진도군 군내면 정거름재길 70-15', '0615440207', 'https://www.instagram.com/collis_0615440207' , 0, 0, 'collis_0615440207.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 4, '카페 여수커피', '전남 여수시 소호2길 6-5 1층 카페 여수커피', '01091835572', 'https://smartstore.naver.com/yeosucoffee' , 0, 0, 'yeosucoffe.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 4, '만대재', '전남 순천시 순천만길 530 만대재', '050713521573', 'https://blog.naver.com/mandaejae' , 0, 0, 'mandaejae.png');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 4, '카페닻', '전남 목포시 해양대학로139번길 23 카페닻', '050713082265', 'https://www.instagram.com/cafedot_mokpo' , 0, 0, 'cafedot_mokpo.png');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 4, '곰소리11', '전북 부안군 진서면 청자로 884 카페 곰소리11', '050713402654', 'https://gomsori11.modoo.at' , 0, 0, 'gomsori11.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 4, '연다원', '전북 고창군 아산면 복분자로 184-81 연다원', '050713644443', 'https://smartstore.naver.com/yeondawon' , 0, 0, 'yeondawon.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 4, '소울갤러리카페', '전북 완주군 동상면 수만길 5-6', '0632413466', 'http://blog.naver.com/artist300' , 0, 0, 'artist300.png');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 4, '캠브런치', '전북 무주군 설천면 구천동로 1262-17', '050714463883', 'https://blog.naver.com/kskksk0963' , 0, 0, 'kskksk0963.png');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 4, '갤러리 카페 예술 공간 결 전주아중리점', '전북 전주시 덕진구 인교9길 23 3층', '050713661398', 'https://blog.naver.com/300means' , 0, 0, '300means.png');

--식당
INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 4, '내소식당', '전북 부안군 진서면 내소사로 181 내소식당', '050713637281', 'http://instagram.com/naeso_sikdang' , 0, 0, 'naeso_sikdang.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 4, '여울목', '전북 완주군 소양면 오도길 131-1', '0632478193', 'https://blog.naver.com/gustnr3114' , 0, 0, 'gustnr3114.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 4, '황가네조개구이 여수 본점', '전남 여수시 돌산읍 강남로 44 1층 황가네조개구이 여수 본점', '050714889288', 'https://tjdgk7883.modoo.at' , 0, 0, 'tjdgk7883.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 4, '오동도', '전남 여수시 중앙동 250', '01048936576', 'http://instagram.com/34odongdo' , 0, 0, '34odongdo.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 4, '진도횟집 바다향', '전남 진도군 의신면 송군길 30-39', '050713618240', 'https://jindobadahyang.modoo.at/' , 0, 0, 'jindobadahyang.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 4, '달밤포차', '전남 목포시 해양대학로 77 1층', '050713648552', 'https://www.instagram.com/dalbam.pocha' , 0, 0, 'dalbam_pocha.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 4, '순천만전라도밥상', '전남 순천시 순천만길 496-1', '050714892112', 'https://junradofoodtable.modoo.at/' , 0, 0, 'junradofoodtable.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 4, '장어파는부부', '전북 고창군 아산면 인천강서길 417', '050714226801', 'http://www.instagram.com/hyunju8899' , 0, 0, 'hyunju8899.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 4, '전주진미식당', '전북 무주군 설천면 구천동1로 111', '050713633140', 'http://junju9000.com/' , 0, 0, 'junju9000.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 4, '랑랑이네', '전북 전주시 완산구 객원길 57-28', '01055744653', 'https://rangrangshouse.modoo.at/' , 0, 0, 'rangrangshouse.jpg');

--펜션
INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 4, '순천만 무한도전 애견동반펜션', '전남 순천시 순천만길 336', '07043649323', 'http://무한도전펜션.kr/' , 0, 0, 'mohandojean.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 4, '여수 슈가몽544', '전남 여수시 고소1길 57', '01022725879', 'https://yeosusugarmong544.co.kr' , 0, 0, 'yeosusugarmong544.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 4, '여수 도그펄슨 애견펜션', '전남 여수시 돌산읍 마상포길 39-2 여수 도그펄슨애견펜션', '01053250611', 'http://www.dogpulson.co.kr' , 0, 0, 'dogpulson.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 4, '골드마운틴하우스', '전남 진도군 고군면 원포길 226 골드마운틴하우스', '050714728992', 'https://gmountainhouse.modoo.at' , 0, 0, 'gmountainhouse.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 4, '오래뜰', '전남 목포시 북교길 27', '050714131137', 'https://blog.naver.com/ddungma' , 0, 0, 'ddungma.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 4, '변산프로방스애견펜션', '전북 부안군 변산면 변산로 3209-1 변산프로방스', '050714648085', 'http://www.bsprovence.com' , 0, 0, 'vsprovence.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 4, '고창29펜션', '전북 고창군 고창읍 제내신월길 29-13 고창29 펜션', '050713459695', 'https://blog.naver.com/dang229' , 0, 0, 'dang229.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 4, '델루나', '전북 완주군 소양면 송광수만로 169', '01026617134', 'http://www.delluna.kr' , 0, 0, 'delluna.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 4, '루마인펜션', '전북 무주군 설천면 원심곡1길 25', '050714151502', 'http://www.rumine.kr' , 0, 0, 'rumine.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 4, '랑랑||ch(38)||랑개', '전북 전주시 완산구 객원길 57-28', '050713314653', 'https://blog.naver.com/125ranggae' , 0, 0, '125ranggae.jpg');

--\\경상도-----------------------------------------------------------------------------------------------------------------------------------------------
--카페
INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 5, '별꽃자리', '대구 북구 동변로24길 64', '050713886326', 'https://www.instagram.com/star_zary/' , 0, 0, 'star_zary.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 5, '카페벼리', '울산 동구 물목길 20', '050713390826', 'https://www.instagram.com/cafe_byoly_official/' , 0, 0, 'cafe_byoly_official.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 5, '하이크커피 금정산성', '부산 금정구 산성로 530 하이크커피', '050713352957', 'https://www.instargram.com/hike_cafe' , 0, 0, 'hike_cafe.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 5, '리리파이', '부산 해운대구 달맞이길65번길 33 상가동 1층 105호 리리파이', '050713448343', 'https://smartstore.naver.com/riripie/' , 0, 0, 'riripie.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 5, '소리제이', '경남 창녕군 성산면 창한로 220', '0555328005', 'https://cafe.naver.com/' , 0, 0, 'soundj.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 5, '카페평사리', '경남 하동군 악양면 악양동로 176 마을공방 두니 내 갈색 컨테이너', '050713192712', 'https://www.instagram.com/cafepyongsari/' , 0, 0, 'cafepyongsari.jpg');

INSERT INTO PLACE  
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 5, '더리버163', '대구 수성구 파동로3길 112 1층 주차장,2층 주문||ch(38)||식사||ch(38)||음료 3층 음료||ch(38)||디져트', '050713465962', 'https://blog.naver.com/theriver163' , 0, 0, 'theriver163.jpg');

INSERT INTO PLACE 
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 5, '간절바당', '울산 울주군 서생면 신암해안길 11', '050713766163', 'http://www.instagram.com/ganjeolbadang' , 0, 0, 'ganjeolbadang.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 5, '신흥로512카페', '경북 포항시 북구 흥해읍 신흥로 512', '050714382040', 'https://www.instagram.com/a01086012040' , 0, 0, 'a01086012040.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 5, '명주정원', '경북 상주시 함창읍 새잼이길 7 카페 명주정원', '050713070243', 'https://blog.naver.com/mjgarden21' , 0, 0, 'mjgarden21.jpg');

--식당
INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 5, '살롱드인사', '경남 진주시 창렬로 12 살롱드인사', '050713907832', 'https://www.instargram.com/salon_de_insa/' , 0, 0, 'salon_de_insa.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 5, '묏골관광농원식당', '경남 함양군 병곡면 묘동길 105', '050713448143', 'http://www.mkck.kr' , 0, 0, 'mkck.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 5, '피그니소풍가는날', '부산 사상구 사상로148번길 11 1층', '050713695709', 'https://www.instagram.com/pigni_picnicday/' , 0, 0, 'pigni_picnicday.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 5, '다대336장작구이', '부산 사하구 다송로84번길 138', '01062342184', 'https://www.instagram.com/dadae336/' , 0, 0, 'dadae336.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 5, '오프트 대구', '대구 달서구 수밭길 43 1, 2층', '050713713993', 'https://www.instargram.com/oft__deagu' , 0, 0, 'oft_daegu.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 5, '미소꿉당', '대구 동구 효동로2길 57-11', '050714124951', 'https://www.instargram.com/mi_cow_ggupdang' , 0, 0, 'mi_cow_ggupdang.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 5, '해야', '울산 북구 동해안로 762 1층', '050713955049', 'https://www.instargram.com/heaya_pizza_/' , 0, 0, 'heaya_pizza.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 5, '요다 소공라이프', '울산 남구 봉월로67번길 62 1층, 2층, 3층', '050714102226', 'https://blog.naver.com/snolife/' , 0, 0, 'snolife.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 5, '그리고카페인', '경북 경주시 숲머리길 130-4', '0547720703', 'https://www.instargram.com/caffein_gj/' , 0, 0, 'caffein_gj.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 5, '자연속으로', '경북 김천시 자례면 지례로 219-21 자연속으로', '0544345566', 'https://www.instargram.com/stonevalley5566' , 0, 0, 'stonevalley5566.jpg');

--펜션
INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 5, '블루캐슬펜션', '경남 거제시 일운면 거제대로 1447', '050713622918', 'http://xn--l89a05uq3dv0ds1bw2g06u2vi.com/' , 0, 0, 'bluecastle.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 5, '팔공힐링펜션', '대구 군위군 부계면 한티로 1751', '01071246994', 'https://www.instagram.com/gout__cafe/' , 0, 0, 'jhealing.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 5, '쿠쿠숲펜션', '경남 밀양시 단장면 동화2길 36-16', '01050265587', 'http://kukusup.com/wp/' , 0, 0, 'kukusup.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 5, '드림하우스', '부산 기장군 기장읍 두호1길 2-1', '050350582545', 'http://부산드림하우스펜션.com/' , 0, 0, 'dreamhouse.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 5, '리벤시아', '부산 수영구 광안해변로 195 4~7F', '050714827885', 'http://광안리벤시아풀빌라.com' , 0, 0, 'liventia.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 5, '스테이 소화', '대구 남구 봉덕로9길 10 (봉덕동)', '01065563401', 'https://blog.naver.com/dobogy45' , 0, 0, 'dobogy45.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 5, '토마네 애견펜션', '울산 울주군 서생면 해맞이로 1271-36 토마네 펜션', '050714665055', 'https://www.instagram.com/tomane_pension' , 0, 0, 'tomane_pension.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 5, '클럽33풀빌라', '울산 울주군 상북면 삽재로 279-15', '050713908335', 'http://clubpool.infotown.kr/' , 0, 0, 'clubpool.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 5, '하늘아래첫동네 애견펜션', '경북 영덕군 영덕읍 매령길 363-36', '028997574', 'http://undersky.co.kr/' , 0, 0, 'undersky.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 5, '힐스카이', '경북 문경시 문경읍 관음길 456-10', '01077257426', 'http://xn--9t4b21gu7gq6j.com/' , 0, 0, 'healsky.jpg');

--\\제주도-----------------------------------------------------------------------------------------------------------------------------------------------
--카페
INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 6, '제이아일랜드', '제주 서귀포시 성산읍 환해장성로 69 제이아일랜드', '050714417077', 'https://www.instagram.com/j_islandcafe/' , 0, 0, 'j_islandcafe.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 6, '그초록', '제주 제주시 구좌읍 행원로7길 23-16 1층(바닷가앞)', '050713234244', 'https://www.instagram.com/the_green_cafe/' , 0, 0, 'the_green_cafe.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 6, '이드레', '제주 제주시 구좌읍 해맞이해안로 402 이드레', '050714160122', 'https://www.instagram.com/edre_jeju/' , 0, 0, 'edre_jeju.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 6, '다니쉬', '제주 제주시 조천읍 함덕16길 56 다니쉬', '050713331377', 'https://www.instagram.com/danish_jeju/' , 0, 0, 'danish_jeju.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 6, '어반정글', '제주 제주시 조천읍 일주동로 1611 1층', '01090675911', 'https://www.instagram.com/urbanjungle.jeju/' , 0, 0, 'urbanjungle.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 6, '라플라주', '제주 제주시 조천읍 조함해안로 525', '0647829959', 'https://laplage2020.modoo.at/' , 0, 0, 'laplage2020.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 6, '오른', '제주 서귀포시 성산읍 해맞이해안로 2714 orrrn', '050714011559', 'https://www.instagram.com/orrrn_official/' , 0, 0, 'orrrn_official.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 6, '보롬왓', '제주 서귀포시 표선면 번영로 2350-104', '07080155188', 'https://www.instagram.com/boromwat_/' , 0, 0, 'boromwat_.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 6, '덴드리', '제주 서귀포시 성산읍 삼달로 28-1 덴드리', '050714861178', 'https://www.instagram.com/cafe_dendri/' , 0, 0, 'cafe_dendri.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '카페', 6, '너븐', '제주 서귀포시 칠십리로214번길 26 너븐', '050714272412', 'https://www.instagram.com/nurven.jeju/' , 0, 0, 'nurven.jpg');

--식당
INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 6, '평대리 멍석', '제주 제주시 구좌읍 해맞이해안로 1308 평대리 멍석', '0647828983', 'https://www.instagram.com/pd_met/' , 0, 0, 'pd_met.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 6, '마씸', '제주 서귀포시 성산읍 환해장성로 129-1', '050713370768', 'https://www.instagram.com/massim___jeju/' , 0, 0, 'massim__jeju.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 6, '만월당', '제주 제주시 구좌읍 월정1길 56', '050713815911', 'https://www.instagram.com/manwoldanginjeju/' , 0, 0, 'manwoldanginjeju.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 6, '달이뜨는식당', '제주 제주시 구좌읍 월정1길 14 1층 달이뜨는식탁', '050713308538', 'https://dalsiktakjeju.modoo.at/' , 0, 0, 'dalsiktakjeju.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 6, '무기버거', '제주 제주시 조천읍 조함해안로 356 무거버거', '050713195076', 'https://www.instagram.com/mooger__burger/' , 0, 0, 'mooger__burger.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 6, '별돈별중문귤밭점', '제주 서귀포시 구산봉로 61', '050713090768', 'http://coconutz.kr/2932' , 0, 0, 'coconutz.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 6, '온평바다한그릇', '제주 서귀포시 성산읍 환해장성로 467', '050713004670', 'https://www.instagram.com/onpyung_sea1bowl/' , 0, 0, 'onpyung_sea1bowl.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 6, '호루의한끼', '제주 서귀포시 516로277번길 29 1층', '050714861178', 'https://www.instagram.com/jejuhoru/' , 0, 0, 'cafe_dendri.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '식당', 6, '국수의전설', '제주 서귀포시 효돈로 108', '050714272412', 'http://kugsu.kr' , 0, 0, 'nurven_jeju.jpg');

--펜션
INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 6, '돔그라미', '제주 서귀포시 표선면 가시로 137 돔그라미 펜션', '01021460271', 'https://www.jejudomgrami.com/' , 0, 0, 'jejudomgrami.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 6, '애견펜션하젠', '제주 서귀포시 표선면 토산중앙로 140', '050713055064', 'https://hazen.modoo.at/' , 0, 0, 'hazen.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 6, '제주코기네', '제주 제주시 조천읍 조함해안로 76-34 나동', '050714075211', 'https://blog.naver.com/jeju_corgi_house' , 0, 0, 'jeju_corgi_house.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 6, '골댕이하우스', '제주 제주시 애월읍 하소로 784-2 제9호동 901호', '050714747866', 'https://blog.naver.com/youwinss' , 0, 0, 'youwinss.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 6, '테라스힐 가족 독채펜션', '제주 제주시 아봉로 346', '050713273478', 'https://site.onda.me/134854' , 0, 0, 'terraceheal.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 6, '유어아일', '제주 제주시 애월읍 유수암평화길 134', '01032688286', 'https://www.instagram.com/your_isle' , 0, 0, 'your_isle.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 6, '더바움', '제주 제주시 애월읍 하소로 784-10 5호동 1층 502호', '01025172919', 'https://www.instagram.com/thebaum_jeju' , 0, 0, 'thebaum_jeju.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 6, '서귀포 온더스톤펜션', '제주 서귀포시 성산읍 해맞이해안로 2746 온더스톤펜션', '050713512128', 'https://blog.naver.com/rvex93/222913347719' , 0, 0, 'onthestone.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 6, '서귀포 늘바다 애견동반펜션', '제주 서귀포시 안덕면 대평로 38', '07043649474', 'https://www.oceanlogps.kr/' , 0, 0, 'oceanlogps.jpg');

INSERT INTO PLACE
(PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH)
VALUES (PLACE_NO_SEQ.NEXTVAL, '펜션', 6, '블란디야 펜션', '제주 서귀포시 법환로 15 203', '050713388845', 'http://050713388845.tshome.co.kr/' , 0, 0, 'blandiya.jpg');

-- GEN_RESERVATION 수정
UPDATE PLACE
SET GEN_RESERVATION = GEN_RESERVATION + 1
WHERE PLACE_NO = 1;

-- RECO_RESERVATION 수정

UPDATE PLACE
SET RECO_RESERVATION = RECO_RESERVATION + 1
WHERE PLACE_NO = 2;


-- 데이터 확인
SELECT PLACE_NO, CATEGORY, AREA_NO, PLACE_NAME, PL_ADDRESS, PL_PHONE, PL_WEBSITE, GEN_RESERVATION, RECO_RESERVATION, PLACE_IMG_PATH
FROM PLACE;

SELECT *
FROM PLACE;

-- 커밋
COMMIT;
-------------------------------------------------------------------------------