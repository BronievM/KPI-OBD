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