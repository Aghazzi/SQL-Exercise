SELECT name FROM students;
SELECT * FROM students WHERE Age>30;
SELECT * FROM students WHERE Age=30 AND Gender= "F";
SELECT Points FROM students WHERE  name= "ALEX";
INSERT INTO "main"."students"("ID","Name","Age","Gender","Points") VALUES (7,'Ahmad',24,'M',100);
UPDATE students SET Points= Points+100 WHERE name="Basma"
UPDATE students SET Points= Points-100 WHERE name="Alex"

CREATE TABLE "graduates" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	INTEGER,
	"Gender"	TEXT,
	"Points"	INTEGER,
	"Graduation"	TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
);

INSERT INTO "main"."graduates" ("Name", "Age", "Gender", "Points") VALUES ('Layal', 18, 'F', 350);

UPDATE "main"."graduates" SET "Graduation"="2018-09-08" WHERE "name"="Layal"

DELETE FROM "main"."students" WHERE _rowid_ IN ('4');

SELECT employees.name, companies.name, companies.Date
FROM employees
INNER JOIN companies ON employees.Company = companies.Name;

SELECT employees.name
FROM employees
INNER JOIN companies ON employees.Company = companies.name
WHERE companies.Date<2000;

SELECT companies.name
FROM employees
INNER JOIN companies ON employees.Company = companies.name
WHERE employees.Role="Graphic Designer";
