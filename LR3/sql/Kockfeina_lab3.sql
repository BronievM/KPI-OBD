-- 1. Операції SELECT

-- а)Вивести все MENU
--SELECT *
--FROM Menu;

-- б)Знайти всі позиції в категорії 'Кава' з ціною понад 50 грн
--SELECT item_name, price 
--FROM Menu
--WHERE category = 'Кава'
--AND price >50;

--в)Вивести таблицю дешевих товарів, ціна яких менше 55 гривень 
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

--2.Додавання даних (INSERT)

--a) Додаємо нові страви у меню, "Пончікі від Порєва В.М., t>9*C", "Паляніца з сосискою" та "Хліб укрАїнський"
--INSERT INTO Menu (item_name, price, category)
--VALUES ('Пончікі від Порєва В.М.', 2.00, 'Випічка'),('Паляніца з сосичкою', 28.00,'Випічка'), ('Хліб укрАїнський', 30.00,'Їжа');

--б)Додамо нову бюджетну позицію "Морозиво шоколадне Рудь"
--INSERT INTO Menu(item_name, price, category)
--VALUES ('Морозиво шоколадне Рудь', 20,'Десерти');

--в) Нам було мало барист, тому прийняли на роботу нового ))
--INSERT INTO Employees (full_name, position, hire_date)
--VALUES ('Ігор Чорний','Бариста', '2026-03-21' );

--г)Зафіксувати нову поставку молока
--INSERT INTO SupplyDeliveries (supplier_id, employee_id, total_cost)
--VALUES (2, 1, 700.00);

--д) Додамо новий інгредієнт "Мигдалеве молоко"
--INSERT INTO Ingredients (name, unit, min_stock_level)
--VALUES ('Мигдалеве молоко', 'л', 7);

--e)Реєстрація нового клієнта без початкових бонусів
--INSERT INTO Clients(name, phone)
--VALUES ('Альона Кравченко', '+380978941122');

--3. Видалення даних(DELETE)

--a) Видалимо зайві "нові страви", адміністратори випадково ввели в один і той самий час дані позиції

-- 1 шлях видалимо всі нові щойно додані страви
--DELETE FROM Menu
--WHERE item_name IN ('Пончікі від Порєва В.М.', 'Паляніца з сосичкою', 'Хліб укрАїнський');

--2 шлях: видалимо точно ті, які нам не потрібні 
--DELETE FROM Menu
--WHERE menu_id IN ('21', '22', '23'); 

--б) Видалимо випадково записаного клієнта двічі, хтось постарався
--DELETE FROM Clients
--WHERE client_id IN ('7'); 

--в)Видалити позицію з меню, яка більше не продається
--DELETE FROM Menu 
--WHERE item_name = 'Сендвіч з куркою';

--г)Видалити клієнта, який не має бонусів та історії замовлень (за телефоном)
--DELETE FROM Clients
--WHERE phone = '+380683457889' AND bonus_points = 0;

--д)Видалити постачальника, з яким розірвано контракт
--DELETE FROM Suppliers 
--WHERE company_name = 'Цукровий завод'; 

--4. Оновлення даних

--а) Піднімемо ціну на всю категорію 'Випічка' на 5%
--UPDATE Menu
--SET price = price*1.05
--WHERE category = 'Випічка';

--б)Списати використані бонуси клієнта (встановити 0)
--UPDATE Clients 
--SET bonus_points = 0
--WHERE name = 'Наталія Савченко';

--в) Позначимо страву як "студентську"
--UPDATE Menu 
--SET item_name = 'Студентська страва- Пончікі від Порєва В.М.'
--WHERE item_name = 'Пончікі від Порєва В.М.';

--г)Нарахувати 50 бонусів клієнту за номер телефоном
--UPDATE Clients
--SET bonus_points = bonus_points + 50
--WHERE phone = '+380671112233';

--д) Оновити посаду працівника 
--UPDATE Employees 
--SET position = 'Старший бариста'
--WHERE full_name = 'Євген Закліковський'; 