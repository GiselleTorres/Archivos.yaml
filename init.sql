-- Tabla productos
CREATE TABLE productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10, 2),
    cantidad_stock INT
);

-- Tabla proveedores
CREATE TABLE proveedores (
    id_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    telefono VARCHAR(20),
    direccion VARCHAR(255)
);

-- Tabla clientes
CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100),
    telefono VARCHAR(20),
    direccion VARCHAR(255)
);

-- Tabla ventas
CREATE TABLE ventas (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    fecha DATE,
    total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- Tabla ordenes_compra
CREATE TABLE ordenes_compra (
    id_orden_compra INT AUTO_INCREMENT PRIMARY KEY,
    id_proveedor INT,
    fecha DATE,
    total DECIMAL(10, 2),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
);





-- Insertar productos
INSERT INTO productos (nombre, descripcion, precio, cantidad_stock) VALUES
('Laptop', 'Laptop HP 15.6" i7', 1200.00, 20),
('Smartphone', 'Samsung Galaxy S21', 800.00, 50),
('Tablet', 'iPad Pro 11"', 950.00, 30),
('Auriculares', 'Auriculares Sony WH-1000XM4', 350.00, 100),
('Impresora', 'Canon Pixma G6020', 250.00, 15),
('Monitor', 'Samsung Odyssey 27"', 300.00, 40),
('Teclado', 'Teclado mecánico Logitech', 50.00, 200),
('Mouse', 'Mouse inalámbrico Logitech', 30.00, 150),
('Disco duro', 'Seagate 1TB', 120.00, 80),
('Memoria USB', 'SanDisk 32GB', 20.00, 500);


-- Insertar proveedores
INSERT INTO proveedores (nombre, telefono, direccion) VALUES
('Proveedor A', '123-456-789', 'Calle 123, Ciudad A'),
('Proveedor B', '987-654-321', 'Avenida 456, Ciudad B'),
('Proveedor C', '555-555-555', 'Carrera 789, Ciudad C'),
('Proveedor D', '444-444-444', 'Diagonal 101, Ciudad D'),
('Proveedor E', '333-333-333', 'Transversal 112, Ciudad E'),
('Proveedor F', '222-222-222', 'Calle 131, Ciudad F'),
('Proveedor G', '111-111-111', 'Avenida 141, Ciudad G'),
('Proveedor H', '666-666-666', 'Carrera 151, Ciudad H'),
('Proveedor I', '777-777-777', 'Diagonal 161, Ciudad I'),
('Proveedor J', '888-888-888', 'Transversal 171, Ciudad J');


-- Insertar clientes
INSERT INTO clientes (nombre, correo, telefono, direccion) VALUES
('Juan Pérez', 'juan.perez@email.com', '111-111-111', 'Calle 123, Ciudad A'),
('María García', 'maria.garcia@email.com', '222-222-222', 'Avenida 456, Ciudad B'),
('Carlos Rodríguez', 'carlos.rodriguez@email.com', '333-333-333', 'Carrera 789, Ciudad C'),
('Laura Martínez', 'laura.martinez@email.com', '444-444-444', 'Diagonal 101, Ciudad D'),
('Pedro Sánchez', 'pedro.sanchez@email.com', '555-555-555', 'Transversal 112, Ciudad E'),
('Ana López', 'ana.lopez@email.com', '666-666-666', 'Calle 131, Ciudad F'),
('Luis Díaz', 'luis.diaz@email.com', '777-777-777', 'Avenida 141, Ciudad G'),
('Sofía Fernández', 'sofia.fernandez@email.com', '888-888-888', 'Carrera 151, Ciudad H'),
('Javier Gómez', 'javier.gomez@email.com', '999-999-999', 'Diagonal 161, Ciudad I'),
('Elena Ruiz', 'elena.ruiz@email.com', '000-000-000', 'Transversal 171, Ciudad J');


-- Insertar ventas
INSERT INTO ventas (id_cliente, fecha, total) VALUES
(1, '2023-10-01', 1500.00),
(2, '2023-10-02', 2500.00),
(3, '2023-10-03', 1200.00),
(4, '2023-10-04', 1800.00),
(5, '2023-10-05', 700.00),
(6, '2023-10-06', 950.00),
(7, '2023-10-07', 1400.00),
(8, '2023-10-08', 1900.00),
(9, '2023-10-09', 1300.00),
(10, '2023-10-10', 2200.00);

-- Insertar ordenes_compra
INSERT INTO ordenes_compra (id_proveedor, fecha, total) VALUES
(1, '2023-10-01', 5000.00),
(2, '2023-10-02', 3000.00),
(3, '2023-10-03', 4000.00),
(4, '2023-10-04', 2500.00),
(5, '2023-10-05', 3500.00),
(6, '2023-10-06', 6000.00),
(7, '2023-10-07', 4500.00),
(8, '2023-10-08', 7000.00),
(9, '2023-10-09', 3800.00),
(10, '2023-10-10', 5000.00);
