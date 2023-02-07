CREATE DATABASE OPERATION;
USE OPERATION;

CREATE TABLE IF NOT EXISTS COURSE(
COURSE_ID INT,
COURSE_NAME VARCHAR(40),
COURSE_DESC VARCHAR(40),
COURSE_TAG VARCHAR(40));

CREATE TABLE IF NOT EXISTS STUDENT(
STUDENT_ID INT,
STUDENT_NAME VARCHAR(40),
STUDENT_MOBILE INT,
STUDENT_COURSE_ENROLL VARCHAR(40),
STUDENT_COURSE_ID INT);

INSERT INTO COURSE VALUES(101, 'fsda','fsda','analytics'),
(102, 'fsds','fsds','analytics'),
(103, 'fsds','fsds','analytics'),
(104, 'big data','fsbd','big data'),
(105, 'mern','web dev','analytics'),
(106, 'block chain','fsbc','block Chain'),
(107, 'java','fsj','java'),
(108, 'testing','fst','testing'),
(109, 'cyber security','fscs','security'),
(110, 'fsda','fsda','analytics'),
(111, 'fsds','fsda','analytics'),
(112, 'mern','web dev','analytics'),
(113, 'c','c','language'),
(114, 'c++','c++','language');

INSERT INTO STUDENT VALUES(501, 'STUDENT1',1234567,'YES',101),
(302, 'STUDENT2',1234567,'YES',102),
(303, 'STUDENT3',1234567,'YES',103),
(304, 'STUDENT4',1234567,'YES',104),
(305, 'STUDENT5',1234567,'YES',105),
(306, 'STUDENT6',1234567,'YES',106),
(307, 'STUDENT7',1234567,'NO',107),
(308, 'STUDENT8',1234567,'YES',108),
(309, 'STUDENT9',1234567,'YES',109),
(310, 'STUDENT10',1234567,'NO',110),
(312, 'STUDENT11',1234567,'YES',112),
(313, 'STUDENT2',1234567,'YES',103),
(314, 'STUDENT13',1234567,'NO',114),
(315, 'STUDENT14',1234567,'YES',101),
(316, 'STUDENT15',1234567,'NO',103);

SELECT * FROM COURSE;
SELECT * FROM STUDENT;

#-------------------------------------------------------------------
#---INNER JOIN
#-------------------------------------------------------------------

SELECT C.COURSE_ID, S.STUDENT_COURSE_ID, C.COURSE_NAME, C.COURSE_DESC, S.STUDENT_ID, S.STUDENT_NAME FROM COURSE C
INNER JOIN
STUDENT S ON C.COURSE_ID = S.STUDENT_COURSE_ID;

