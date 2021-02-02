Difference between nullif and ifnull
====================================
SELECT NULLIF(2,2);

Sample Output:

mysql> SELECT NULLIF(2,2);
+-------------+
| NULLIF(2,2) |
+-------------+
|        NULL | 
+-------------+
1 row in set (0.03 sec)
Example : MySQL NULLIF() function with unequal arguments

In the following MySQL statement since expressions are not equal, it returns the first expression, i.e. 2.

Code:

SELECT NULLIF(2,3);

Sample Output:

 mysql> SELECT NULLIF(2,3);
+-------------+
| NULLIF(2,3) |
+-------------+
|           2 | 
+-------------+
1 row in set (0.00 sec)
 
SELECT IFNULL(0,2);

Sample Output:

mysql> SELECT IFNULL(0,2);
+-------------+
| IFNULL(0,2) |
+-------------+
|           0 | 
+-------------+
1 row in set (0.03 sec)
Example: IFNULL() function with non zero 1st argument

The following MySQL statement returns the first expression, i.e. 1, since the first expression is not NULL.

Code:

SELECT IFNULL(1,2);

Sample Output:

mysql> SELECT IFNULL(1,2);
+-------------+
| IFNULL(1,2) |
+-------------+
|           1 | 
+-------------+
1 row in set (0.00 sec)
Example: IFNULL() function NULL

The following MySQL statement returns the second expression, i.e. 2, since the first expression is NULL.

Code:

SELECT IFNULL(NULL,2);

Sample Output:

mysql> SELECT IFNULL(NULL,2);
+----------------+
| IFNULL(NULL,2) |
+----------------+
|              2 | 
+----------------+
1 row in set (0.00 sec)

====================================================
1)Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.

Input Format

The OCCUPATIONS table is described as follows:



Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

Sample Input



Sample Output

Jenny    Ashley     Meera  Jane
Samantha Christeen  Priya  Julia
NULL     Ketty      NULL   Maria
Ans:
====
set @r1=0, @r2=0, @r3=0, @r4=0;
select min(Doctor), min(Professor), min(Singer), min(Actor)
from(
  select case when Occupation='Doctor' then (@r1:=@r1+1)
            when Occupation='Professor' then (@r2:=@r2+1)
            when Occupation='Singer' then (@r3:=@r3+1)
            when Occupation='Actor' then (@r4:=@r4+1) end as RowNumber,
    case when Occupation='Doctor' then Name end as Doctor,
    case when Occupation='Professor' then Name end as Professor,
    case when Occupation='Singer' then Name end as Singer,
    case when Occupation='Actor' then Name end as Actor
  from OCCUPATIONS
  order by Name
) Temp
group by RowNumber


2)