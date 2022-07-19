CREATE SEQUENCE TEST_SEQ START WITH 10 INCREMENT BY 1 MAXVALUE 1000 NOCACHE NOCYCLE ;
CREATE TABLE TEST_USER (NAME VARCHAR2(10),DEPT_ID NUMBER(20));
GRANT CREATE TABLE ,CREATE SESSION TO TEST_USER2;
SELECT * FROM HR.DEPARTMENTS;
--GRANT SELECT ON HR.DEPARTMENTS TO TEST_USER1;-->SYSTEM
CREATE TABLE old_emp (empid number, last_name varchar2 (200), salary number) ;
CREATE TABLE new_emp (empid number, last_name varchar2 (200), salary number);
INSERT INTO old_emp VALUES (100, 'Tom', 4500);
INSERT INTO old_emp VALUES (110, 'Kris ', 3000);
INSERT INTO new_emp VALUES (100, 'Tom', 5000);
INSERT INTO new emp VALUES (110, 'Sam', 4200);
INSERT INTO new_emp VALUES (120, 'John', 5200);
SELECT * FROM new_emp;
SELECT * FROM Old_emp;
MERGE INTO old_emp o USING new_emp n ON (o.empid=n.empid) WHEN MATCHED THEN UPDATE SET o.salary=n. salary, O.last_name=n. last_name WHEN NOT MATCHED THEN INSERT VALUES (n.empid, n.last_name, n. salary);
CREATE TABLE emp_sal (eid number, hiredate date, sal number);
CREATE TABLE m?r_sal(eid number, mgrid number, sal number);
alter table m?r_sal rename to mgr_sal;
INSERT ALL
INTO emp_sal VALUES (employee_id, hire_date, salary)
INTO mgr_sal VALUES (employee_id, manager_id, salary)
SELECT employee_id, manager_id, salary, hire_date
FROM employees
WHERE department_id=100;
select * from emp_sal;
select * from mgr_sal;

INSERT ALL
WHEN Salary<=9000 THEN
INTO emp_sal VALUES (employee_id, hire_date, salary)
WHEN employee_id<110 THEN
INTO mgr_sal VALUES (employee_id, manager_id, salary)
SELECT employee_id, manager_id, salary, hire_date
FROM employees
WHERE department_id=100;


INSERT FIRST
WHEN salary<=8000 THEN
INTO emp_sal VALUES (employee_id, hire_date, salary)
WHEN salary>8000 THEN
INTO mgr_sal VALUES (employee_id, manager_id, salary)
SELECT employee_id, manager_id, salary, hire_date
FROM employees
WHERE department_id=100;

CREATE TABLE emp_sales
(eid number,
weekid numbeI,
sun_sales number,
mon_sales number,
tue_sales number,
wed_sales number,
thu_sales number
)

CREATE TABLE emp_sales_info
(eid number,
weekid numbeI,
sales number)
INSERT INTO emp_sales VALUES (110, 3, 1500, 2000, 3500, 4000, 3000) ;
INSERT INTO emp_sales iVALIIES (120, 3, 2000, 2500, 2400, 3000, 3200):
SELECT *FROM emp_sales;

INSERT ALL
INTO emp_sales info VALUES (eid, weekid, sun_sales)
INTO emp_sales_info VALUES (eid, weekid, mon _sales)
INTO emp sales info VALUES (eid, weekid, tue sales)
INTO emp_sales_info VALUES (eid, weekid, wed_sales)
INTO emp_sales_ info VALUES (eid, weekid, thu_sales)
SELECT *
FROM emp _salles;

SELECT*
FROM new_emp;
SELECT SYSTIMESTAMP
FROM dual;
DELETE FROM new_emp;
COMMIT;
SELECT *
FROM NEW_EMP;

ALTER TABLE new_emp ENABLE ROW MOVEMENT

FLASHBACK TABLE new_emp
TO TIMESTAMP TO TIMESTAMP ('HERE WRITE SYSTIMESTAMP ', 'DD-MON-YY HH24.MI.SS');

DROP TABLE NEW_EMP;
SELECT original_name, operation, droptime FROM RECYCLEBIN;
FLASHBACK TABLE new_emp TO BEFORE DROP;
UPDATE new_emp SET last_name='TEST' WHERE empid=120;
COMMIT


ALTER SESSION SET TIME ZONE = '-04:00';
ALTER SESSION SET TIME_ZONE = 'Europe/London';

SELECT SESSIONTIMEZONE FROM DUAL;

SELECT CURRENT_DATE, CURRENT_TIMESTAMP, LOCALTIMESTAMP FROM dual;
ALTER SESSION SET TIME_ZONE = 'Europe/London';

SELECT CURRENT DATE, CURRENT_ TIMESTAMP, LOCALTIMESTAMP
FROM dual;

CREATE TABLE candidates (
candidate_id NUMBER PRIMARY KEY,
last_name VARCHAR2 (50) NOT NULL,
job_title VARCHAR2 (255) NOT NULL,
year_of_experience INTERVAL YEAR TO MONTH);

INSERT INTO candidates
VALUES (1, 'Sara', 'IT_ADMIN', '11-3');
INSERT INTO candidates
VALUES (2, 'Tom', 'IT_ADMIN', '0-7');
INSERT INTO candidates
VALUES (3, 'John', 'IT_ADMIN', INTERVAL '10' year) ;
INSERT INTO candidates
VALUES (4, 'Sam', 'IT_PROG', INTERVAL '5-3' year to month);
INSERT INTO candidates
VALUES (5, 'Alix', 'IT_PROG', INTERVAL '10' month);

CREATE TABLE interval_table (id NUMBER,time_period INTERVAL DAY TO SECOND);


INSERT INTO interval_table
VALUES (1, '13 10:30:3') ;
INSERT INTO interval_table
VALUES (2, '0 9:20:40') ;
INSERT INTO interval_table
VALUES (3, interval '8' day) ;
INSERT INTO interval table
VALUES (4, interval '7 15' day to hour);
INSERT INTO interval_table
VALUES (5, interval ' 34 23:36' day to minute);

SELECT last_name, hire_date,
EXTRACT (YEAR FROM hire_date) "Year",
EXTRACT (MONTH FROM hire_date) "Month"
FROM employees
WHERE department_id=90;
SELECT TZ_OFFSET ('AFRICA/CAIRO') FROM dual;

SELECT FROM_TZ (TIMESTAMP '2020-12-30 14:40:00', 'EUROPE/LONDON'),
FROM_Tz (TIMESTAMP '2020-12-30 14:40:00', 'ASIA/AMMAN')
FROM DUAL;

SELECT TO_TIMESTAMP ('2020-12-30 14:40:00', 'YYYY-MM- DD HH24:MI: SS'),TO_YMINTERVAL ('13-9'), TO_DSINTERVAL ('8 11:32:22') FROM DUAL;      
SELECT last_name ,hire_date, hire_date+ TO_YMINTERVAL('2-3') "New Hiredate"
FROM employees
WHERE department_id=90;
