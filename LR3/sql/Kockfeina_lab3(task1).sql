-- 1. Операції SELECT

-- а) Вивести все MENU
--SELECT *
--FROM Menu;

-- б) Знайти всі позиції в категорії 'Кава' з ціною понад 50 грн
--SELECT item_name, price 
--FROM Menu
--WHERE category = 'Кава'
--AND price >50;

--в) Вивести таблицю дешевих товарів, ціна яких менше 55 гривень 
--SELECT item_name, price, category
--FROM Menu
--WHERE price <55.00;

--г)Знайти постачальників, у яких немає електронної пошти
--SELECT company_name 
--FROM Suppliers
--WHERE email IS NULL;

--д)Показати інгредієнти, запас яких нижче мінімального (критичний рівень)
--SELECT i.name, inv.quantity_in_stock, i.min_stock_level
--FROM Ingredients i
--JOIN Inventory inv ON i.ingredient_id = inv.ingredient_id
--WHERE inv.quantity_in_stock < i.min_stock_level;

--е)Вивести все Employees
--SELECT *
--FROM Employees;

--є) Вивести все з Ingredients
--SELECT *
--FROM Ingredients;

--ж) Вивести все з Clients
--SELECT *
--FROM Clients;
