use laboratoriofm;
create table videojuegos(
codigoVJ int(10) primary key not null,
nombre varchar(25) not null,
precio float(6) not null,
genero varchar(25) not null,
compañia varchar(25) not null,
existencia varchar(3)not null)ENGINE=INNODB default CHARSET=LATIN1;
create table videos(
codigoVS int(10) primary key not null,
nombre varchar(20) not null,
precio int(6) not null,
genero varchar(25) not null,
compañia varchar(10) not null,
existencia varchar(3)not null)ENGINE=INNODB default CHARSET=LATIN1;
create table clientes(
codigoC int(10) auto_increment primary key not null,
tarjeta varchar(2) not null,
nombre varchar(20) not null,
apellido varchar(20) not null,
direccion varchar(25) not null)ENGINE=INNODB default CHARSET=LATIN1;
create table recibos(
codigoR int(10) auto_increment primary key,
codigoC int(10) not null,
codigoVS int(10) not null,
codigoVJ int(10) not null,
gastado float(10) not null,
fechaInicio varchar(8) not null,
fechaEntrega varchar(8) not null,
foreign key (codigoC) references clientes(codigoC),
foreign key (codigoVS) references videos(codigoVS),
foreign key (codigoVJ) references videojuegos(codigoVJ))ENGINE=INNODB default CHARSET=LATIN1;