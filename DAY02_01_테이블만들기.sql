/*
    테이블(table)
    1. 데이터베이스에서 데이터를 저장하는 객체이다.
    2. 표 형식을 가진다.
    3. 행(row)과 열(column)의 집합 형태이다.
*/

/*
    데이터 타입
    1. NUMBER(p,s) : 정밀도p, 스케일s로 표현하는 숫자 형식
        1) 정밀도 p -전체 유효 숫자(의미있는숫자)의 갯수  ex) 1,01,001의 정밀도 = 1, ex) 0.99 는 정밀도 2
        2) 스케일 s  - 소수부(소수점)의 유효 숫자의 갯수   ex) 0.1 0.01 0.10의 스케일 = 스케일 1, 2, 1 (1이면 소수 한자리 3이면 소수 3자리) 
    2. CHAR(size) : 고정 문자(character)
        1) 글자 수가 고정된 타입(예시 : 핸드폰번호, 주민번호 등)
        2) size : 2000 byte (1byte 영어,숫자,한글자 저장할 수 있음)
    3. VARCHAR2(size) : 가변 문자
        1) 글자 수가 고정되지 않은 타입(예시 : 이름, 이메일, 주소 등)
        2) size : 최대 4000 byte
    4. CLOB : 큰 텍스트 타입
    5. DATE : 날짜와 시간을 동시에 표현하는 타입(년, 월, 일, 시, 분, 초,)
    6. TIMESTAMP : 날짜와 시간을 동시에 표현하는 타입 (년, 월, 일, 시, 분, 초,) 마이크로초
*/
/*
    제약조건 5가지
    1. NOT NULL : 필수
    2. UNIQUE : 중복 불가
    3. PRIMARY KEY : 기본키
    4. FOREIGN KEY : 외래키
    5. CHECK         : 값의 제한
    
*/

DROP TABLE CUSTOMER_A;
CREATE TABLE CUSTOMER_A (
    NO      NUMBER NOT NULL PRIMARY KEY,
    ID       VARCHAR2(32 BYTE) NOT NULL UNIQUE,
    NAME  VARCHAR2(32 BYTE) NOT NULL,
    JOB     VARCHAR2(32 BYTE) NULL,
    PHONE CHAR(13 BYTE) NULL UNIQUE,
    JUBUN CHAR(14 BYTE) NULL UNIQUE
);
    
    
    
    