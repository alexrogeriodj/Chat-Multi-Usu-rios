CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nm_usuario` varchar(20) NOT NULL,
  `id_sala` int(11) NOT NULL,
  `dt_refresh` datetime NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

INSERT INTO `usuarios` (`id_usuario`, `nm_usuario`, `id_sala`, `dt_refresh`) VALUES
(22, 'Edir', 3, '2010-12-11 19:13:48');
