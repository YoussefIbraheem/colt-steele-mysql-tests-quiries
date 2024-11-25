-- FALSE
-- TRUE
-- TRUE

SELECT * FROM books WHERE released_year < 1980;
SELECT * FROM books WHERE author_lname IN('Eggers','Chabon');
SELECT * FROM books WHERE author_lname = 'Lahiri' AND released_year >= 2000;
SELECT * FROM books WHERE pages BETWEEN 100 AND 200;
SELECT * FROM books WHERE author_lname LIKE "C%" OR author_lname LIKE "S%";

SELECT *,
    CASE
        WHEN title LIKE '%Just Kids%' OR title LIKE '%A Heartbreaking Work%' THEN 'Memoir'
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        ELSE 'Novel'
    END AS `Type` FROM books;
    
    
SELECT author_fname, author_lname , 
CASE 
WHEN COUNT(*) = 1 THEN CONCAT(COUNT(*)," ","book")
ELSE CONCAT(COUNT(*)," ","books")
END AS `COUNT`
FROM books GROUP BY author_fname, author_lname;
    
    
    