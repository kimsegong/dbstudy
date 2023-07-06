/*
    GROUP BY 절
    1. 같은 값을 가진 데이터들을 하나의 그룹으로 묶어서 처리한다.
    2. 통계를 내는 목적으로 사용한다. (합계, 평균, 최댓값, 최솟값, 갯수 등)
    3. SELECT 절에서 조회하려는 칼럼은 "반드시" GROUP BY 절에 명시되어 있어야 한다.)
*/

--1. 사원 테이블에서 동일한 부서번호를 가진 사원들을 그룹화하여 각 그룹별로 몇 명의  사원이 있는지 조회하시오.
SELECT DEPARTMENT_ID     --GROUP BY 절에서 지정한 칼럼만 조회할 수 있다.
     , COUNT (EMPLOYEE_ID)
  FROM EMPLOYEES
 GROUP BY DEPARTMENT_ID;
 
--2. 사원 테이블에서 같은 직업을 가진 사원들을 그룹화하여 각 그룹별로 연봉의 평균이 얼마인지 조회하시오.
SELECT JOB_ID
    , ROUND(AVG(SALARY),2)
  FROM EMPLOYEES
  GROUP BY JOB_ID;
  
--3. 사원 테이블에서 전화번호 앞 세자리가 같은 사원들을 그룹화하여 각 그룹별로 연봉의 합계
SELECT SUBSTR(PHONE_NUMBER, 1, 3)
    , SUM (SALARY)
  FROM EMPLOYEES
  GROUP BY SUBSTR(PHONE_NUMBER, 1, 3);
  
-- 참고. GROUP BY 절 없이 통계내기
SELECT DISTINCT DEPARTMENT_ID
     , COUNT(*) OVER(PARTITION BY DEPARTMENT_ID)
     , ROUND(AVG (SALARY),2) OVER(PARTITION BY DEPARTMENT_ID)
  FROM EMPLOYEES;
 
