-- Connect your SQL editor to marucraft_project before running this query.
SELECT *
FROM marucraft_orders
LIMIT 5;


SELECT COUNT(*) FROM marucraft_orders;

-- 1. Which products generate the most revenue?
SELECT product_name,ROUND(sum(revenue)::NUMERIC,2) as total_revenue from marucraft_orders
group by product_name
ORDER BY total_revenue DESC 
limit 10;

-- 2. Top Categories by Profit
SELECT category,ROUND(sum(profit)::NUMERIC,2) as total_profit from marucraft_orders
group by category
ORDER BY total_profit DESC 
limit 10;

-- 3. Top Products by Profit?
SELECT product_name,ROUND(sum(profit)::NUMERIC,2) as total_profit from marucraft_orders
group by product_name
ORDER BY total_profit DESC 
limit 10;

-- 4. Are higher discounts associated with lower margins?
SELECT CASE
 when(discount_pct)<=.05 then '0-5%'
 when(discount_pct)<=.10 then '5-10%'
 when(discount_pct)<=.15 then '10-15%'
 when(discount_pct)<=.20 then '15-20%'
 else '>20%' 
end as discount_range,avg(margin_pct) as average_margin_pct
from marucraft_orders
GROUP BY discount_range
ORDER BY MIN(discount_pct);

-- 5. Which sales channels have the most returns
 
SELECT
    sales_channel,
    COUNT(*) AS total_orders,
    SUM(is_returned) AS returned_orders,
    ROUND(
        (SUM(is_returned)::numeric / COUNT(*)) * 100,
        2
    ) AS return_rate_pec
FROM marucraft_orders
GROUP BY sales_channel
ORDER BY return_rate_pec DESC;

--6. How does performance change month by month?
SELECT
    month_name_year,
    ROUND(SUM(revenue)::numeric, 2) AS total_revenue,
    ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM marucraft_orders
GROUP BY month_name_year,year_month
order BY year_month;

-- 7.Which sales channels generate the highest profit margin?

SELECT
    sales_channel,
    SUM(profit) AS total_profit,
    SUM(revenue) AS total_revenue,
    ROUND(
        SUM(profit)::NUMERIC * 100.0 /
        SUM(revenue)::NUMERIC,
        2
    ) AS profit_margin_pct
FROM marucraft_orders
GROUP BY sales_channel
ORDER BY profit_margin_pct DESC;

-- 8. Category-wise Return Rate
SELECT
    category,
    ROUND(AVG(is_returned)*100,2) AS return_rate_pct
FROM marucraft_orders
GROUP BY category
ORDER BY return_rate_pct DESC;

-- 9. Average Delivery Days
SELECT
    sales_channel,
    ROUND(AVG(delivery_days)::NUMERIC,2) AS avg_delivery_days
FROM marucraft_orders
WHERE delivery_days IS NOT NULL
GROUP BY sales_channel
ORDER BY avg_delivery_days;

-- 10. Acquisition Channel Analysis

SELECT
    acquisition_channel,
    COUNT(*) AS total_orders,
    ROUND(SUM(revenue)::NUMERIC,2) AS total_revenue,
    ROUND(SUM(profit)::NUMERIC,2) AS total_profit
FROM marucraft_orders
GROUP BY acquisition_channel
ORDER BY total_orders DESC;