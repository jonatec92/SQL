DROP SCHEMA IF EXISTS jec_music;
CREATE SCHEMA IF NOT EXISTS jec_music;
use jec_music;

DROP TABLE IF EXISTS marca;
CREATE TABLE IF NOT EXISTS marca (
codMarca int(5) not null,
nombre char(50) not null,
imagen char(40) not null,
primary key (codMarca)
);

DROP TABLE IF EXISTS categoria_articulo;
CREATE TABLE IF NOT EXISTS categoria_articulo (
codCategoria varchar(40) not null,
codArticulo varchar(64) not null,
primary key (codCategoria),
primary key (codArticulo)
);

DROP TABLE IF EXISTS categoria;
CREATE TABLE IF NOT EXISTS categoria (
codCategoria varchar(40) not null,
padre varchar(40) not null,
nombre varchar(80) not null,
primary key (codCategoria)
);

DROP TABLE IF EXISTS formPago;
CREATE TABLE IF NOT EXISTS formPago (
codFP int(4) not null,
nombre varchar(80) not null,
primary key (codFP)
);

DROP TABLE IF EXISTS formEntrega;
CREATE TABLE IF NOT EXISTS formPago (
codDRY int(4) not null,
nombre varchar(80) not null,
primary key (codDRY)
);

DROP TABLE IF EXISTS cliente;
CREATE TABLE IF NOT EXISTS cliente (
codCliente varchar(100) not null,
nombre varchar(60) not null,
apellido varchar(60) not null,
email varchar(250) not null,
telefono varchar(50) not null,
provincia int(80) not null,
pais varchar(50) not null,
primary key (codCliente)
);

DROP TABLE IF EXISTS articulo;
CREATE TABLE IF NOT EXISTS articulo (
codArticulo varchar(64) not null,
nombre varchar(160) not null,
precio decimal(13,6) not null,
descipcion text not null,
imagen varchar(200) not null,
codMarca int(5) not null,
primary key (codArticulo)
);

DROP TABLE IF EXISTS carrito;
CREATE TABLE IF NOT EXISTS carrito (
codCarrito varchar(100) not null,
codCliente varchar(100) not null,
item int(4) not null,
cantidad int(4) not null,
primary key (codCarrito)
);

DROP TABLE IF EXISTS pedido;
CREATE TABLE IF NOT EXISTS pedido (
numPedido int(6) not null,
codCarrito varchar(100) not null,
fecha date not null,
formPago int(4) not null,
formEntrega int(4) not null,
primary key (numPedido)
);


