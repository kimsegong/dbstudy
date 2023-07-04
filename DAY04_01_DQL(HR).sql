--1. 사원테이블에서 FIRST_NAME, LAST_NAME 조회하기
SELECT E.FIRST_NAME AS 이름, E.LAST_NAME AS 성
  FROM EMPLOYEES E;
  
--2. 사원 테이블에서 DEPARTMENT_ID의 중복을 제거하고 조회하기
SELECT DISTINCT DEPARTMENT_ID 
           FROM EMPLOYEES;
           
--3. 사원 테이블에서 EMPLOYEE_ID가 150인 사원의 정보 조회하기
SELECT *
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = 150;
    
--4. 사원 테이블에서 연봉이 10000 이상인 사원의 정보 조회하기
SELECT *
    FROM EMPLOYEES
    WHERE SALARY >= 10000;


--5. 사원 테이블에서 연봉이 10000 이상 20000 이하인 사원의 정보 조회하기
SELECT *
    FROM EMPLOYEES
    WHERE SALARY >= 10000 AND SALARY <= 20000;
    
SELECT *
    FROM EMPLOYSEE
    WHERE SALARY BETWEEN 10000 AND 20000; --추천

--6. 사원 테이블에서 부서번호가 30, 40, 50인 사원의 정보 조회하기
SELECT *
    FROM  EMPLOYEES
    WHERE DEPARTMENT_ID IN(30, 40, 50);

--7. 사원 테이블에서 부서번호가 없는 사원의 정보 조회하기
SELECT *
    FROM EMPLOYEES
    WHERE DEPARTMENT_ID IS NULL;
    
--8. 사원 테이블에서 커미션을 받는 사원의 정보 조회하기
SELECT *
    FROM EMPLOYEES
    WHERE COMMISSION_PCT IS NOT NULL;
    
-- 9. 사원 테이블에서 전화번호가 515 로 시작하는 사원의 정보 조회하기
SELECT * 
    FROM EMPLOYEES
    WHERE PHONE_NUMBER LIKE '515' || '%'; --등호를 사용할 수 없다 = X
    
-- 10. 사원 테이블에서 전화번호가 515로 시작하는 전화번호를 조회하시오. 정확하게는 중복을 제거해서 조회하시오.
SELECT DISTINCT PHONE_NUMBER
    FROM EMPLOYEES
    WHERE PHONE_NUMBER LIKE '515' ||  '%';
    
-- 11. 사원 테이블의 사원들을 연봉순으로 조회하시오. 높은연봉을 먼저 조회하기.
SELECT *
  FROM EMPLOYEES
 ORDER BY SALARY; -- 기본정렬방식은 오름차순이다.
SELECT *
  FROM EMPLOYEES
 ORDER BY SALARY ASC; --ASC : ASCENDING(오름차순)
SELECT *
  FROM EMPLOYEES
 ORDER BY SALARY DESC; --DESC : DESCENDING(내림차순)

-- 12. 사원 테이블의 사원들을 입사 순서대로 조회하기 (먼저 입사한 사원을 먼저 조회)
SELECT *
  FROM EMPLOYEES
 ORDER BY HIRE_DATE;
 
-- 13. 사원 테이블의 사원들을 부서별로 비교할 수 있도록 같은 부서의 사원들을 모아서 조회한 뒤
-- 같은 부서내의 사원들은 연봉순으로 조회하기
-- 1차 정렬 기준 : 부서, 오름차순
-- 2차 정렬 기준 : 연봉, 내림차순
SELECT *
  FROM EMPLOYEES
 ORDER BY DEPARTMENT_ID, SALARY DESC;