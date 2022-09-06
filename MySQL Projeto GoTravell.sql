create database gotravel ; 

USE gotravel ;

CREATE TABLE Login (
tipo_login varchar(20)
id_login INTEGER primary key auto_increment,
);

CREATE TABLE Usuário (
id_usuario INTEGER PRIMARY KEY auto_increment,
nome_usuario VARCHAR(80),
email_usuario VARCHAR(80),
senha_usuario VARCHAR(80),
id_login integer ,
foreign key (id_login) reference Login (id_login)
);

CREATE TABLE Compra (
id_compra INTEGER PRIMARY KEY,
data_compra DATE,
valor_compra DECIMAL(5,2),
id_login integer,
foreign key (id_usuario) reference Usuário (id_usuario)
);

CREATE TABLE Viagem (
destinos_lugares VARCHAR(80),
preço_viagem DECIMAL(4,2),
id_viagem INTEGER PRIMARY KEY,
id_destinos integer,
foreign key (id_destinos) reference Destinos (id_destinos),
id_promocao integer
foreign key (id_promocao) reference Promoção (id_promocao)
)

CREATE TABLE Promoções (
nome_promocao varchar,
id_promocao integer PRIMARY KEY
)

CREATE TABLE Destinos (
id_destinos INTEGER PRIMARY KEY,
nome_destinos VARCHAR(80)
)

CREATE TABLE Item_Compra (
qtd_itens INTEGER,
valor_itens DECIMAL(4,2),
id_viagem integer,
foreign key (id_viagem) reference Viagem (id_viagem),
id_compra integer,
foreign key (id_compra) reference Compra (id_compra)
)