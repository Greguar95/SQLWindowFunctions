SELECT Gender, Name, Total,
    ROW_NUMBER() OVER(ORDER BY Total DESC) AS Popularity
FROM baby_names