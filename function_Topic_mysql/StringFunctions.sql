--ASCII ();
--The ASCII() function returns the ASCII value for the specific character.
SELECT ASCII('HELLO') AS value_of_character;
--The ASCII() function is useful when you need to convert characters to their ASCII values 
-- often for data processing or when comparing character codes directly
SELECT ASCII('$') as values_of_$;
SELECT ASCII( NULL) AS value_of_null;
SELECT ASCII ('') AS empty_string;
SELECT ASCII ('1') AS value_of_number;
SELECT ASCII('Table') AS table_character;

--The CHAR_LENGTH() function return the length of a string (in characters).
SELECT CHAR_LENGTH('Hello World') AS length_of_char;
SELECT CHAR_LENGTH('你好') AS length;
SELECT CHAR_LENGTH(NULL) AS length;
SELECT CHAR_LENGTH('') AS length;
SELECT CHAR_LENGTH ('Table of Content') as length;
SELECT CHAR_LENGTH('Length of Character') AS length_of_string;
SELECT CHAR_LENGTH ('MYSQL') AS length_of_value;

--The CHARACTER_LENGTH() function return the length of a string (in characters).
SELECT CHARACTER_LENGTH('HELLO, WORLD') AS length_of_sentense;
--This function is equal to the CHAR_LENGTH() function.
SELECT CHARACTER_LENGTH('') AS length;
SELECT CHARACTER_LENGTH('THIS IS SENTENCE') AS legnth_count;
SELECT CHARACTER_LENGTH (NULL) AS null_length;
SELECT CHARACTER_LENGTH('7') AS charactr;
SELECT CHARACTER_LENGTH ('THIS IS STRING FUNCTIONS') AS length_of_sentence;

--The CONCAT() function adds two or more expressions together.
SELECT CONCAT ('this ','is ','myself ','MYSQL ') AS concat_the_words;
SELECT CONCAT("SQL ", "Tutorial ", "Is " , "Fun !") AS combine;
SELECT CONCAT("This ","Is ","My ","SQL " ,"Function ","Topic !") AS vale_sql;
SELECT CONCAT('John', ' ', 'Mexcio') AS full_name;


--The CONCAT_WS() function adds two or more expressions together with a separator.
SELECT CONCAT_WS("-", "SQL", "Tutorial", "is", "fun!") AS concatination;
SELECT CONCAT_WS("-","Model","Town","A") AS contatinate_string;
SELECT CONCAT_WS("-","COMBINE","SENTENCES","BY","USING","SEPRATOR") AS fixer;

--The FIELD() function returns the index position of a value in a list of values.
CREATE DATABASE Fruits_db;
USE Fruits_db;
CREATE TABLE fruits (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(60 ) NOT NULL
);
INSERT INTO fruits (name) VALUES("Apple"),("mANGO"),("oRANGE"),("Grapes"),("WaterMelon");
SELECT*FROM fruits;
SELECT id,name
FROM fruits
ORDER BY FIELD(name,"mANGO","oRANGE","Grapes","Apple","WaterMelon");
SELECT FIELD("WaterMelon","Apple","mANGO","oRANGE","Grapes") as POSITION;

CREATE TABLE COLORS(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(60)
);
INSERT INTO COLORS(name) VALUES("red"),("green"),("blue"),("brown"),("pink"),("purple");
SELECT name,
FIELD(name,"green","blue","purple","red","brown") AS POSITION
FROM COLORS;
SELECT name
FROM COLORS
WHERE FIELD(name, 'green', 'purple') > 0;

--The FIND_IN_SET() function returns the position of a string within a list of strings.
CREATE TABLE tasks (
    id INT PRIMARY KEY AUTO_INCREMENT,
    task_name VARCHAR (60),
    tags VARCHAR(225)
);
INSERT INTO tasks (task_name, tags)
VALUES
('Design Logo', 'design,branding,urgent'),
('Code Homepage', 'coding,frontend'),
('Write Blog Post', 'content,writing'),
('Social Media Post', 'marketing,urgent'),
('Debugging', 'coding,backend');
SELECT task_name, tags
FROM tasks
WHERE FIND_IN_SET('urgent',tags)>0;
SELECT task_name, tags
FROM tasks
WHERE FIND_IN_SET('coding', tags) > 0;
SELECT task_name, tags
FROM tasks
WHERE FIND_IN_SET('coding', tags) > 0 AND FIND_IN_SET('frontend', tags) > 0;
SELECT task_name, tags
FROM tasks
ORDER BY FIND_IN_SET('urgent', tags) DESC;
