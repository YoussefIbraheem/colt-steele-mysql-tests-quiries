SELECT title, rating FROM series
JOIN reviews ON series.id = reviews.series_id;


SELECT series.title , ROUND(AVG(reviews.rating)) AS average_rating FROM series 
JOIN reviews ON reviews.series_id = series.id GROUP BY series.id 
ORDER BY average_rating;

SELECT 
    reviewers.first_name, reviewers.last_name, reviews.rating
FROM
    reviewers
        JOIN
    reviews ON reviews.reviewer_id = reviewers.id;
    
    
    SELECT 
    series.title AS unreviewed_series
FROM
    series
        LEFT JOIN
    reviews ON reviews.series_id = series.id
WHERE
    reviews.rating IS NULL
GROUP BY series.id;


SELECT 
    series.genre, AVG(reviews.rating)
FROM
    series
        JOIN
    reviews ON reviews.series_id = series.id
GROUP BY series.genre;


SELECT reviewers.first_name , reviewers.last_name , 
COUNT(reviews.rating)  AS `COUNT` , 
IFNULL(MIN(reviews.rating) , 0) AS `MIN` , 
IFNULL(MAX(reviews.rating) , 0) AS `MAX` , 
IFNULL(AVG(reviews.rating) , 0) AS `AVG` , 
CASE WHEN AVG(reviews.rating) > 0 THEN 'ACTIVE' ELSE 'INACTIVE' END AS `STATUS` 
FROM reviewers 
LEFT JOIN reviews ON reviews.reviewer_id = reviewers.id 
GROUP BY reviewers.id;

-- USING IF 
SELECT 
    first_name,
    last_name,
    COUNT(rating) AS count,
    IFNULL(MIN(rating), 0) AS min,
    IFNULL(MAX(rating), 0) AS max,
    ROUND(IFNULL(AVG(rating), 0), 2) AS average,
    IF(COUNT(rating) > 0,
        'ACTIVE',
        'INACTIVE') AS status
FROM
    reviewers
        LEFT JOIN
    reviews ON reviewers.id = reviews.reviewer_id
GROUP BY first_name , last_name;

SELECT 
    series.title,
    reviews.rating,
    CONCAT(reviewers.first_name,
            ' ',
            reviewers.last_name) AS full_name
FROM
    series
        JOIN
    reviews ON reviews.series_id = series.id
        JOIN
    reviewers ON reviews.reviewer_id = reviewers.id
ORDER BY series.title;
