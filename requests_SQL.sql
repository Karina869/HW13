 SELECT * FROM hillel_qaauto.user_profiles WHERE name LIKE '%am%';

 SELECT MAX(e.totalCost) AS max_expense FROM hillel_qaauto.expenses e
 JOIN hillel_qaauto.cars c ON e.carId = c.id
 JOIN hillel_qaauto.car_brands cb ON c.carBrandId = cb.id
 WHERE cb.title = 'Audi';

SELECT cb.id AS car_id, COUNT(cm.id) AS count_models FROM hillel_qaauto.car_brands cb
LEFT JOIN hillel_qaauto.cars c ON cb.id = c.carBrandId
LEFT JOIN hillel_qaauto.car_models cm ON c.carModelId = cm.id
WHERE cb.title IN ('Audi', 'BMW')
GROUP BY cb.id;

SELECT cm.title AS car_model, cb.title AS car_brand, COUNT(u.id) AS user_count FROM hillel_qaauto.cars c
JOIN hillel_qaauto.car_models cm ON c.carModelId = cm.id
JOIN hillel_qaauto.car_brands cb ON c.carBrandId = cb.id
JOIN hillel_qaauto.users u ON c.userId = u.id
GROUP BY cm.title, cb.title;

SELECT up.name AS user_name FROM hillel_qaauto.cars c
JOIN hillel_qaauto.user_profiles up ON c.userId = up.userId
LIMIT 0, 1000;