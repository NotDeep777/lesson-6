--create a nomnom table if not exist
CREATE TABLE IF NOT EXISTS nomnom (
    NAME TEXT,
    NEIGHBOURHOOD TEXT,
    CUISINE TEXT,
    REVIEW REAL,
    PRICE REAL,
    HEALTH TEXT
);

--Insert sample data into the nomnom table
INSERT INTO nomnom (NAME,NEIGHBOURHOOD,CUISINE,REVIEW,PRICE,HEALTH) VALUES

('Peter', 'Brooklyn', 'Steak', 4.4, '$$$$', 'A'),
('Jongro', 'Midtown', 'Korean', 3.5, '$$', 'A'),
('Pocha', 'Midtown', 'Pizza', 4, '$$$', 'B'),
('Lighthouse', 'Queens', 'Chinese', 3.9, '$', 'A'),
('Minca', 'Downtown', 'American', 4.6, '$$$', ''),
('Marea', 'Chinatown', 'Chinese', 3.0, '$$', ''),
('Dirty Candy', 'Uptown', 'Italian', 4.9, '$$$$', 'B'),
('Di Fara Pizza', 'Brooklyn', 'Pizza', 3.8, '$$$', 'A'),
('Golden Unicorn', 'Uptown', 'Italian', 3.8, '$$', 'A');

--SELECT RECORD FROM nomnom TABLE
SELECT * FROM nomnom;

--SELECT DISTINCT NEIGHBOURHOOD FROM THE nomnom TABLE 
SELECT DISTINCT NEIGHBOURHOOD FROM nomnom;

--SELECT DISTINCT CUISINE FROM THE nomnom TABLE 
SELECT DISTINCT CUISINE FROM nomnom;

--SELECT ALL RECORDS WITH CHINESE CUISINE
SELECT * FROM nomnom WHERE CUISINE ='CHINESE';

--Select all records with a review rating of 4 or higher 
SELECT * FROM nomnom WHERE REVIEW >= 4;

--Select all records with Italian cuisine and $$$ price 
SELECT * FROM nomnom WHERE CUISINE = 'Italian' AND PRICE = '$$$';

--Select all records where the name contains 'Candy' 
SELECT * FROM nomnom WHERE NAME LIKE '%Candy%';

--Select all records where the neighborhood is Midtown, Downtown, or Chinatown
SELECT * FROM nomnom
WHERE NEIGHBOURHOOD IN ('Midtown', 'Downtown', 'Chinatown');

--SELECT THE TOP 4 RECORD ORDERED BY REVIEW RATING IN DESENDING ORDER
SELECT * FROM nomnom ORDER BY REVIEW DESC LIMIT 4;