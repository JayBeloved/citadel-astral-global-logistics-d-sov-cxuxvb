-- View of quaratine_exception
-- SELECT order_id, customer_id,
--     UPPER(TRIM(order_status)) AS clean_order_status,
--     TRIM(origin_hub_id) AS clean_origin_hub,
--     TRIM(destination_hub_id) AS clean_destination_hub,
--     order_date, package_count,total_weight_kg,declared_value_usd
-- FROM orders AS o
-- WHERE o.package_count < 0


-- -- -- View of clean_orders
-- SELECT order_id, 
--         TRIM(customer_id) AS clean_customer_id,
--         UPPER(TRIM(order_status)) AS clean_order_status,
--         TRIM(origin_hub_id) AS clean_origin_hub,
--         TRIM(destination_hub_id) AS clean_destination_hub,
--         order_date, package_count,total_weight_kg,declared_value_usd
-- FROM orders AS o
-- WHERE o.package_count >= 0;

-- Query quarating exceptions for count and total
SELECT COUNT(*) AS total_negative_packages,
        SUM(package_count) AS total_variance
FROM orders AS o
WHERE o.package_count < 0;