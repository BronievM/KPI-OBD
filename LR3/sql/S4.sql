-- =========================
-- СИТУАЦІЯ 4. Склад інгредієнтів
-- =========================

-- [SELECT] Критичні залишки інгредієнтів
SELECT i.name, inv.quantity_in_stock, i.min_stock_level
FROM Ingredients i
JOIN Inventory inv ON i.ingredient_id = inv.ingredient_id
WHERE inv.quantity_in_stock < i.min_stock_level;

-- [UPDATE] Фіксація поповнення залишків на складі після прийому товару
UPDATE Inventory
SET quantity_in_stock = quantity_in_stock + 20
WHERE ingredient_id = 1;

SELECT *
FROM Ingredients;

DELETE FROM Ingredients
WHERE name = 'Сироп Диня';

SELECT *
FROM Ingredients;

-- [INSERT] Додавання нового інгредієнта
INSERT INTO Ingredients (name, unit, min_stock_level)
VALUES ('Мигдалеве молоко', 'л', 7);

-- [SELECT] Перевірка інгредієнтів
SELECT *
FROM Ingredients;