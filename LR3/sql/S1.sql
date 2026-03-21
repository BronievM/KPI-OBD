-- =========================
-- СИТУАЦІЯ 1. Бюджетне меню
-- =========================

-- [SELECT] Перегляд меню
SELECT *
FROM Menu;

-- [SELECT] Кава дорожча 50 грн
SELECT item_name, price 
FROM Menu
WHERE category = 'Кава'
AND price > 50;

-- [SELECT] Дешеві товари до 55 грн
SELECT item_name, price, category
FROM Menu
WHERE price < 55.00;

-- [INSERT] Додавання нових позицій меню (сценарій: два менеджери паралельно додали нові позиції)
INSERT INTO Menu (item_name, price, category)
VALUES ('Пончікі від Порєва В.М.', 2.00, 'Випічка'), ('Паляніца з сосичкою', 28.00, 'Випічка'), ('Хліб укрАїнський', 30.00, 'Їжа'); 

INSERT INTO Menu (item_name, price, category)
VALUES ('Морозиво шоколадне (Рудь)', 20, 'Десерти'), ('Пончікі від Порєва В.М.', 2.00, 'Випічка'), ('Паляніца з сосичкою', 28.00, 'Випічка'), ('Хліб укрАїнський', 30.00, 'Їжа'); 


-- [UPDATE] Зміна цін на випічку і відповідне позначення
UPDATE Menu
SET price = price * 0.80, item_name = '[АКЦІЯ] | ' || item_name
WHERE category = 'Випічка';

-- [DELETE] Видалення помилково доданих позицій (перше видалить усі)
DELETE FROM Menu
WHERE item_name IN ('[АКЦІЯ] | Пончікі від Порєва В.М.', '[АКЦІЯ] | Паляніца з сосичкою', 'Хліб укрАїнський');

SELECT *
FROM Menu;

INSERT INTO Menu (item_name, price, category)
VALUES ('Пончікі від Порєва В.М.', 2.00, 'Випічка'), ('Паляніца з сосичкою', 28.00, 'Випічка'), ('Хліб укрАїнський', 30.00, 'Їжа'); 

-- Ми можемо застосувати ось це, якщо знаємо ID
-- DELETE FROM Menu
-- WHERE menu_id IN (5,6,7);

-- [SELECT] Перевірка меню
SELECT *
FROM Menu;