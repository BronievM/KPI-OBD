INSERT INTO Employees (full_name, position, hire_date) VALUES 
('Дарина Бушма', 'Менеджер', '2023-01-15'),
('Богдана Журавель', 'Бариста', '2023-05-20'),
('Євген Закліковський', 'Бариста', '2023-06-10'),
('Вікторія Біла', 'Кондитер', '2023-03-10');

INSERT INTO Clients (name, phone, bonus_points) VALUES 
('Максим Куліков', '+380671112233', 150),
('Андрій Петров', '+380934445566', 10),
('Марія Сидоренко', '+380507778899', 20),
('Наталія Савченко', '0936665544', 120);

INSERT INTO Suppliers (company_name, contact_phone, email) VALUES 
('Світ кави', '+380445556677', 'info@coffeeworld.ua'),
('Молочний шлях', '+380441112233', 'sales@milkway.com'),
('Цукровий завод', '+380449998877', 'sugar@plant.ua');

INSERT INTO Menu (item_name, price, category) VALUES 
('Еспресо', 35.00, 'Кава'),
('Подвійний Еспресо', 50.00, 'Кава'),
('Капучино', 55.00, 'Кава'),
('Лате Маніфіко', 65.00, 'Кава'),
('Раф Кава', 75.00, 'Кава'),
('Чай Зелений Сенча', 45.00, 'Чай'),
('Чай Фруктовий', 45.00, 'Чай'),
('Круасан Класичний', 50.00, 'Випічка'),
('Чізкейк Нью-Йорк', 90.00, 'Десерти'),
('Брауні', 65.00, 'Десерти'),
('Сендвіч з куркою', 110.00, 'Їжа');

INSERT INTO Ingredients (name, unit, min_stock_level) VALUES 
('Кава Арабіка', 'кг', 5),
('Молоко 2.5%', 'л', 10),
('Вершки 30%', 'л', 5),
('Цукор', 'кг', 3),
('Сироп Карамель', 'шт', 2),
('Борошно', 'кг', 10),
('Яйця', 'шт', 30),
('Шоколад чорний', 'кг', 2),
('Чай зелений', 'кг', 1),
('Паперові стакани', 'шт', 100);

INSERT INTO Orders (client_id, employee_id, total_price) VALUES 
(1, 2, 120.00),
(2, 3, 55.00),
(NULL, 2, 35.00);

INSERT INTO SupplyDeliveries (supplier_id, employee_id, total_cost) VALUES 
(1, 1, 1500.00),
(2, 1, 450.00),
(3, 1, 200.00);

INSERT INTO OrderItems (order_id, menu_id, quantity) VALUES 
(1, 1, 1),
(1, 3, 1),
(2, 2, 1),
(3, 1, 1);

INSERT INTO Recipe (menu_id, ingredient_id, quantity_required) VALUES 
(3, 1, 0.018), 
(3, 2, 0.200), 
(1, 1, 0.009), 
(9, 6, 0.150), 
(9, 7, 2.000);

INSERT INTO Inventory (ingredient_id, quantity_in_stock, storage_location) VALUES 
(1, 10.5, 'Полиця А1'),
(2, 15.0, 'Холодильник 1'),
(3, 5.0, 'Склад'),
(4, 2.5, 'Холодильник 2');