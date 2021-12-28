Microsoft Windows [Version 10.0.19042.1415]
(c) Microsoft Corporation. All rights reserved.

C:\Users\bobvi>mysql -u root -p
Enter password: *************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 18
Server version: 8.0.27 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| employees          |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
7 rows in set (0.10 sec)

mysql> use employees;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_employees  |
+----------------------+
| current_dept_emp     |
| departments          |
| dept_emp             |
| dept_emp_latest_date |
| dept_manager         |
| employees            |
| salaries             |
| titles               |
+----------------------+
8 rows in set (0.06 sec)

mysql> desc employees;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| emp_no     | int           | NO   | PRI | NULL    |       |
| birth_date | date          | NO   |     | NULL    |       |
| first_name | varchar(14)   | NO   |     | NULL    |       |
| last_name  | varchar(16)   | NO   |     | NULL    |       |
| gender     | enum('M','F') | NO   |     | NULL    |       |
| hire_date  | date          | NO   |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
6 rows in set (0.04 sec)

mysql> SELECT * FROM employees WHERE birth_date <  '1965-01-01' LIMIT 30;
+--------+------------+------------+-------------+--------+------------+
| emp_no | birth_date | first_name | last_name   | gender | hire_date  |
+--------+------------+------------+-------------+--------+------------+
|  10001 | 1953-09-02 | Georgi     | Facello     | M      | 1986-06-26 |
|  10002 | 1964-06-02 | Bezalel    | Simmel      | F      | 1985-11-21 |
|  10003 | 1959-12-03 | Parto      | Bamford     | M      | 2002-01-01 |
|  10004 | 1954-05-01 | Chirstian  | Koblick     | M      | 1986-12-01 |
|  10005 | 1955-01-21 | Kyoichi    | Maliniak    | M      | 1989-09-12 |
|  10006 | 1953-04-20 | Anneke     | Preusig     | F      | 2002-01-01 |
|  10007 | 1957-05-23 | Tzvetan    | Zielinski   | F      | 1989-02-10 |
|  10008 | 1958-02-19 | Saniya     | Kalloufi    | M      | 1994-09-15 |
|  10009 | 1952-04-19 | Sumant     | Peac        | F      | 2002-01-01 |
|  10010 | 1963-06-01 | Duangkaew  | Piveteau    | F      | 2002-01-01 |
|  10011 | 1953-11-07 | Mary       | Sluis       | F      | 1990-01-22 |
|  10012 | 1960-10-04 | Patricio   | Bridgland   | M      | 2002-01-01 |
|  10013 | 1963-06-07 | Eberhardt  | Terkki      | M      | 1985-10-20 |
|  10014 | 1956-02-12 | Berni      | Genin       | M      | 1987-03-11 |
|  10015 | 1959-08-19 | Guoxiang   | Nooteboom   | M      | 1987-07-02 |
|  10016 | 1961-05-02 | Kazuhito   | Cappelletti | M      | 1995-01-27 |
|  10017 | 1958-07-06 | Cristinel  | Bouloucos   | F      | 1993-08-03 |
|  10018 | 1954-06-19 | Kazuhide   | Peha        | F      | 2002-01-01 |
|  10019 | 1953-01-23 | Lillian    | Haddadi     | M      | 1999-04-30 |
|  10020 | 1952-12-24 | Mayuko     | Warwick     | M      | 1991-01-26 |
|  10021 | 1960-02-20 | Ramzi      | Erde        | M      | 1988-02-10 |
|  10022 | 1952-07-08 | Shahaf     | Famili      | M      | 1995-08-22 |
|  10023 | 1953-09-29 | Bob        | Montemayor  | F      | 1989-12-17 |
|  10024 | 1958-09-05 | Suzette    | Pettey      | F      | 2002-01-01 |
|  10025 | 1958-10-31 | Prasadram  | Heyers      | M      | 2002-01-01 |
|  10026 | 1953-04-03 | Yongqiao   | Berztiss    | M      | 1995-03-20 |
|  10027 | 1962-07-10 | Divier     | Reistad     | F      | 1989-07-07 |
|  10028 | 1963-11-26 | Domenick   | Tempesti    | M      | 1991-10-22 |
|  10029 | 1956-12-13 | Otmar      | Herbst      | M      | 1985-11-20 |
|  10030 | 1958-07-14 | Elvis      | Demeyer     | M      | 1994-02-17 |
+--------+------------+------------+-------------+--------+------------+
30 rows in set (0.00 sec)

mysql> SELECT * FROM employees WHERE gender = 'f' AND hire_date > '1990-12-31' LIMIT 30;
+--------+------------+------------+--------------+--------+------------+
| emp_no | birth_date | first_name | last_name    | gender | hire_date  |
+--------+------------+------------+--------------+--------+------------+
|  10006 | 1953-04-20 | Anneke     | Preusig      | F      | 2002-01-01 |
|  10009 | 1952-04-19 | Sumant     | Peac         | F      | 2002-01-01 |
|  10010 | 1963-06-01 | Duangkaew  | Piveteau     | F      | 2002-01-01 |
|  10017 | 1958-07-06 | Cristinel  | Bouloucos    | F      | 1993-08-03 |
|  10018 | 1954-06-19 | Kazuhide   | Peha         | F      | 2002-01-01 |
|  10024 | 1958-09-05 | Suzette    | Pettey       | F      | 2002-01-01 |
|  10040 | 1959-09-13 | Weiyi      | Meriste      | F      | 1993-02-14 |
|  10042 | 1956-02-26 | Magy       | Stamatiou    | F      | 1993-03-21 |
|  10044 | 1961-09-21 | Mingsen    | Casley       | F      | 1994-05-21 |
|  10049 | 1961-04-24 | Basil      | Tramer       | F      | 1992-05-04 |
|  10057 | 1954-05-30 | Ebbe       | Callaway     | F      | 1992-01-15 |
|  10059 | 1953-09-19 | Alejandro  | McAlpine     | F      | 1991-06-26 |
|  10101 | 1952-04-15 | Perla      | Heyers       | F      | 2002-01-01 |
|  10102 | 1959-11-04 | Paraskevi  | Luby         | F      | 2002-01-01 |
|  10107 | 1956-06-13 | Dung       | Baca         | F      | 1994-03-22 |
|  10109 | 1958-11-25 | Mariusz    | Prampolini   | F      | 2002-01-01 |
|  10114 | 1957-02-16 | Munir      | Demeyer      | F      | 1992-07-17 |
|  10120 | 1960-03-26 | Armond     | Fairtlough   | F      | 1996-07-06 |
|  10139 | 1963-03-03 | Ewing      | Foong        | F      | 1998-03-15 |
|  10140 | 1957-03-11 | Yucel      | Auria        | F      | 1991-03-14 |
|  10141 | 1960-01-17 | Shahaf     | Ishibashi    | F      | 1993-05-06 |
|  10149 | 1953-05-20 | Xiadong    | Perry        | F      | 2002-01-01 |
|  10150 | 1955-01-29 | Zhenbing   | Perng        | F      | 2002-01-01 |
|  10166 | 1953-05-10 | Samphel    | Siegrist     | F      | 1993-01-01 |
|  10169 | 1961-05-03 | Sampalli   | Snedden      | F      | 1992-07-24 |
|  10172 | 1957-03-25 | Shigeu     | Matzen       | F      | 1995-10-13 |
|  10176 | 1957-01-24 | Brendon    | Lenart       | F      | 1994-12-22 |
|  10187 | 1961-05-26 | Tommaso    | Narwekar     | F      | 1991-06-01 |
|  10197 | 1963-08-06 | Kasidit    | Krzyzanowski | F      | 1993-11-22 |
|  10205 | 1953-05-20 | Mabhin     | Leijenhorst  | F      | 1993-08-23 |
+--------+------------+------------+--------------+--------+------------+
30 rows in set (0.00 sec)

mysql> SELECT first_name, last_name FROM employees WHERE last_name LIKE 'F%' LIMIT 50;
+-------------+--------------+
| first_name  | last_name    |
+-------------+--------------+
| Georgi      | Facello      |
| Shahaf      | Famili       |
| Somnath     | Foote        |
| Sudharsan   | Flasterstein |
| Armond      | Fairtlough   |
| Ewing       | Foong        |
| Sumali      | Fargier      |
| Badri       | Furudate     |
| Arve        | Fairtlough   |
| Mohua       | Falck        |
| Pranav      | Furedi       |
| Kish        | Fasbender    |
| Foong       | Flasterstein |
| Roded       | Facello      |
| Clyde       | Fandrianto   |
| Anneli      | Frijda       |
| Masoud      | Fabrizio     |
| Przemyslawa | Falby        |
| Hisao       | Famili       |
| Lalit       | Francisci    |
| Heejo       | Frolund      |
| Otmar       | Feinberg     |
| Unal        | Fendler      |
| Yuchang     | Francisci    |
| Chenyi      | Feinberg     |
| Shim        | Feldhoffer   |
| Ashish      | Fortenbacher |
| Fan         | Fairtlough   |
| Fen         | Fiebach      |
| Ramzi       | Furudate     |
| Oscal       | Fasbender    |
| Morris      | Famili       |
| Aleksander  | Fioravanti   |
| Chiradeep   | Furedi       |
| Shin        | Foote        |
| Deniz       | Fontan       |
| Nathan      | Flowers      |
| Tse         | Felcyn       |
| Tadahiro    | Fordan       |
| Sahrah      | Figueira     |
| Dayanand    | Figueira     |
| Kwangjo     | Fiebach      |
| Gina        | Falster      |
| Bernice     | Felcyn       |
| Sreenivas   | Farrag       |
| Lillian     | Fontet       |
| Ult         | Farrar       |
| Heping      | Fontan       |
| Xiong       | Ferriere     |
| Kasturi     | Fraisse      |
+-------------+--------------+
50 rows in set (0.00 sec)

mysql> SELECT * FROM employees LIMIT 15;
+--------+------------+------------+-----------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date  |
+--------+------------+------------+-----------+--------+------------+
|  10001 | 1953-09-02 | Georgi     | Facello   | M      | 1986-06-26 |
|  10002 | 1964-06-02 | Bezalel    | Simmel    | F      | 1985-11-21 |
|  10003 | 1959-12-03 | Parto      | Bamford   | M      | 2002-01-01 |
|  10004 | 1954-05-01 | Chirstian  | Koblick   | M      | 1986-12-01 |
|  10005 | 1955-01-21 | Kyoichi    | Maliniak  | M      | 1989-09-12 |
|  10006 | 1953-04-20 | Anneke     | Preusig   | F      | 2002-01-01 |
|  10007 | 1957-05-23 | Tzvetan    | Zielinski | F      | 1989-02-10 |
|  10008 | 1958-02-19 | Saniya     | Kalloufi  | M      | 1994-09-15 |
|  10009 | 1952-04-19 | Sumant     | Peac      | F      | 2002-01-01 |
|  10010 | 1963-06-01 | Duangkaew  | Piveteau  | F      | 2002-01-01 |
|  10011 | 1953-11-07 | Mary       | Sluis     | F      | 1990-01-22 |
|  10012 | 1960-10-04 | Patricio   | Bridgland | M      | 2002-01-01 |
|  10013 | 1963-06-07 | Eberhardt  | Terkki    | M      | 1985-10-20 |
|  10014 | 1956-02-12 | Berni      | Genin     | M      | 1987-03-11 |
|  10015 | 1959-08-19 | Guoxiang   | Nooteboom | M      | 1987-07-02 |
+--------+------------+------------+-----------+--------+------------+
15 rows in set (0.00 sec)

mysql> INSERT INTO employees VALUES (00100, '1981-01-01', 'Andrew', 'Sand', 'M', '1991-01-01'), (00101, '1982-01-01', 'Angela', 'Wood', 'F', '1992-01-01'), (00102, '1983-01-01', 'Vince', 'Great', 'M', '1993-01-01');
Query OK, 3 rows affected (0.09 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM employees LIMIT 20;
+--------+------------+------------+-------------+--------+------------+
| emp_no | birth_date | first_name | last_name   | gender | hire_date  |
+--------+------------+------------+-------------+--------+------------+
|    100 | 1981-01-01 | Andrew     | Sand        | M      | 1991-01-01 |
|    101 | 1982-01-01 | Angela     | Wood        | F      | 1992-01-01 |
|    102 | 1983-01-01 | Vince      | Great       | M      | 1993-01-01 |
|  10001 | 1953-09-02 | Georgi     | Facello     | M      | 1986-06-26 |
|  10002 | 1964-06-02 | Bezalel    | Simmel      | F      | 1985-11-21 |
|  10003 | 1959-12-03 | Parto      | Bamford     | M      | 2002-01-01 |
|  10004 | 1954-05-01 | Chirstian  | Koblick     | M      | 1986-12-01 |
|  10005 | 1955-01-21 | Kyoichi    | Maliniak    | M      | 1989-09-12 |
|  10006 | 1953-04-20 | Anneke     | Preusig     | F      | 2002-01-01 |
|  10007 | 1957-05-23 | Tzvetan    | Zielinski   | F      | 1989-02-10 |
|  10008 | 1958-02-19 | Saniya     | Kalloufi    | M      | 1994-09-15 |
|  10009 | 1952-04-19 | Sumant     | Peac        | F      | 2002-01-01 |
|  10010 | 1963-06-01 | Duangkaew  | Piveteau    | F      | 2002-01-01 |
|  10011 | 1953-11-07 | Mary       | Sluis       | F      | 1990-01-22 |
|  10012 | 1960-10-04 | Patricio   | Bridgland   | M      | 2002-01-01 |
|  10013 | 1963-06-07 | Eberhardt  | Terkki      | M      | 1985-10-20 |
|  10014 | 1956-02-12 | Berni      | Genin       | M      | 1987-03-11 |
|  10015 | 1959-08-19 | Guoxiang   | Nooteboom   | M      | 1987-07-02 |
|  10016 | 1961-05-02 | Kazuhito   | Cappelletti | M      | 1995-01-27 |
|  10017 | 1958-07-06 | Cristinel  | Bouloucos   | F      | 1993-08-03 |
+--------+------------+------------+-------------+--------+------------+
20 rows in set (0.03 sec)

mysql> UPDATE employees SET first_name = 'Bob' WHERE emp_no = 10023;
Query OK, 0 rows affected (0.04 sec)
Rows matched: 1  Changed: 0  Warnings: 0

mysql> SELECT * FROM employees LIMIT 40;
+--------+------------+------------+-------------+--------+------------+
| emp_no | birth_date | first_name | last_name   | gender | hire_date  |
+--------+------------+------------+-------------+--------+------------+
|    100 | 1981-01-01 | Andrew     | Sand        | M      | 1991-01-01 |
|    101 | 1982-01-01 | Angela     | Wood        | F      | 1992-01-01 |
|    102 | 1983-01-01 | Vince      | Great       | M      | 1993-01-01 |
|  10001 | 1953-09-02 | Georgi     | Facello     | M      | 1986-06-26 |
|  10002 | 1964-06-02 | Bezalel    | Simmel      | F      | 1985-11-21 |
|  10003 | 1959-12-03 | Parto      | Bamford     | M      | 2002-01-01 |
|  10004 | 1954-05-01 | Chirstian  | Koblick     | M      | 1986-12-01 |
|  10005 | 1955-01-21 | Kyoichi    | Maliniak    | M      | 1989-09-12 |
|  10006 | 1953-04-20 | Anneke     | Preusig     | F      | 2002-01-01 |
|  10007 | 1957-05-23 | Tzvetan    | Zielinski   | F      | 1989-02-10 |
|  10008 | 1958-02-19 | Saniya     | Kalloufi    | M      | 1994-09-15 |
|  10009 | 1952-04-19 | Sumant     | Peac        | F      | 2002-01-01 |
|  10010 | 1963-06-01 | Duangkaew  | Piveteau    | F      | 2002-01-01 |
|  10011 | 1953-11-07 | Mary       | Sluis       | F      | 1990-01-22 |
|  10012 | 1960-10-04 | Patricio   | Bridgland   | M      | 2002-01-01 |
|  10013 | 1963-06-07 | Eberhardt  | Terkki      | M      | 1985-10-20 |
|  10014 | 1956-02-12 | Berni      | Genin       | M      | 1987-03-11 |
|  10015 | 1959-08-19 | Guoxiang   | Nooteboom   | M      | 1987-07-02 |
|  10016 | 1961-05-02 | Kazuhito   | Cappelletti | M      | 1995-01-27 |
|  10017 | 1958-07-06 | Cristinel  | Bouloucos   | F      | 1993-08-03 |
|  10018 | 1954-06-19 | Kazuhide   | Peha        | F      | 2002-01-01 |
|  10019 | 1953-01-23 | Lillian    | Haddadi     | M      | 1999-04-30 |
|  10020 | 1952-12-24 | Mayuko     | Warwick     | M      | 1991-01-26 |
|  10021 | 1960-02-20 | Ramzi      | Erde        | M      | 1988-02-10 |
|  10022 | 1952-07-08 | Shahaf     | Famili      | M      | 1995-08-22 |
|  10023 | 1953-09-29 | Bob        | Montemayor  | F      | 1989-12-17 |
|  10024 | 1958-09-05 | Suzette    | Pettey      | F      | 2002-01-01 |
|  10025 | 1958-10-31 | Prasadram  | Heyers      | M      | 2002-01-01 |
|  10026 | 1953-04-03 | Yongqiao   | Berztiss    | M      | 1995-03-20 |
|  10027 | 1962-07-10 | Divier     | Reistad     | F      | 1989-07-07 |
|  10028 | 1963-11-26 | Domenick   | Tempesti    | M      | 1991-10-22 |
|  10029 | 1956-12-13 | Otmar      | Herbst      | M      | 1985-11-20 |
|  10030 | 1958-07-14 | Elvis      | Demeyer     | M      | 1994-02-17 |
|  10031 | 1959-01-27 | Karsten    | Joslin      | M      | 1991-09-01 |
|  10032 | 1960-08-09 | Jeong      | Reistad     | F      | 1990-06-20 |
|  10033 | 1956-11-14 | Arif       | Merlo       | M      | 1987-03-18 |
|  10034 | 1962-12-29 | Bader      | Swan        | M      | 1988-09-21 |
|  10035 | 1953-02-08 | Alain      | Chappelet   | M      | 1988-09-05 |
|  10036 | 1959-08-10 | Adamantios | Portugali   | M      | 2002-01-01 |
|  10037 | 1963-07-22 | Pradeep    | Makrucki    | M      | 2002-01-01 |
+--------+------------+------------+-------------+--------+------------+
40 rows in set (0.00 sec)

mysql> UPDATE employees SET hire_date = '2002-01-01' WHERE first_name LIKE 'p%' OR last_name LIKE 'p%';
Query OK, 0 rows affected (0.38 sec)
Rows matched: 31566  Changed: 0  Warnings: 0

mysql> SELECT * FROM employees WHERE last_name LIKE 'P%' LIMIT 30;
+--------+------------+------------+---------------+--------+------------+
| emp_no | birth_date | first_name | last_name     | gender | hire_date  |
+--------+------------+------------+---------------+--------+------------+
|  10006 | 1953-04-20 | Anneke     | Preusig       | F      | 2002-01-01 |
|  10009 | 1952-04-19 | Sumant     | Peac          | F      | 2002-01-01 |
|  10010 | 1963-06-01 | Duangkaew  | Piveteau      | F      | 2002-01-01 |
|  10018 | 1954-06-19 | Kazuhide   | Peha          | F      | 2002-01-01 |
|  10024 | 1958-09-05 | Suzette    | Pettey        | F      | 2002-01-01 |
|  10036 | 1959-08-10 | Adamantios | Portugali     | M      | 2002-01-01 |
|  10062 | 1961-11-02 | Anoosh     | Peyn          | M      | 2002-01-01 |
|  10105 | 1962-02-05 | Hironoby   | Piveteau      | M      | 2002-01-01 |
|  10109 | 1958-11-25 | Mariusz    | Prampolini    | F      | 2002-01-01 |
|  10119 | 1960-12-01 | Domenick   | Peltason      | M      | 2002-01-01 |
|  10129 | 1955-12-02 | Armond     | Peir          | M      | 2002-01-01 |
|  10136 | 1961-09-14 | Zissis     | Pintelas      | M      | 2002-01-01 |
|  10149 | 1953-05-20 | Xiadong    | Perry         | F      | 2002-01-01 |
|  10150 | 1955-01-29 | Zhenbing   | Perng         | F      | 2002-01-01 |
|  10226 | 1964-12-28 | Xinglin    | Plessier      | M      | 2002-01-01 |
|  10243 | 1960-12-22 | Wonhee     | Pouyioutas    | M      | 2002-01-01 |
|  10274 | 1957-08-23 | Dmitri     | Pearson       | F      | 2002-01-01 |
|  10285 | 1956-09-21 | Zhonghui   | Preusig       | F      | 2002-01-01 |
|  10287 | 1963-11-28 | Marie      | Pietracaprina | M      | 2002-01-01 |
|  10288 | 1959-06-02 | Selwyn     | Perri         | M      | 2002-01-01 |
|  10289 | 1956-11-30 | Shay       | Poulakidas    | M      | 2002-01-01 |
|  10290 | 1957-05-29 | Yongmao    | Pleszkun      | M      | 2002-01-01 |
|  10305 | 1952-06-30 | Hirochika  | Piancastelli  | M      | 2002-01-01 |
|  10348 | 1956-03-11 | Mahendra   | Picco         | F      | 2002-01-01 |
|  10366 | 1960-01-25 | Morrie     | Piazza        | M      | 2002-01-01 |
|  10381 | 1963-03-04 | Jiong      | Parfitt       | M      | 2002-01-01 |
|  10389 | 1953-03-24 | Make       | Peir          | M      | 2002-01-01 |
|  10418 | 1952-06-29 | Candida    | Porotnikoff   | F      | 2002-01-01 |
|  10434 | 1959-07-17 | Dzung      | Peltason      | F      | 2002-01-01 |
|  10441 | 1958-04-27 | Adel       | Perfilyeva    | M      | 2002-01-01 |
+--------+------------+------------+---------------+--------+------------+
30 rows in set (0.05 sec)

mysql> DELETE FROM employees WHERE emp_no < 10000;
Query OK, 3 rows affected (0.24 sec)

mysql> SELECT * FROM employees LIMIT 30;
+--------+------------+------------+-------------+--------+------------+
| emp_no | birth_date | first_name | last_name   | gender | hire_date  |
+--------+------------+------------+-------------+--------+------------+
|  10001 | 1953-09-02 | Georgi     | Facello     | M      | 1986-06-26 |
|  10002 | 1964-06-02 | Bezalel    | Simmel      | F      | 1985-11-21 |
|  10003 | 1959-12-03 | Parto      | Bamford     | M      | 2002-01-01 |
|  10004 | 1954-05-01 | Chirstian  | Koblick     | M      | 1986-12-01 |
|  10005 | 1955-01-21 | Kyoichi    | Maliniak    | M      | 1989-09-12 |
|  10006 | 1953-04-20 | Anneke     | Preusig     | F      | 2002-01-01 |
|  10007 | 1957-05-23 | Tzvetan    | Zielinski   | F      | 1989-02-10 |
|  10008 | 1958-02-19 | Saniya     | Kalloufi    | M      | 1994-09-15 |
|  10009 | 1952-04-19 | Sumant     | Peac        | F      | 2002-01-01 |
|  10010 | 1963-06-01 | Duangkaew  | Piveteau    | F      | 2002-01-01 |
|  10011 | 1953-11-07 | Mary       | Sluis       | F      | 1990-01-22 |
|  10012 | 1960-10-04 | Patricio   | Bridgland   | M      | 2002-01-01 |
|  10013 | 1963-06-07 | Eberhardt  | Terkki      | M      | 1985-10-20 |
|  10014 | 1956-02-12 | Berni      | Genin       | M      | 1987-03-11 |
|  10015 | 1959-08-19 | Guoxiang   | Nooteboom   | M      | 1987-07-02 |
|  10016 | 1961-05-02 | Kazuhito   | Cappelletti | M      | 1995-01-27 |
|  10017 | 1958-07-06 | Cristinel  | Bouloucos   | F      | 1993-08-03 |
|  10018 | 1954-06-19 | Kazuhide   | Peha        | F      | 2002-01-01 |
|  10019 | 1953-01-23 | Lillian    | Haddadi     | M      | 1999-04-30 |
|  10020 | 1952-12-24 | Mayuko     | Warwick     | M      | 1991-01-26 |
|  10021 | 1960-02-20 | Ramzi      | Erde        | M      | 1988-02-10 |
|  10022 | 1952-07-08 | Shahaf     | Famili      | M      | 1995-08-22 |
|  10023 | 1953-09-29 | Bob        | Montemayor  | F      | 1989-12-17 |
|  10024 | 1958-09-05 | Suzette    | Pettey      | F      | 2002-01-01 |
|  10025 | 1958-10-31 | Prasadram  | Heyers      | M      | 2002-01-01 |
|  10026 | 1953-04-03 | Yongqiao   | Berztiss    | M      | 1995-03-20 |
|  10027 | 1962-07-10 | Divier     | Reistad     | F      | 1989-07-07 |
|  10028 | 1963-11-26 | Domenick   | Tempesti    | M      | 1991-10-22 |
|  10029 | 1956-12-13 | Otmar      | Herbst      | M      | 1985-11-20 |
|  10030 | 1958-07-14 | Elvis      | Demeyer     | M      | 1994-02-17 |
+--------+------------+------------+-------------+--------+------------+
30 rows in set (0.00 sec)

mysql> DELETE * FROM employees WHERE emp_no IN (10048, 10099, 10234, 20089);
