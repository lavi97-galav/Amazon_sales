


SELECT COUNT(*) AS unique_rows
FROM (
  SELECT DISTINCT *
  FROM amazon_sales_data
) AS unique_data;

SELECT ROUND(SUM(Weekly_Sales)::numeric, 2) AS total_sales
FROM amazon_sales_data;

SELECT COUNT(DISTINCT Store) AS total_stores
FROM amazon_sales_data;

SELECT ROUND(AVG(Weekly_Sales)::numeric, 2) AS avg_weekly_sales
FROM amazon_sales_data;

SELECT Store, ROUND(SUM(Weekly_Sales)::numeric, 2) AS total_sales
FROM amazon_sales_data
GROUP BY Store
ORDER BY total_sales DESC
LIMIT 10;

SELECT Store, ROUND(SUM(Weekly_Sales)::numeric, 2) AS total_sales
FROM amazon_sales_data
GROUP BY Store
ORDER BY total_sales ASC
LIMIT 10;

SELECT Year, ROUND(SUM(Weekly_Sales)::numeric, 2) AS total_sales
FROM amazon_sales_data
GROUP BY Year
ORDER BY Year;

SELECT Month, ROUND(SUM(Weekly_Sales)::numeric, 2) AS total_sales
FROM amazon_sales_data
GROUP BY Month
ORDER BY Month;

SELECT Week, ROUND(SUM(Weekly_Sales)::numeric, 2) AS total_sales
FROM amazon_sales_data
GROUP BY Week
ORDER BY Week;


SELECT IsHoliday, ROUND(SUM(Weekly_Sales)::numeric, 2) AS total_sales
FROM amazon_sales_data
GROUP BY IsHoliday;



SELECT CASE
         WHEN Total_MarkDown > 10000 THEN 'High Markdown'
         ELSE 'Low Markdown'
       END AS markdown_level,
       ROUND(AVG(Weekly_Sales)::numeric, 2) AS avg_sales
FROM amazon_sales_data
GROUP BY markdown_level
ORDER BY avg_sales DESC;

SELECT Type, ROUND(SUM(Weekly_Sales)::numeric, 2) AS total_sales
FROM amazon_sales_data
GROUP BY Type
ORDER BY total_sales DESC;


SELECT Size, ROUND(AVG(Weekly_Sales)::numeric, 2) AS avg_sales
FROM amazon_sales_data
GROUP BY Size
ORDER BY avg_sales DESC;


SELECT ROUND(MAX(Weekly_Sales)::numeric, 2) AS highest_weekly_sales,
       ROUND(MIN(Weekly_Sales)::numeric, 2) AS lowest_weekly_sales
FROM amazon_sales_data;


SELECT ROUND(AVG(Temperature)::numeric, 2) AS avg_temp,
       ROUND(AVG(Weekly_Sales)::numeric, 2) AS avg_sales
FROM amazon_sales_data;


SELECT Year, Month, ROUND(SUM(Weekly_Sales)::numeric, 2) AS total_sales
FROM amazon_sales_data
GROUP BY Year, Month
ORDER BY total_sales DESC
LIMIT 5;


SELECT ROUND(AVG(Unemployment)::numeric, 2) AS avg_unemployment,
       ROUND(AVG(Weekly_Sales)::numeric, 2) AS avg_sales
FROM amazon_sales_data;


