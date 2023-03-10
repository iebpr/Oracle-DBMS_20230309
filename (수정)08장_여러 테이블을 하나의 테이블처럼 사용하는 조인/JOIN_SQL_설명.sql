--NATURAL JOIN(조인테이블의 이름이 동일할 경우 사용-사용하지 말것)
SELECT COUNT(*)
FROM EMP NATURAL JOIN DEPT;

-- EQUI JOIN
SELECT E.ENAME, D.DNAME
FROM   EMP E, DEPT D
WHERE  E.DEPTNO = D.DEPTNO
ORDER BY E.DEPTNO ASC;

SELECT COUNT(*) --E.ENAME, D.DNAME
FROM   EMP E JOIN DEPT D USING(DEPTNO);
     
--INNER JOIN
SELECT E.ENAME, D.DNAME
FROM   EMP E INNER JOIN DEPT D
ON     E.DEPTNO = D.DEPTNO
ORDER BY E.DEPTNO ASC;

-- RIGHT OUTER JOIN
SELECT E.ENAME, E.DEPTNO, D.DEPTNO, D.DNAME
FROM   EMP E, DEPT D
WHERE  E.DEPTNO (+)= D.DEPTNO
ORDER BY E.DEPTNO ASC;

SELECT E.ENAME, E.DEPTNO, D.DEPTNO, D.DNAME
FROM   EMP E RIGHT OUTER JOIN DEPT D
ON     E.DEPTNO = D.DEPTNO
ORDER BY E.DEPTNO ASC;

-- LEFT OUTER JOIN
SELECT E.ENAME, E.DEPTNO, D.DEPTNO, D.DNAME
FROM   EMP E, DEPT D
WHERE  E.DEPTNO = D.DEPTNO(+)
ORDER BY E.DEPTNO ASC;

SELECT E.ENAME, E.DEPTNO, D.DEPTNO, D.DNAME
FROM   EMP E LEFT OUTER JOIN DEPT D
ON  E.DEPTNO = D.DEPTNO
ORDER BY E.DEPTNO ASC;

-- FULL OUTER JOIN
--아래 SQL ERROR => ORACLE FULL OUTER JOIN 지원 안함
SELECT E.ENAME, E.DEPTNO, D.DEPTNO, D.DNAME
FROM   EMP E, DEPT D
WHERE  E.DEPTNO(+) = D.DEPTNO(+)
ORDER BY E.DEPTNO ASC;

SELECT E.ENAME, E.DEPTNO, D.DEPTNO, D.DNAME
FROM   EMP E FULL OUTER JOIN DEPT D
ON  E.DEPTNO = D.DEPTNO
ORDER BY E.DEPTNO ASC;

--비등가 조인(NOT EQUI-JOIN)
SELECT E.*, S.*
  FROM EMP E, SAL S
WHERE E.SALARY BETWEEN S.LOSAL AND S.HISAL;

--SELF JOIN
SELECT E1.ENO, E1.ENAME, E1.MANAGER,
       E2.ENO AS MANAGER_ENO,
       E2.ENAME AS MANAGER_ENAME
  FROM EMP E1, EMP E2
 WHERE E1.MANAGER = E2.ENO;

SELECT * FROM EMP;

ALTER TABLE SALGRADE RENAME TO SAL;
COMMIT;

ALTER TABLE EMP RENAME COLUMN SAL TO SALARY;
COMMIT; 

ALTER TABLE EMP RENAME COLUMN EMPNO TO ENO;
COMMIT;

ALTER TABLE EMP RENAME COLUMN MGR TO MANAGER;
COMMIT;

DESC EMP;






