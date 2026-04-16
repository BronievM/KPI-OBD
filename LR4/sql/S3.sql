--Підзапити
-- 40. WHERE: Товари в меню, ціна яких вища за середню по всьому меню
--SELECT item_name, price 
--FROM Menu 
--WHERE price > (SELECT AVG(price) FROM Menu);

-- 41. WHERE IN: Клієнти, які робили замовлення на суму більше 100 грн
--SELECT name 
--FROM Clients 
--WHERE client_id IN (SELECT client_id FROM Orders WHERE total_price > 100);

-- 42. SELECT: Для кожного товару в меню показати, на скільки його ціна відрізняється від найдорожчого товару
--SELECT item_name, price, 
--      (SELECT MAX(price) FROM Menu) - price AS price_diff
--FROM Menu;

-- 43. FROM (Derived Table): Знайти середню кількість інгредієнтів у рецептах
--SELECT AVG(ingred_count) 
--FROM (SELECT menu_id, COUNT(*) AS ingred_count FROM Recipe GROUP BY menu_id) AS counts;

-- 44. WHERE EXISTS: Знайти постачальників, у яких була хоча б одна поставка дорожче 1000 грн
--SELECT company_name 
--FROM Suppliers s
--WHERE EXISTS (SELECT 1 FROM SupplyDeliveries sd WHERE sd.supplier_id = s.supplier_id AND sd.total_cost > 1000);

-- 45. HAVING: Категорії меню, кількість товарів у яких більша, ніж у категорії 'Чай'
--SELECT category, COUNT(*) 
--FROM Menu 
--GROUP BY category 
--HAVING COUNT(*) > (SELECT COUNT(*) FROM Menu WHERE category = 'Чай');

-- 46. Підзапит у SELECT: Список клієнтів та дата їхнього останнього замовлення
--SELECT name, 
--       (SELECT MAX(created_at) FROM Orders o WHERE o.client_id = c.client_id) AS last_order_date
--FROM Clients c;

-- 47. Складний WHERE: Інгредієнти, запас яких менший за середній запас інгредієнтів у тій же одиниці виміру (кг/л)
--SELECT i.name, inv.quantity_in_stock
--FROM Ingredients i
--JOIN Inventory inv ON i.ingredient_id = inv.ingredient_id
--WHERE inv.quantity_in_stock < (
--    SELECT AVG(inv2.quantity_in_stock) 
--    FROM Inventory inv2 
--    JOIN Ingredients i2 ON inv2.ingredient_id = i2.ingredient_id 
--    WHERE i2.unit = i.unit
--);

-- 48. Співробітник, який приніс найбільше виручки (TOP-1 через підзапит)
--SELECT full_name 
--FROM Employees 
--WHERE employee_id = (
--    SELECT employee_id 
--    FROM Orders 
--    GROUP BY employee_id 
--    ORDER BY SUM(total_price) DESC 
--    LIMIT 1
--);

-- 49. Корельований підзапит: Товари, ціна яких є максимальною у своїй категорії
SELECT item_name, category, price
FROM Menu m1
WHERE price = (
    SELECT MAX(price) 
    FROM Menu m2 
    WHERE m2.category = m1.category
);