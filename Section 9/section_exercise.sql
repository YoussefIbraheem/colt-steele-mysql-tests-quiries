SELECT COUNT(*) FROM books; -- correct
SELECT released_year , COUNT(*) FROM books GROUP BY released_year; -- correct
SELECT SUM(stock_quantity) FROM books; -- correct
SElECT CONCAT(author_fname," ",author_lname) AS full_name ,
 AVG(released_year) AS avg_released_year FROM books GROUP BY full_name; -- correct
SELECT CONCAT(author_fname," ",author_lname) AS full_name , pages FROM books WHERE pages = (SELECT MAX(pages) FROM books); -- correct
SELECT released_year AS `year` , COUNT(*) AS `# books` , AVG(pages) AS `avg pages` FROM books GROUP BY released_year ORDER BY `year` ASC; -- correct
