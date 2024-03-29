CREATE DATABASE PIVOTE;
USE PIVOTE;

CREATE TABLE ORDER_TABLE(
ORDER_ID INT,
EMPLOYEEID INT,
VENDORID INT);

TRUNCATE ORDER_TABLE;

INSERT INTO ORDER_TABLE VALUES (1,258,1580),
(2,254,1496),
(3,257,1494),
(4,261,1650),
(5,253,1654),
(6,255,1664);

SELECT * FROM ORDER_TABLE;

SELECT VENDORID,
IF (EMPLOYEEID =  258,1,0) AS EMP258,
IF (EMPLOYEEID =  254,1,0) AS EMP254,
IF (EMPLOYEEID =  257,1,0) AS EMP257,
IF (EMPLOYEEID =  261,1,0) AS EMP261,
IF (EMPLOYEEID =  253,1,0) AS EMP253,
IF (EMPLOYEEID =  255,1,0) AS EMP255 FROM ORDER_TABLE O
GROUP BY VENDORID