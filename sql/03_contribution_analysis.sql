-- Contribution analysis by customer segment

SELECT
    segment,
    SUM(revenue) AS total_revenue,
    SUM(marketing_cost) AS total_marketing_cost,
    SUM(variable_cost) AS total_variable_cost,
    SUM(revenue - marketing_cost - variable_cost) AS contribution_margin
FROM core_relief_data
GROUP BY segment
ORDER BY contribution_margin DESC;
