create database projeto1;

use projeto1;

CREATE TABLE `controle_financeiro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transacao` enum('compra','venda') NOT NULL,
  `produto` varchar(255) NOT NULL,
  `valor` varchar(11) NOT NULL,
  `reg` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into controle_financeiro values
(default, 'venda', 'teclado', '899', '2021-01-11 11:21:12'),
(default, 'compra', 'bateria', '2500', '2021-02-11 05:52:12'),
(default, 'compra', 'guitarra', '2300', '2021-01-11 15:22:12'),
(default, 'venda', 'cavaco', '600', '2021-08-12 15:22:12');

select * from controle_financeiro order by reg;

select sum(valor) as total from controle_financeiro;

truncate controle_financeiro;