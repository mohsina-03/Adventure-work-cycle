SELECT * FROM adventure_work;
SELECT COUNT(*) AS TotalRows FROM book2;
 use sales;
 
 
 -- total sales 
 SELECT CONCAT(ROUND(SUM(SalesAmount)/1000000,2),"M") 
 AS TotalSales
FROM adventure_work;

-- TOTAL PROFIT 
 SELECT 
 CONCAT(ROUND(SUM(Profit) / 1000000, 1), ' M')
 AS Total_Profit
FROM adventure_work;

-- PROFIT MARGIN
SELECT 
     ROUND((SUM(SALESAMOUNT - TOTALPRODUCTCOST) / SUM(SALESAMOUNT)) * 100 , 2) 
AS PROFITMARGIN 
FROM ADVENTURE_WORK;



-- TOP 5 PRODUCT BY SALES 
SELECT PRODUCT_NAME,
 concat(ROUND(sum(SALESAMOUNT)/1000000, 2),"M") AS PRODUCTSALES
FROM ADVENTURE_WORK
WHERE PRODUCT_NAME IS NOT NULL 
GROUP BY PRODUCT_NAME
ORDER BY SUM(SALESAMOUNT) DESC
LIMIT 5;



-- TOP 10 CUSTOMERNAME 
SELECT 
    Customer_Name, 
    round(SUM(SalesAmount),0) AS TotalSales
FROM adventure_work
WHERE Customer_Name IS NOT NULL
GROUP BY Customer_Name
ORDER BY TotalSales DESC
LIMIT 10;

-- sales by region 
SELECT 
    Region, 
    CONCAT(ROUND(SUM(SalesAmount) / 1000000, 2), 'M') AS TotalSales
FROM adventure_work
WHERE Region IS NOT NULL
GROUP BY Region
ORDER BY SUM(SalesAmount) DESC;


