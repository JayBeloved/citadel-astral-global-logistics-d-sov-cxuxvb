-- -- Task 1: Inspect dirty trailing spaces on hub_id
-- SELECT shipment_id, waybill_number, hub_id, LENGTH(hub_id) AS raw_len, LENGTH(TRIM(hub_id)) AS clean_len
-- FROM staging_raw_intake
-- WHERE hub_id != TRIM(hub_id);

-- Task 2: Find colliding waybills causing ledger fan-out
SELECT waybill_number, COUNT(*) AS record_count
FROM staging_raw_intake
GROUP BY waybill_number
HAVING COUNT(*) > 1;