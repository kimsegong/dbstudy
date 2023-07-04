-- 1. 다음 칼럼 정보를 이용하여 MEMBER_T 테이블을 생성하시오.
--    1) 회원번호: MEM_NO, NUMBER, 필수
--    2) 회원아이디: MEM_ID, VARCHAR2(30 BYTE), 필수, 중복 불가
--    3) 회원패스워드: MEM_PW, VARCHAR2(30 BYTE), 필수
--    4) 회원포인트: MEM_POINT, NUMBER
--    5) 회원구분: MEM_GUBUN, VARCHAR2(7 BYTE), 'REGULAR', 'SOCIAL' 값 중 하나를 가짐
--    6) 회원이메일: MEM_EMAIL, VARCHAR2(100 BYTE), 중복 불가
CREATE TABLE MEMBER_T(
    MEM_NO NUMBER NOT NULL,
    MEM_ID VARCHAR2(30 BYTE) NOT NULL UNIQUE,
    MEM_PW VARCHAR2(30 BYTE) NOT NULL,
    MEM_POINT NUMBER,
    MEM_GUBUN VARCHAR2(7 BYTE),
    MEM_EMAIL VARCHAR2(100 BYTE) UNIQUE,
    CONSTRAINT PK_NONO PRIMARY KEY(MEM_NO)
);

-- 2. MEMBER_T 테이블에 다음 새로운 칼럼을 추가하시오.
--    1) 회원주소: ADDRESS VARCHAR2(200 BYTE)
--    2) 회원가입일: JOINED_DT DATE
 ALTER TABLE MEMBER_T ADD ADDRESS VARCHAR2(200 BYTE);
 ALTER TABLE MEMBER_T ADD JOINED_DT DATE;

-- 3. 추가된 회원주소 칼럼을 다시 삭제하시오.
 ALTER TABLE MEMBER_T DROP COLUMN ADDRESS;   

-- 4. 회원등급 칼럼의 타입을 VARCHAR2(20 BYTE)으로 수정하시오.
 ALTER TABLE MEMBER_T MODIFY MEM_GUBUN VARCHAR2(20 BYTE); 

-- 5. 회원패스워드 칼럼의 이름을 MEM_PWD로 수정하시오.
 ALTER TABLE MEMBER_T RENAME COLUMN  MEM_PW TO MEM_PWD;

-- 6. 회원번호 칼럼에 기본키(PK_MEMBER)를 설정하시오.
 

-- 7. 다음 칼럼 정보를 이용하여 BOARD_T 테이블을 생성하시오.
--    1) 글번호: BOARD_NO, NUMBER, 필수
--    2) 글제목: TITLE, VARCHAR2(4000 BYTE), 필수
--    3) 글내용: CONTENT, CLOB, 필수
--    4) 조회수: HIT, VARCHAR2(1 BYTE)
--    5) 작성자: MEM_ID, VARCHAR2(30 BYTE), 필수
--    6) 작성일자: CREATED_DT, DATE
CREATE TABLE BOARD_T (
    BOARD_NO NUMBER NOT NULL,
    TITLE VARCHAR2(4000 BYTE) NOT NULL,
    CONTENT CLOB NOT NULL,
    HIT VARCHAR2(1 BYTE),
    MEM_ID VARCHAR2(30 BYTE) NOT NULL,
    CREATED_DT DATE,
    CONSTRAINT PK_BOARD_NO PRIMARY KEY(BOARE_NO)
);

-- 8. 조회수 칼럼의 타입을 NUMBER로 수정하시오.
    UPDATE BOARD_T
     SET VARCHAR2(1 BYTE) = NUMBER
     WHERE HIT = 4;

-- 9. 글내용 칼럼의 필수 제약조건을 제거하시오.
   DELETE 
   FROM BOARD_T 
   WHERE 

-- 10. 글번호 칼럼에 기본키(PK_BOARD)를 설정하시오.

-- 11. 작성자 칼럼에 MEMBER_T 테이블의 회원아이디를 참조하는 FK_MEMBER_BOARD 외래키를 설정하시오.
-- 게시글을 작성한 회원 정보가 삭제되면 해당 회원이 작성한 게시글도 모두 함께 지워지도록 처리하시오.

-- 12. MEMBER_T 테이블과 BOARD_T 테이블을 모두 삭제하시오.
