SELECT * FROM (
    SELECT Gender, Name, Total,
    ROW_NUMBER() OVER(PARTITION BY Gender ORDER BY Total DESC) AS Popularity
    FROM baby_names) AS pop
WHERE Popularity <= 3;