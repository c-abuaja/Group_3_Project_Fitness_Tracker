SELECT 
    Exercise_Type,
    CASE
        WHEN Age BETWEEN 18 AND 20 THEN '18-20'
        WHEN Age BETWEEN 21 AND 30 THEN '21-30'
        WHEN Age BETWEEN 31 AND 40 THEN '31-40'
        WHEN Age BETWEEN 41 AND 50 THEN '41-50'
        WHEN Age BETWEEN 51 AND 59 THEN '51-59'
    END AS Age_Group,
    COUNT(*) AS Total_Records
FROM 
    Fitness_Tracker
WHERE 
    Exercise_Type IS NOT NULL
    AND Age BETWEEN 18 AND 59
GROUP BY 
    Exercise_Type,
    CASE
        WHEN Age BETWEEN 18 AND 20 THEN '18-20'
        WHEN Age BETWEEN 21 AND 30 THEN '21-30'
        WHEN Age BETWEEN 31 AND 40 THEN '31-40'
        WHEN Age BETWEEN 41 AND 50 THEN '41-50'
        WHEN Age BETWEEN 51 AND 59 THEN '51-59'
	END
ORDER BY 
    Exercise_Type,
    Age_Group;
