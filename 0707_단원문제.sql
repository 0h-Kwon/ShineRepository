-- Q1. �̸��� S�� ������ ��� ������ ���
SELECT *
FROM EMP
WHERE ENAME LIKE '%S';

-- Q2. 30�� �μ����� �ٹ��ϴ� ��� �� ��å�� SALESMAN�� �����
-- ��� ��ȣ, �̸�, ��å, �޿�, �μ� ��ȣ�� ���
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE JOB = 'SALESMAN';

-- Q3. 20, 30�� �μ� �ٹ��� �� �޿��� 2000 �ʰ��� �����
-- �� ���� ����� SELECT���� ����� ��� ��ȣ, �̸�, �޿�, �μ� ��ȣ ���
-- ���� ������ ��� ����
SELECT EMPNO, ENAME, SAL, DEPTNO
FROM EMP
WHERE DEPTNO BETWEEN 20 AND 30
  AND SAL > 2000;
  
-- ���� ������ ���
SELECT EMPNO, ENAME, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 20
  AND SAL > 2000
UNION
SELECT EMPNO, ENAME, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 30
  AND SAL > 2000;
  
-- Q4. NOT BETWEEN A AND B�� ���� �ʰ�
-- �޿��� 2000 �̻� 3000 ���� ���� �̿��� ���� ������ ���
SELECT *
FROM EMP
WHERE SAL < 2000
  OR SAL > 3000;

-- Q5. ��� �̸��� E�� ���ԵǾ� �ִ� 30�� �μ��� ��� ��
-- �޿��� 1000~2000�� �ƴ� ����� �̸�, ��� ��ȣ, �޿�, �μ� ��ȣ ���
SELECT ENAME, EMPNO, SAL, DEPTNO
FROM EMP
WHERE SAL NOT BETWEEN 1000 AND 2000;

-- Q6. �߰� ������ �������� �ʰ� ����ڰ� �ְ� ��å�� MANAGER, CLERK�� ��� ��
-- ��� �̸��� �� ��° ���ڰ� L�� �ƴ� ��� ���� ���
SELECT *
FROM EMP
WHERE COMM IS NULL
  AND MGR IS NOT NULL
  AND ENAME NOT LIKE '%L%'
  AND JOB = 'MANAGER'
   OR JOB = 'CLERK';
   
   
   