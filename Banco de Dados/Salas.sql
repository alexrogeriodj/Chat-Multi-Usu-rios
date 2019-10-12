CREATE TABLE IF NOT EXISTS `salas` (
  `id_sala` int(11) NOT NULL AUTO_INCREMENT,
  `nm_sala` varchar(20) NOT NULL,
  PRIMARY KEY (`id_sala`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

INSERT INTO `salas` (`id_sala`, `nm_sala`) VALUES
(1, 'Crianças'),
(2, 'Adolescentes'),
(3, 'Homens e Mulheres');
