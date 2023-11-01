CREATE TABLE `Proveedor` (
  `id` integer,
  `company` varchar(50),
  `contact` varchar(50),
  `email` varchar(100),
  `phone` integer,
  PRIMARY KEY (`id`),
);

CREATE TABLE `Inventario` (
  `product_id` integer,
  `stock` integer
);

CREATE TABLE `Producto` (
  `id` integer,
  `name` varchar(50),
  `description` varchar(100),
  `price` decimal,
  `category` varchar(50),
  `Field` varchar(50),
  `stock` integer,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Detalle_Pedido` (
  `id` integer,
  `order_id` integer,
  `product_id` integer,
  `amoun` decimal,
  `price_unity` decimal,
  PRIMARY KEY (`id`),
 FOREIGN KEY (`product_id`) REFERENCES `Producto`(`id`),
FOREIGN KEY (`order_id`) REFERENCES `Pedido`(`id`)
);


CREATE TABLE `Pedido` (
  `id` integer,
  `date` date,
  `client_id` varchar(50),
  `total` decimal,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Empleado` (
  `id` integer,
  `name` varchar(50),
  `last_name` varchar(50),
  `position` varchar(50),
  `salary` decimal,
  `date_hiring` date,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Cliente` (
  `id` integer,
  `name` varchar(50),
  `last_name` varchar(50),
  `direction` varchar(100),
  `email` varchar(50),
  `stock` integer,
  PRIMARY KEY (`id`)
);

select * from detalle_pedido dp  




