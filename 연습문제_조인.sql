-- 1. LOCATION_ID가 1700인 부서에 근무하는 사원들의 EMPLOYEE_ID, FIRST_NAME, DEPARTMENT_NAME을 조회하시오.
-- 1) ANSI
SELECT LOCATION_ID
     , E.EMPLOYEE_ID
     , E.FIRST_NAME
     , D.DEPARTMENT_NAME
  FROM EMPLOYEES E INNER JOIN DEPARTMENTS D
    ON D.DEPARTMENT_ID = E.DEPARTMENT_ID ;

-- 2) 오라클


-- 2. DEPARTMENT_NAME이 'Executive'인 부서에 근무하는 사원들의 EMPLOYEE_ID, FIRST_NAME을 조회하시오.
-- 1) ANSI
SELECT D.DEPARTMENT_NAME
     , EMPLOYEE_ID
     , FIRST_NAME
  FROM DEPARTMENTS D INNER JOIN EMPLOYEES E
    ON D.DEPARTMENT_ID = E.DEPARTMENT_ID;

-- 2) 오라클



-- 3. 모든 사원들의 EMPLOYEE_ID, FIRST_NAME, DEPARTMENT_NAME, STREET_ADDRESS, CITY를 조회하시오.
-- 1) ANSI
SELECT E.EMPLOYEE_ID
     , E.FIRST_NAME
     , D.DEPARTMENT_NAME
     , STREET_ADDRESS
     , CITY
  FROM EMPLOYEES E INNER JOIN DEPARTMENTS D
    ON D.DEPARTMENT_ID = E.DEPARTMENT_ID INNER JOIN LOCATIONS L
    ON L.LOCATION_ID = D.LOCATION_ID;


-- 2) 오라클



-- 4. 부서별 DEPARTMENT_NAME과 사원 수와 평균 연봉을 조회하시오.
-- 1) ANSI
SELECT DEPARTMENT_NAME
     , EMPLOYEES_ID
     , SALARY
     


-- 2) 오라클



-- 5. 모든 사원들의 EMPLOYEE_ID, FIRST_NAME, DEPARTMENT_NAME을 조회하시오. 부서가 없는 사원의 부서명은 'None'으로 조회되도록 처리하시오.
-- 1) ANSI


-- 2) 오라클



-- 6. 모든 부서의 DEPARTMENT_NAME과 근무 중인 사원 수를 조회하시오. 근무하는 사원이 없으면 0으로 조회하시오.
-- 1) ANSI


-- 2) 오라클



-- 7. 모든 부서의 DEPARTMENT_ID, DEPARTMENT_NAME, STATE_PROVINCE, COUNTRY_NAME, REGION_NAME을 조회하시오.
-- 1) ANSI


-- 2) 오라클



-- 8. 모든 사원들의 EMPLOYEE_ID, FIRST_NAME, LAST_NAME, MANAGER의 FIRST_NAME을 조회하시오. (SELF JOIN)
-- 1) ANSI


-- 2) 오라클



-- 9. 각 사원 중에서 매니저보다 먼저 입사한 사원을 조회하시오. (SELF JOIN)
-- 1) ANSI


-- 2) 오라클



-- 10. 같은 부서에 근무하는 사원 중에서 나보다 SALARY가 높은 사원 정보를 조회하시오. (SELF JOIN)
-- 1) ANSI

-- 2) 오라클
