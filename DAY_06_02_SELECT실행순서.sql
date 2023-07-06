/*
    SELECT 문의 실행 순서
    
    SELECT 칼럼     5번
      FROM 테이블   1번 
     WHERE 조건     2번
     GROUP BY 그룹  3번
    HAVING 그룹조건 4번
     ORDER BY 정렬  6번

*/

--사원 테이블에서 부서별 연봉 평균과 사원수를 조회하시오. 부서별 사원수가 2명 이상인 부서만 조회하시오.
SELECT DEPARTMENT_ID AS DEPT_ID
     , ROUND(AVG(SALARY),2)
     , COUNT(*) AS 부서별사원수
  FROM EMPLOYEES 
 GROUP BY DEPARTMENT_ID
HAVING COUNT(*) >= 2
 ORDER BY DEPT_ID;