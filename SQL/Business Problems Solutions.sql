SELECT COUNT(*) FROM blinkit_data;

SELECT * FROM blinkit_data;


-- 1. Update the column values like LF or low fat into Low Fat

UPDATE blinkit_data
SET item_fat_content = 
CASE 
WHEN item_fat_content IN  ('LF','low fat') THEN 'Low Fat'
WHEN item_fat_content IN ('reg') THEN 'Regular'
ELSE item_fat_content
END 

SELECT DISTINCT(item_fat_content) FROM blinkit_data


-- 2. Find Total Sales 

SELECT 
	CAST(SUM(sales) /1000000 AS DECIMAL(10,2)) AS Total_sales_in_millions
FROM blinkit_data


-- 3. Find Average Sales 

SELECT 
	ROUND(AVG(sales),2) AS average_sales
FROM blinkit_data;


-- 4. Find the total count of different items sold 

SELECT 
	COUNT(*) AS total_count
FROM blinkit_data;


-- 5. Find average ratings 

SELECT 
 	ROUND(AVG(rating),2) AS average_ratings
FROM blinkit_data


-- 6. Total sales by Fat content and access how other KPIs (average sales, number of items, average ratings vary with fat content)


SELECT 
	item_fat_content,
	CAST(SUM(sales) /1000 AS DECIMAL(10,2)) AS total_sales_thousands,
	ROUND(AVG(sales),2) AS average_sales,
	COUNT(*) AS total_count,
	ROUND(AVG(rating),2) AS average_ratings
FROM blinkit_data
GROUP BY 1
ORDER BY 2 DESC


-- 7 Total sales by Item Types and access how other KPIs (average sales, number of items, average ratings vary with item types )


SELECT 
	item_type,
	CAST(SUM(sales) /1000 AS DECIMAL(10,2)) AS total_sales_thousands,
	ROUND(AVG(sales),2) AS average_sales,
	COUNT(*) AS total_count,
	ROUND(AVG(rating),2) AS average_ratings
FROM blinkit_data
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;


-- 8. Total Sales by Outlet Establishment 


SELECT 
	outlet_establishment_year,
	CAST(SUM(sales) /1000 AS DECIMAL(10,2)) AS total_sales_thousands,
	ROUND(AVG(sales),2) AS average_sales,
	COUNT(*) AS total_count,
	ROUND(AVG(rating),2) AS average_ratings
FROM blinkit_data
GROUP BY 1
ORDER BY 2 DESC;


-- 9. Find sales by outlet_location_type and item_fat_content 


SELECT
    outlet_location_type,
    COALESCE(CAST(SUM(CASE WHEN item_fat_content = 'Low Fat' THEN sales END) / 1000 AS DECIMAL(10,2)), 0) 
	AS low_fat_sales_thousands,
    COALESCE(CAST(SUM(CASE WHEN item_fat_content = 'Regular' THEN sales END) / 1000 AS DECIMAL(10,2)), 0) 
	AS regular_sales_thousands
FROM blinkit_data
GROUP BY outlet_location_type
ORDER BY outlet_location_type;


-- 10. Percentage of sales by outlet_size 

SELECT 
	outlet_size,
	ROUND(SUM(sales),2) AS Total_sales,
	ROUND((SUM(sales)::decimal / SUM(SUM(sales)) OVER()) * 100,2) AS Percentage
FROM blinkit_data
GROUP BY 1
ORDER BY 2 DESC


-- 11. Sales by Outlet Location 

SELECT 
	outlet_location_type,
	CAST(SUM(sales) /1000 AS DECIMAL(10,2)) AS total_sales_thousands,
	ROUND(AVG(sales),2) AS average_sales,
	COUNT(*) AS total_count,
	ROUND(AVG(rating),2) AS average_ratings
FROM blinkit_data
GROUP BY 1
ORDER BY 2 DESC;


-- 12. Total SAles by Outlet Type


SELECT 
	outlet_type,
	CAST(SUM(sales) /1000 AS DECIMAL(10,2)) AS total_sales_thousands,
	ROUND(AVG(sales),2) AS average_sales,
	COUNT(*) AS total_count,
	ROUND(AVG(rating),2) AS average_ratings
FROM blinkit_data
GROUP BY 1
ORDER BY 2 DESC;