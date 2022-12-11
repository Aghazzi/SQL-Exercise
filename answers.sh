SELECT name FROM students;
SELECT * FROM students WHERE Age>30;
SELECT * FROM students WHERE Age=30 AND Gender= "F";
SELECT Points FROM students WHERE  name= "ALEX";
INSERT INTO "main"."students"("ID","Name","Age","Gender","Points") VALUES (7,'Ahmad',24,'M',100);
UPDATE students SET Points= Points+100 WHERE name="Basma"
UPDATE students SET Points= Points-100 WHERE name="Alex"
