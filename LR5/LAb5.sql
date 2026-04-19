-- 1. Нормалізація таблиці Menu (Винесення категорій)

-- Створюємо нову таблицю для категорій
--CREATE TABLE Categories (
--    category_id SERIAL PRIMARY KEY,
--    category_name VARCHAR(50) NOT NULL UNIQUE
--);

-- Переносимо унікальні категорії зі старої таблиці Menu у нову
--INSERT INTO Categories (category_name)
--SELECT DISTINCT category FROM Menu WHERE category IS NOT NULL;

-- Додаємо новий стовпець-ключ у таблицю Menu
--ALTER TABLE Menu ADD COLUMN category_id INT;

-- Оновлюємо таблицю Menu, проставляючи правильні ID категорій
--UPDATE Menu
--SET category_id = Categories.category_id
--FROM Categories
--WHERE Menu.category = Categories.category_name;

-- Робимо новий стовпець зовнішнім ключем та обов'язковим
--ALTER TABLE Menu 
--ADD CONSTRAINT fk_menu_category FOREIGN KEY (category_id) REFERENCES Categories(category_id);

-- Видаляємо старий ненормалізований текстовий стовпець
--ALTER TABLE Menu DROP COLUMN category;


-- 2. Нормалізація таблиці Inventory (Винесення місць зберігання)

-- Створюємо нову таблицю для місць зберігання
--CREATE TABLE StorageLocations (
--    location_id SERIAL PRIMARY KEY,
--    location_name VARCHAR(100) NOT NULL UNIQUE
--);

-- Переносимо унікальні місця зберігання
--INSERT INTO StorageLocations (location_name)
--SELECT DISTINCT storage_location FROM Inventory WHERE storage_location IS NOT NULL;

-- Додаємо стовпець-ключ
--ALTER TABLE Inventory ADD COLUMN location_id INT;

-- Зв'язуємо дані
--UPDATE Inventory
--SET location_id = StorageLocations.location_id
--FROM StorageLocations
--WHERE Inventory.storage_location = StorageLocations.location_name;

-- Встановлюємо зв'язок (Foreign Key)
--ALTER TABLE Inventory 
--ADD CONSTRAINT fk_inventory_location FOREIGN KEY (location_id) REFERENCES StorageLocations(location_id) ON DELETE SET NULL;

-- Видаляємо старий текстовий стовпець
--ALTER TABLE Inventory DROP COLUMN storage_location;