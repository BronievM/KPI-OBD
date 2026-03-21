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

