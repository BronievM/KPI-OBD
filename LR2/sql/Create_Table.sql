CREATE TABLE Employees (
    employee_id SERIAL PRIMARY KEY,
    full_name VARCHAR(150) NOT NULL,
    position VARCHAR(100) NOT NULL,
    hire_date DATE DEFAULT CURRENT_DATE
);

CREATE TABLE Clients (
    client_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20) UNIQUE,
    bonus_points INT DEFAULT 0 CHECK (bonus_points >= 0)
);

CREATE TABLE Suppliers (
    supplier_id SERIAL PRIMARY KEY,
    company_name VARCHAR(150) NOT NULL,
    contact_phone VARCHAR(20),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE Menu (
    menu_id SERIAL PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    price NUMERIC(10, 2) NOT NULL CHECK (price > 0),
    category VARCHAR(50)
);

CREATE TABLE Ingredients (
    ingredient_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    unit VARCHAR(20) NOT NULL,
    min_stock_level NUMERIC(10, 2) DEFAULT 0 CHECK (min_stock_level >= 0)
);

CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    client_id INT REFERENCES Clients(client_id) ON DELETE SET NULL,
    employee_id INT NOT NULL REFERENCES Employees(employee_id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_price NUMERIC(10, 2) DEFAULT 0 CHECK (total_price >= 0)
);

CREATE TABLE SupplyDeliveries (
    delivery_id SERIAL PRIMARY KEY,
    supplier_id INT NOT NULL REFERENCES Suppliers(supplier_id),
    employee_id INT NOT NULL REFERENCES Employees(employee_id),
    delivery_date DATE DEFAULT CURRENT_DATE,
    total_cost NUMERIC(10, 2) NOT NULL CHECK (total_cost >= 0)
);

CREATE TABLE OrderItems (
    item_id SERIAL PRIMARY KEY,
    order_id INT NOT NULL REFERENCES Orders(order_id) ON DELETE CASCADE,
    menu_id INT NOT NULL REFERENCES Menu(menu_id),
    quantity INT NOT NULL CHECK (quantity > 0)
);

CREATE TABLE Recipe (
    recipe_id SERIAL PRIMARY KEY,
    menu_id INT NOT NULL REFERENCES Menu(menu_id) ON DELETE CASCADE,
    ingredient_id INT NOT NULL REFERENCES Ingredients(ingredient_id),
    quantity_required NUMERIC(10, 2) NOT NULL CHECK (quantity_required > 0)
);

CREATE TABLE Inventory (
    inventory_id SERIAL PRIMARY KEY,
    ingredient_id INT NOT NULL UNIQUE REFERENCES Ingredients(ingredient_id) ON DELETE CASCADE,
    quantity_in_stock NUMERIC(10, 2) NOT NULL DEFAULT 0,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    storage_location VARCHAR(100)
);