create database projeto2;

use projeto2;

CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `nome_usuario` varchar(100) NOT NULL,
  `dataderegistro` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

insert into usuario values
(default, 'cesar', 'http://img.go.picture/cesar', 'cesar_j', default),
(default, 'maria', 'http://img.go/maria', 'maria_mar', default);

select * from usuario order by nome asc;

create table cartao (
Id int not null auto_increment,
Numero varchar(16) not null,
Cvv varchar(3) not null,
Data_de_expiracao date default (current_date),
Valido boolean not null,
Data_de_cadastro datetime default current_timestamp,
primary key(Id)
)engine=InnoDB default charset=utf8;

insert into cartao values
(default, '1444555566667777', '123', default, true, default),
(default, '1111222233334444', '987', default, false, default),
(default, '1010212100001212', '555', default, true, default);

select * from cartao where Valido= true order by Data_de_cadastro;

create table transacao(
Id int auto_increment not null,
Id_usuario  int not null,
Id_cartao int not null,
Valor decimal(11,2) not null,
Data_de_cadastro datetime default current_timestamp,
primary key (Id)
) engine=InnoDB default charset=utf8mb4;

insert into transacao values
(default, '111', '1111', '150.22', default),
(default, '222', '2222', '100.52', default);

insert into transacao values
(default, '333', '3333', '50.52', default);

select * from transacao order by Data_de_cadastro desc;

