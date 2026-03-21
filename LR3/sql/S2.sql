-- =========================
-- СИТУАЦІЯ 2. Бонусна система клієнтів
-- =========================

-- [SELECT] Перегляд клієнтів
SELECT *
FROM Clients;

-- [INSERT] Реєстрація нового клієнта
INSERT INTO Clients(name, phone)
VALUES ('Альона Кравченко', '+380978941122');

SELECT *
FROM Clients;

-- [UPDATE] Нарахування бонусів клієнту
UPDATE Clients
SET bonus_points = bonus_points + 50
WHERE phone = '+380671112233';

-- [UPDATE] Обнулення бонусів клієнта
UPDATE Clients 
SET bonus_points = 0
WHERE name = 'Наталія Савченко';

-- [DELETE] Видалення неактивного клієнта
DELETE FROM Clients
WHERE phone = '+380683457889' AND bonus_points = 0;

-- [SELECT] Перевірка клієнтів
SELECT *
FROM Clients;