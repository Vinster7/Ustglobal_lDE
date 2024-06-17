IF OBJECT_ID('dept', 'U') IS NOT NULL
    DROP TABLE dept;
IF OBJECT_ID('salgrade', 'U') IS NOT NULL
    DROP TABLE salgrade;
IF OBJECT_ID('emp', 'U') IS NOT NULL
    DROP TABLE emp;

CREATE TABLE salgrade(
    grade int not null primary key,
    losal decimal(10,2),
    hisal decimal(10,2)
);

CREATE TABLE dept(
    deptno int not null primary key,
    dname varchar(50) not null,
    location varchar(50) not null
);

CREATE TABLE emp(
    empno int not null primary key,
    ename varchar(50) not null,
    job varchar(50) not null,
    mgr int,
    hiredate date,
    sal decimal(10,2),
    comm decimal(10,2),
    deptno int not null
);

INSERT INTO dept VALUES (10, 'Accounting', 'New York');
INSERT INTO dept VALUES (20, 'Research', 'Dallas');
INSERT INTO dept VALUES (30, 'Sales', 'Chicago');
INSERT INTO dept VALUES (40, 'Operations', 'Boston');

INSERT INTO emp VALUES (7369, 'SMITH', 'CLERK', 7902, '1993-06-13', 800.00, 0.00, 20);
INSERT INTO emp VALUES (7499, 'ALLEN', 'SALESMAN', 7698, '1998-08-15', 1600.00, 300.00, 30);
INSERT INTO emp VALUES (7521, 'WARD', 'SALESMAN', 7698, '1996-03-26', 1250.00, 500.00, 30);
INSERT INTO emp VALUES (7566, 'JONES', 'MANAGER', 7839, '1995-10-31', 2975.00, NULL, 20);
INSERT INTO emp VALUES (7698, 'BLAKE', 'MANAGER', 7839, '1992-06-11', 2850.00, NULL, 30);
INSERT INTO emp VALUES (7782, 'CLARK', 'MANAGER', 7839, '1993-05-14', 2450.00, NULL, 10);
INSERT INTO emp VALUES (7788, 'SCOTT', 'ANALYST', 7566, '1996-03-05', 3000.00, NULL, 20);
INSERT INTO emp VALUES (7839, 'KING', 'PRESIDENT', NULL, '1990-06-09', 5000.00, 0.00, 10);
INSERT INTO emp VALUES (7844, 'TURNER', 'SALESMAN', 7698, '1995-06-04', 1500.00, 0.00, 30);
INSERT INTO emp VALUES (7876, 'ADAMS', 'CLERK', 7788, '1999-06-04', 1100.00, NULL, 20);
INSERT INTO emp VALUES (7900, 'JAMES', 'CLERK', 7698, '2000-06-23', 950.00, NULL, 30);
INSERT INTO emp VALUES (7934, 'MILLER', 'CLERK', 7782, '2000-01-21', 1300.00, NULL, 10);
INSERT INTO emp VALUES (7902, 'FORD', 'ANALYST', 7566, '1997-12-05', 3000.00, NULL, 20);
INSERT INTO emp VALUES (7654, 'MARTIN', 'SALESMAN', 7698, '1998-12-05', 1250.00, 1400.00, 30);

INSERT INTO salgrade VALUES (1, 700.00, 1200.00);
INSERT INTO salgrade VALUES (2, 1201.00, 1400.00);
INSERT INTO salgrade VALUES (3, 1401.00, 2000.00);
INSERT INTO salgrade VALUES (4, 2001.00, 3000.00);
INSERT INTO salgrade VALUES (5, 3001.00, 99999.00);
