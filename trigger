PRACTICAL NO.7
•	Create Trigger :
CREATE OR REPLACE TRIGGER XYZ
BEFORE UPDATE OR DELETE ON Lib
FOR EACH ROW
BEGIN
  INSERT INTO Bak_Lib (Srno, BookName, Publication, Price, DatePurchase)
  VALUES (:OLD.Srno, :OLD.BookName, :OLD.Publication, :OLD.Price, :OLD.DatePurchase);
END;
/
•	QUERIES :
SQL*Plus: Release 21.0.0.0.0 - Production on Thu Sep 11 14:59:54 2025
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Thu Sep 11 2025 14:59:16 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> CREATE TABLE Lib (Srno NUMBER(20), BookName VARCHAR2(20), Publication VARCHAR2(20), Price NUMBER(6,2), DatePurchase DATE);

Table created.

SQL> INSERT INTO Lib (Srno, BookName, Publication, Price, DatePurchase) VALUES (1, 'DBMS', 'Technical', 250.00, TO_DATE('2023-07-01', 'YYYY-MM-DD'));

1 row created.

SQL> INSERT INTO Lib (Srno, BookName, Publication, Price, DatePurchase) VALUES (2, 'Java Basics', 'Sun Press', 350.50, TO_DATE('2022-05-15', 'YYYY-MM-DD'));

1 row created.

SQL> INSERT INTO Lib (Srno, BookName, Publication, Price, DatePurchase) VALUES (3, 'Python 101', 'TechWorld', 450.75, TO_DATE('2021-09-20', 'YYYY-MM-DD'));

1 row created.

SQL> select*from Lib;

      SRNO BOOKNAME             PUBLICATION               PRICE DATEPURCH
---------- -------------------- -------------------- ---------- ---------
         1 DBMS                 Technical                   250 01-JUL-23
         2 Java Basics          Sun Press                 350.5 15-MAY-22
         3 Python 101           TechWorld                450.75 20-SEP-21

SQL> desc Lib;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 SRNO                                               NUMBER(20)
 BOOKNAME                                           VARCHAR2(20)
 PUBLICATION                                        VARCHAR2(20)
 PRICE                                              NUMBER(6,2)
 DATEPURCHASE                                       DATE

SQL> CREATE TABLE Bak_Lib (Srno NUMBER(20), BookName VARCHAR2(20), Publication VARCHAR2(20), Price NUMBER(6,2), DatePurchase DATE);

Table created.

SQL> @C:\Users\System05\Desktop\DBMSA1\T.sql

Trigger created.

SQL> UPDATE Lib SET Price = Price + 10 WHERE Srno = 1;

1 row updated.

SQL> DELETE FROM Lib WHERE Srno = 2;

1 row deleted.

SQL> SELECT * FROM Bak_Lib;

      SRNO BOOKNAME             PUBLICATION               PRICE DATEPURCH
---------- -------------------- -------------------- ---------- ---------
         1 DBMS                 Technical                   250 01-JUL-23
         2 Java Basics          Sun Press                 350.5 15-MAY-22
SQL> select*from Lib;

      SRNO BOOKNAME             PUBLICATION               PRICE DATEPURCH
---------- -------------------- -------------------- ---------- ---------
         1 DBMS                 Technical                   260 01-JUL-23
         3 Python 101           TechWorld                450.75 20-SEP-21
