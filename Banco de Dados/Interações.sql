CREATE TABLE IF NOT EXISTS `interacoes` (
  `nm_usuario` varchar(20) NOT NULL,
  `id_sala` int(11) NOT NULL,
  `dt_interacao` datetime NOT NULL,
  `ds_interacao` varchar(500) NOT NULL,
  `nm_destinatario` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
