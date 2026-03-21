-- =========================
-- СИТУАЦІЯ 3. Постачальники
-- =========================

-- [SELECT] Перевірка постачальників
SELECT *
FROM Suppliers;

-- [SELECT] Постачальники без email
SELECT * 
FROM Suppliers
WHERE email IS NULL;

-- [INSERT] Внесення в систему реквізитів нового постачальника
INSERT INTO Suppliers (company_name, phone, email)
VALUES ('ТМ РУДЬ', '+380441234567', 'sales@ryd.ua');

SELECT *
FROM Suppliers;

-- [UPDATE] Фіксація зміни контактних даних у діючого партнера
UPDATE Suppliers
SET email = 'new_contact@sugar.ua'
WHERE company_name = 'Цукровий завод';

SELECT *
FROM Suppliers;

-- [DELETE] Видалення постачальника
DELETE FROM Suppliers 
WHERE company_name = 'Цукровий завод';

-- [SELECT] Перевірка постачальників
SELECT *
FROM Suppliers;