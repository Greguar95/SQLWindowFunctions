# SQL Window Functions
YouTube: SQL Window Functions by Maven Analytics

## Introduction
I was watching a YouTube video, [Learn SQL FAST by Kedeisha Bryan](https://www.youtube.com/watch?v=mK5IMlZXo08&t=176s), when she mentioned needing to learn SQL Window Functions. So, I looked for a video and found this one: [SQL Window Functions by Maven Analytics](https://www.youtube.com/watch?v=rIcB4zMYMas). I chose to do an end-to-end project with it.

## Task
The task is to learn about SQL Window Functions. I chose to create a new database, table, and columns based on the table in the video. Those files are here: [CreateTable](/CreateTable/). Then, write a few queries using ROW_NUMBER() and OVER() functions [WindowFunctions](/WindowFunctions/). Ultimately answering the question: What are the top 3 names for each gender?

## Tools
- **PostgreSQL**
- **VS Code**
- **github.com**
- **GitHub Desktop**

## Analysis
I used the following SQL query:
```
SELECT * FROM (
    SELECT Gender, Name, Total,
    ROW_NUMBER() OVER(PARTITION BY Gender ORDER BY Total DESC) AS Popularity
    FROM baby_names) AS pop
WHERE Popularity <= 3;
```
Here is the table for the top 3 baby names for each gender:

| Gender | Name     | Total | Popularity |
|--------|----------|-------|------------|
| Boy    | Noah     | 120   | 1          |
| Boy    | Ethan    | 115   | 2          |
| Boy    | Jacob    | 101   | 3          |
| Girl   | Emma     | 106   | 1          |
| Girl   | Isabella | 100   | 2          |
| Girl   | Olivia   | 100   | 3          |


## Learned
I learned how to use the window functions ROW_NUMBER() and OVER(). I learned that ROW_NUMBER() is the function and OVER() defines the window. I also learned the difference between ROW_NUMBER(), RANK(), and DENSE_RANK().

## Conclusion
For boys, Noah is 1st, Ethan is 2nd, and Jacob is 3rd.
For girls, Emma is 1st, Isabella is 2nd, and Olivia is 3rd.