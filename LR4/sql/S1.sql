--Агрегаційні функції
-- 1. Загальна кількість співробітників
--SELECT COUNT(*) AS total_employees FROM Employees;

-- 2. Загальна кількість клієнтів у базі
--SELECT COUNT(client_id) AS total_clients FROM Clients;

-- 3. Середня ціна позиції в меню
--SELECT AVG(price) AS average_price FROM Menu;

-- 4. Найдорожча позиція в меню
--SELECT MAX(price) AS max_price FROM Menu;

-- 5. Мінімальна кількість бонусних балів серед клієнтів (крім 0)
--SELECT MIN(bonus_points) FROM Clients WHERE bonus_points > 0;

-- 6. Загальна сума всіх зроблених замовлень (виручка)
--SELECT SUM(total_price) AS total_revenue FROM Orders;

-- 7. Кількість товарів у кожній категорії меню
--SELECT category, COUNT(*) FROM Menu GROUP BY category;

-- 8. Середня ціна товарів по категоріях--
--SELECT category, ROUND(AVG(price), 2) AS avg_price FROM Menu GROUP BY category;

-- 9. Сума бонусних балів усіх клієнтів
--SELECT SUM(bonus_points) FROM Clients;

-- 10. Кількість замовлень, прийнятих кожним бариста
--SELECT employee_id, COUNT(*) AS orders_handled FROM Orders GROUP BY employee_id;

-- 11. Загальна вартість поставок від кожного постачальника
--SELECT supplier_id, SUM(total_cost) FROM SupplyDeliveries GROUP BY supplier_id;

-- 12. Максимальна вартість однієї поставки
--SELECT MAX(total_cost) FROM SupplyDeliveries;

-- 13. Кількість інгредієнтів за одиницями виміру (кг, л, шт)
--SELECT unit, COUNT(*) FROM Ingredients GROUP BY unit;

-- 14. Загальна кількість інгредієнтів на складі (сума одиниць)
--SELECT SUM(quantity_in_stock) FROM Inventory;

-- 15. Кількість позицій у меню, дорожчих за 50 грн
--SELECT COUNT(*) FROM Menu WHERE price > 50;

-- 16. Категорії меню, де середня ціна вища за 60 грн (HAVING)
--SELECT category, AVG(price) FROM Menu GROUP BY category HAVING AVG(price) > 60;

-- 17. Кількість інгредієнтів, які використовуються більше ніж в одному рецепті
--SELECT ingredient_id, COUNT(menu_id) FROM Recipe GROUP BY ingredient_id HAVING COUNT(menu_id) > 1;

-- 18. Співробітники, які прийняли більше 2 замовлень
--SELECT employee_id FROM Orders GROUP BY employee_id HAVING COUNT(*) > 2;

-- 19. Клієнти, чиє середнє замовлення перевищує 50 грн
--SELECT client_id, AVG(total_price) FROM Orders GROUP BY client_id HAVING AVG(total_price) > 50;

-- 20. Загальна кількість проданих одиниць кожного товару (через OrderItems)
--SELECT menu_id, SUM(quantity) FROM OrderItems GROUP BY menu_id;

-- 21. Кількість поставок, здійснених у поточному році
--SELECT COUNT(*) FROM SupplyDeliveries WHERE EXTRACT(YEAR FROM delivery_date) = 2024;

-- 22. Мінімальна ціна в категорії 'Кава'
--SELECT MIN(price) FROM Menu WHERE category = 'Кава';

-- 23. Кількість унікальних категорій меню
--SELECT COUNT(DISTINCT category) FROM Menu;

-- 24. Співвідношення загальної суми замовлень до кількості замовлень (середній чек по всій базі)
--SELECT SUM(total_price) / COUNT(*) AS overall_avg_check FROM Orders;