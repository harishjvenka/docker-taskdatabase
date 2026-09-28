-- Create database
CREATE DATABASE IF NOT EXISTS tfi_heroes;
USE tfi_heroes;

-- Create table for TFI heroes
CREATE TABLE IF NOT EXISTS heroes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    nickname VARCHAR(100),
    debut_year INT,
    salary_crores DECIMAL(10, 2),
    salary_per_movie_crores DECIMAL(10, 2),
    remuneration_type VARCHAR(50),
    status VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Insert TFI heroes data
INSERT INTO heroes (name, nickname, debut_year, salary_crores, salary_per_movie_crores, remuneration_type, status) VALUES
('Prabhas', 'Darling', 2002, 150.00, 150.00, 'Per Movie', 'Pan India Star'),
('Allu Arjun', 'Stylish Star', 2003, 120.00, 120.00, 'Per Movie', 'Pan India Star'),
('Mahesh Babu', 'Prince', 1999, 100.00, 100.00, 'Per Movie', 'Superstar'),
('Pawan Kalyan', 'Power Star', 1996, 100.00, 100.00, 'Per Movie', 'Power Star'),
('Jr NTR', 'Man of Masses', 2001, 80.00, 80.00, 'Per Movie', 'Pan India Star'),
('Ram Charan', 'Mega Power Star', 2007, 80.00, 80.00, 'Per Movie', 'Pan India Star'),
('Vijay Deverakonda', 'Rowdy', 2011, 40.00, 40.00, 'Per Movie', 'Youth Icon'),
('Nani', 'Natural Star', 2008, 35.00, 35.00, 'Per Movie', 'Natural Star'),
('Rana Daggubati', 'Bhallaladeva', 2010, 30.00, 30.00, 'Per Movie', 'Versatile Actor'),
('Naga Chaitanya', 'Yuva Samrat', 2009, 25.00, 25.00, 'Per Movie', 'Akkineni Hero'),
('Ram Pothineni', 'Energetic Star', 2006, 20.00, 20.00, 'Per Movie', 'Energetic Star'),
('Sai Dharam Tej', 'Supreme Hero', 2014, 18.00, 18.00, 'Per Movie', 'Mega Family Hero'),
('Nithiin', 'Nithiin', 2002, 15.00, 15.00, 'Per Movie', 'Romantic Hero'),
('Sharwanand', 'Sharwa', 2004, 12.00, 12.00, 'Per Movie', 'Versatile Actor'),
('Adivi Sesh', 'Sesh', 2010, 10.00, 10.00, 'Per Movie', 'Content Hero'),
('Sundeep Kishan', 'Sundeep', 2011, 8.00, 8.00, 'Per Movie', 'Emerging Hero'),
('Naveen Polishetty', 'Naveen', 2019, 8.00, 8.00, 'Per Movie', 'Comedy Star'),
('Kiran Abbavaram', 'Kiran', 2019, 5.00, 5.00, 'Per Movie', 'Emerging Hero'),
('Vishwak Sen', 'Vishwak', 2019, 7.00, 7.00, 'Per Movie', 'Emerging Hero'),
('Bellamkonda Sai Sreenivas', 'Sai Sreenivas', 2016, 6.00, 6.00, 'Per Movie', 'Emerging Hero');

-- Create table for movies and their box office collection
CREATE TABLE IF NOT EXISTS movies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hero_id INT,
    movie_name VARCHAR(200) NOT NULL,
    release_year INT,
    box_office_crores DECIMAL(10, 2),
    budget_crores DECIMAL(10, 2),
    verdict VARCHAR(50),
    FOREIGN KEY (hero_id) REFERENCES heroes(id) ON DELETE CASCADE
);

-- Insert movie data
INSERT INTO movies (hero_id, movie_name, release_year, box_office_crores, budget_crores, verdict) VALUES
(1, 'Baahubali 2: The Conclusion', 2017, 1800.00, 250.00, 'Blockbuster'),
(1, 'Salaar: Part 1 – Ceasefire', 2023, 615.00, 270.00, 'Hit'),
(1, 'Kalki 2898 AD', 2024, 1100.00, 600.00, 'Blockbuster'),
(2, 'Pushpa: The Rise', 2021, 365.00, 200.00, 'Blockbuster'),
(2, 'Pushpa 2: The Rule', 2024, 1800.00, 500.00, 'Blockbuster'),
(2, 'Ala Vaikunthapurramuloo', 2020, 262.00, 100.00, 'Blockbuster'),
(3, 'Srimanthudu', 2015, 185.00, 80.00, 'Blockbuster'),
(3, 'Sarileru Neekevvaru', 2020, 260.00, 100.00, 'Blockbuster'),
(3, 'Guntur Kaaram', 2024, 165.00, 200.00, 'Average'),
(4, 'Vakeel Saab', 2021, 137.00, 110.00, 'Hit'),
(4, 'Bheemla Nayak', 2022, 180.00, 120.00, 'Hit'),
(5, 'RRR', 2022, 1200.00, 550.00, 'Blockbuster'),
(5, 'Devara: Part 1', 2024, 400.00, 300.00, 'Hit'),
(6, 'RRR', 2022, 1200.00, 550.00, 'Blockbuster'),
(6, 'Game Changer', 2025, 200.00, 200.00, 'Average'),
(7, 'Arjun Reddy', 2017, 51.00, 5.00, 'Blockbuster'),
(7, 'Geetha Govindam', 2018, 130.00, 15.00, 'Blockbuster'),
(7, 'Liger', 2022, 70.00, 125.00, 'Flop'),
(8, 'Jersey', 2019, 65.00, 22.00, 'Blockbuster'),
(8, 'Dasara', 2023, 100.00, 50.00, 'Hit'),
(9, 'Baahubali: The Beginning', 2015, 650.00, 180.00, 'Blockbuster'),
(10, 'Majili', 2019, 60.00, 25.00, 'Hit'),
(11, 'iSmart Shankar', 2019, 90.00, 30.00, 'Blockbuster'),
(12, 'Republic', 2021, 30.00, 25.00, 'Average'),
(15, 'Major', 2022, 120.00, 35.00, 'Blockbuster'),
(15, 'HIT: The Second Case', 2022, 45.00, 20.00, 'Hit'),
(17, 'Jathi Ratnalu', 2021, 75.00, 8.00, 'Blockbuster'),
(19, 'Falaknuma Das', 2019, 25.00, 10.00, 'Average');

-- Query: Display all heroes with their salaries in descending order
SELECT name, nickname, salary_per_movie_crores AS salary_in_crores, status
FROM heroes
ORDER BY salary_per_movie_crores DESC;

-- Query: Display heroes with their total box office collection
SELECT h.name, h.nickname, 
       COUNT(m.id) AS total_movies,
       SUM(m.box_office_crores) AS total_box_office_crores,
       AVG(m.box_office_crores) AS avg_box_office_crores
FROM heroes h
LEFT JOIN movies m ON h.id = m.hero_id
GROUP BY h.id
ORDER BY total_box_office_crores DESC;

-- Query: Display blockbusters along with hero names
SELECT h.name AS hero_name, m.movie_name, m.release_year, 
       m.box_office_crores, m.verdict
FROM heroes h
JOIN movies m ON h.id = m.hero_id
WHERE m.verdict = 'Blockbuster'
ORDER BY m.box_office_crores DESC;

-- Query: Top 5 highest paid heroes
SELECT name, nickname, salary_per_movie_crores
FROM heroes
ORDER BY salary_per_movie_crores DESC
LIMIT 5;

-- Query: Heroes and their movie count
SELECT h.name, COUNT(m.id) AS movie_count
FROM heroes h
LEFT JOIN movies m ON h.id = m.hero_id
GROUP BY h.id
ORDER BY movie_count DESC;
