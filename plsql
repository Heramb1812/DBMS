                             PLSQL BASIC OPERATION

SQL*Plus: Release 21.0.0.0.0 - Production on Fri Aug 8 18:04:34 2025
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Fri Aug 08 2025 18:00:50 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0
SQL> @ C:\Users\HP\OneDrive\Desktop\TE-A1\Add.sql
Enter value for a: 6
old   6: a:=&a;
new   6: a:=6;
Enter value for b: 2
old   7: b:=&b;
new   7: b:=2;
addition is =8
PL/SQL procedure successfully completed.


SQL> @ C:\Users\HP\OneDrive\Desktop\TE-A1\Demofile.sql
Greater number is: 40

PL/SQL procedure successfully completed.

SQL> @ C:\Users\HP\OneDrive\Desktop\TE-A1\DEMOfile.sql
Greater number is: 25

PL/SQL procedure successfully completed.

SQL> @ C:\Users\HP\OneDrive\Desktop\TE-A1\DEMOfile.sql
Greater number is: 84

PL/SQL procedure successfully completed.

SQL> create table product (pid int, name varchar(20), email varchar(30));

Table created.
SQL> desc product;
 Name                                              Null?    Type
 ----------------------------------------- -------- ----------------------------
 PID                                                     NUMBER(38)
 NAME                                               VARCHAR2(20)
 EMAIL                                               VARCHAR2(30)


