USE sales;
DESCRIBE sales_data;

SELECT COUNT(DISTINCT prospect_id)
FROM sales_data;
SELECT DISTINCT region
FROM sales_data;
SELECT DISTINCT access_channel
FROM sales_data;
SELECT DISTINCT lead_source
FROM sales_data;

SELECT AVG(total_cost)
FROM sales_data;


SELECT funnel_stage, COUNT(DISTINCT prospect_id) as prospect_counts
FROM sales_data
GROUP BY funnel_stage
ORDER BY funnel_stage;

SELECT lead_source, COUNT(DISTINCT prospect_id) as prospect_counts
FROM sales_data
GROUP BY lead_source
ORDER BY lead_source;

SELECT lead_source, 
COUNT(DISTINCT prospect_id) as prospect_counts, 
SUM(revenue) as total_revenue
FROM sales_data
GROUP BY lead_source
ORDER BY total_revenue DESC;

SELECT lead_source, 
COUNT(DISTINCT prospect_id) as total_prospects, 
SUM(revenue) as total_revenue,
COUNT(DISTINCT CASE WHEN services_purchased > 0 THEN prospect_id END) as converted_prospects,
COUNT(DISTINCT CASE WHEN services_purchased > 0 THEN prospect_id END)*100/COUNT(DISTINCT prospect_id) as conversion_rate
FROM sales_data
GROUP BY lead_source
ORDER BY total_revenue DESC;


WITH channel_summary AS (
    SELECT
        access_channel,
        COUNT(DISTINCT prospect_id) AS total_prospects,
        SUM(revenue) AS total_revenue,
        COUNT(DISTINCT CASE WHEN services_purchased > 0 THEN prospect_id END) AS converted_prospects
    FROM sales_data
    GROUP BY access_channel
)
SELECT
    access_channel,
    total_prospects,
    total_revenue,
    converted_prospects,
    (converted_prospects * 100 / total_prospects) AS conversion_rate
FROM channel_summary
ORDER BY total_revenue DESC;


WITH region_summary AS (
    SELECT
        region,
        COUNT(DISTINCT prospect_id) AS total_prospects,
        SUM(revenue) AS total_revenue,
        COUNT(DISTINCT CASE WHEN services_purchased > 0 THEN prospect_id END) AS converted_prospects
    FROM sales_data
    GROUP BY region
)
SELECT
    region,
    total_prospects,
    total_revenue,
    converted_prospects,
    (converted_prospects * 100 / total_prospects) AS conversion_rate
FROM region_summary
ORDER BY total_revenue DESC;


WITH customer_summary AS (
      SELECT 
      lead_source,
      COUNT(DISTINCT prospect_id) as total_customers,
      SUM(total_cost) as total_acquisition_cost,
      SUM(revenue) as total_revenue
      FROM sales_data
      GROUP BY lead_source
)
SELECT lead_source,
total_customers, total_acquisition_cost, total_revenue,
(total_acquisition_cost/total_customers) as CAC,
(total_revenue/total_customers) as LTV,
((total_revenue-total_acquisition_cost)*100/total_acquisition_cost) as ROI
FROM customer_summary
ORDER BY ROI DESC;

SELECT
    COUNT(DISTINCT prospect_id) AS total_customers,
    SUM(total_cost) AS total_acquisition_cost,
    SUM(total_cost) / COUNT(DISTINCT prospect_id) AS total_CAC
FROM sales_data;


SELECT
    COUNT(DISTINCT prospect_id) AS total_customers,
    SUM(revenue) AS total_revenue,
    SUM(revenue) / COUNT(DISTINCT prospect_id) AS total_LTV
FROM sales_data;


SELECT
     SUM(revenue) AS total_revenue,
     SUM(total_cost) AS total_acquisition_cost,
     (SUM(revenue) - SUM(total_cost)) * 100.0 / SUM(total_cost) AS total_ROI
FROM sales_data;


SELECT
    SUM(revenue) AS total_revenue,
    SUM(total_cost) AS total_acquisition_cost,
    (SUM(revenue)/ SUM(total_cost)) AS LTV_to_CAC_ratio
FROM sales_data;