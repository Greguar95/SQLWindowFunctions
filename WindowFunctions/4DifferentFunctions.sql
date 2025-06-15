SELECT Gender, Name, Total,
    ROW_NUMBER() OVER(ORDER BY Total DESC) AS Popularity,
    RANK() OVER(ORDER BY Total DESC) AS pop_rank,
    DENSE_RANK() OVER(ORDER BY Total DESC) AS pop_dense_rank
FROM baby_names