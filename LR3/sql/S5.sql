-- =========================
-- СИТУАЦІЯ 5. Персонал
-- =========================

-- [SELECT] Перегляд працівників за посадою
SELECT * FROM Employees
WHERE position = 'Бариста';

-- [INSERT] Додавання нового працівника
INSERT INTO Employees (full_name, position, hire_date)
VALUES ('Ігор Чорний', 'Бариста', '2026-03-21');

SELECT *
FROM Employees;

-- [UPDATE] Підвищення працівника
UPDATE Employees 
SET position = 'Старший бариста'
WHERE full_name = 'Євген Закліковський';

SELECT *
FROM Employees;

-- [DELETE] Звільнення працівника
DELETE FROM Employees
WHERE full_name = 'Олексій Петренко';

-- [SELECT] Перегляд працівників
SELECT *
FROM Employees;
