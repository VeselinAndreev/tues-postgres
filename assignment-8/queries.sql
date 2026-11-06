-- returns all inventory information for equipment in room 1,
-- ordered by kind.
SELECT * FROM inventory WHERE room = 1 ORDER BY kind

-- oldest first.
-- returns all inventory information for equipment purchased
-- more than 5 years ago, ordered from oldest to newest.
SELECT * FROM inventory WHERE purchasedate < CURRENT_DATE - INTERVAL '5 years' ORDER BY purchasedate ASC
