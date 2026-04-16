--Типи JOIN 
-- 25. INNER JOIN: Список замовлень з іменами клієнтів та бариста
--SELECT o.order_id, c.name AS client, e.full_name AS barista, o.total_price
--FROM Orders o
--JOIN Clients c ON o.client_id = c.client_id
--JOIN Employees e ON o.employee_id = e.employee_id;

-- 26. LEFT JOIN: Всі клієнти та їхні замовлення (включаючи тих, хто нічого не купував)
--SELECT c.name, o.order_id, o.total_price
--FROM Clients c
--LEFT JOIN Orders o ON c.client_id = o.client_id;

-- 27. RIGHT JOIN: Всі інгредієнти та їх наявність на складі
--SELECT i.name, inv.quantity_in_stock
--FROM Inventory inv
--RIGHT JOIN Ingredients i ON inv.ingredient_id = i.ingredient_id;

-- 28. FULL JOIN: Порівняння списку інгредієнтів та рецептів (що є в рецептах, але можливо немає в списку - теоретично)
--SELECT i.name, r.menu_id
--FROM Ingredients i
--FULL JOIN Recipe r ON i.ingredient_id = r.ingredient_id;

-- 29. CROSS JOIN: Можливі комбінації всіх клієнтів і всіх акційних товарів (маркетингова матриця)
--SELECT c.name, m.item_name
--FROM Clients c
--CROSS JOIN Menu m WHERE m.category = 'Десерти';

-- 30. JOIN 3-х таблиць: Склад кожного замовлення (Назва товару, Кількість, Ціна)
--SELECT oi.order_id, m.item_name, oi.quantity, m.price
--FROM OrderItems oi
--JOIN Menu m ON oi.menu_id = m.menu_id;

-- 31. Деталізація рецептів: Назва страви + Назва інгредієнта + Кількість
--SELECT m.item_name, i.name AS ingredient, r.quantity_required
--FROM Recipe r
--JOIN Menu m ON r.menu_id = m.menu_id
--JOIN Ingredients i ON r.ingredient_id = i.ingredient_id;

-- 32. Поставки з назвами компаній та іменами відповідальних менеджерів
--SELECT s.company_name, e.full_name AS manager, sd.total_cost, sd.delivery_date
--FROM SupplyDeliveries sd
--JOIN Suppliers s ON sd.supplier_id = s.supplier_id
--JOIN Employees e ON sd.employee_id = e.employee_id;

-- 33. INNER JOIN: Які інгредієнти зараз на складі в локації 'Холодильник 1'
--SELECT i.name, inv.quantity_in_stock
--FROM Ingredients i
--JOIN Inventory inv ON i.ingredient_id = inv.ingredient_id
--WHERE inv.storage_location = 'Холодильник 1';

-- 34. Агрегація + JOIN: Загальна сума витрат кожного клієнта за весь час
--SELECT c.name, SUM(o.total_price) AS total_spent
--FROM Clients c
--JOIN Orders o ON c.client_id = o.client_id
--GROUP BY c.name;

-- 35. Агрегація + JOIN: Топ постачальників за обсягом грошей
--SELECT s.company_name, SUM(sd.total_cost) AS volume
--FROM Suppliers s
--JOIN SupplyDeliveries sd ON s.supplier_id = sd.supplier_id
--GROUP BY s.company_name
--ORDER BY volume DESC;

-- 36. LEFT JOIN: Співробітники, які ще не приймали жодного замовлення
--SELECT e.full_name
--FROM Employees e
--LEFT JOIN Orders o ON e.employee_id = o.employee_id
--WHERE o.order_id IS NULL;

-- 37. JOIN + фільтрація: Знайти постачальника кави та які інгредієнти він міг би постачати (логічний зв'язок)
--SELECT s.company_name, i.name
--FROM Suppliers s
--JOIN Ingredients i ON i.name LIKE '%Кава%'
--WHERE s.company_name = 'Кава Світ';

-- 38. SELF JOIN (якщо додати поле manager_id в Employees, але оскільки його нема, зробимо JOIN через позиції)
-- Знайти всіх бариста та їх менеджерів
--SELECT e1.full_name AS Staff, e2.full_name AS Manager
--FROM Employees e1
--JOIN Employees e2 ON e2.position = 'Менеджер'
--WHERE e1.position = 'Бариста';

-- 39. Потрійний JOIN для аналізу залишків: Назва позиції меню та залишок її головного інгредієнта
--SELECT m.item_name, i.name AS main_ingred, inv.quantity_in_stock
--FROM Menu m
--JOIN Recipe r ON m.menu_id = r.menu_id
--JOIN Ingredients i ON r.ingredient_id = i.ingredient_id
--JOIN Inventory inv ON i.ingredient_id = inv.ingredient_id;