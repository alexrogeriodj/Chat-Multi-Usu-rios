-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tempo de Geração: Jun 10, 2011 as 03:28 PM
-- Versão do Servidor: 5.0.51
-- Versão do PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Banco de Dados: `chat`
-- 

-- --------------------------------------------------------

-- 
-- Estrutura da tabela `conversas`
-- 

CREATE TABLE `conversas` (
  `cod_conversa` int(11) NOT NULL auto_increment,
  `usuario` longtext NOT NULL,
  `destino` varchar(100) NOT NULL,
  `conversa` longtext NOT NULL,
  `dt_hora` datetime NOT NULL,
  `time` longtext NOT NULL,
  PRIMARY KEY  (`cod_conversa`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Extraindo dados da tabela `conversas`
-- 


-- --------------------------------------------------------

-- 
-- Estrutura da tabela `emoticons`
-- 

CREATE TABLE `emoticons` (
  `cod_emoticon` int(11) NOT NULL auto_increment,
  `caminho` varchar(255) NOT NULL,
  `flg_ativo` int(11) NOT NULL,
  `atalho` varchar(255) NOT NULL,
  PRIMARY KEY  (`cod_emoticon`),
  UNIQUE KEY `caminho` (`caminho`),
  UNIQUE KEY `caminho_2` (`caminho`),
  UNIQUE KEY `caminho_3` (`caminho`),
  UNIQUE KEY `atalho` (`atalho`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

-- 
-- Extraindo dados da tabela `emoticons`
-- 

INSERT INTO `emoticons` VALUES (4, 'beer_mug.bmp', 1, '[beer]');
INSERT INTO `emoticons` VALUES (5, 'crego.bmp', 1, '[bb]');
INSERT INTO `emoticons` VALUES (6, 'icon1.bmp', 1, '[sorriso]');
INSERT INTO `emoticons` VALUES (7, 'icon10.bmp', 1, '[mala]');
INSERT INTO `emoticons` VALUES (8, 'icon11.bmp', 1, '[direita]');
INSERT INTO `emoticons` VALUES (9, 'icon12.bmp', 1, '[amor]');
INSERT INTO `emoticons` VALUES (10, 'icon13.bmp', 1, '[atencao]');
INSERT INTO `emoticons` VALUES (11, 'icon14.bmp', 1, '[duvida]');
INSERT INTO `emoticons` VALUES (12, 'icon15.bmp', 1, '[alegre]');
INSERT INTO `emoticons` VALUES (13, 'icon16.bmp', 1, '[bobo]');
INSERT INTO `emoticons` VALUES (14, 'icon17.bmp', 1, '[feliz]');
INSERT INTO `emoticons` VALUES (15, 'icon18.bmp', 1, '[lingua]');
INSERT INTO `emoticons` VALUES (16, 'icon19.bmp', 1, '[triste]');
INSERT INTO `emoticons` VALUES (17, 'icon2.bmp', 1, '[desconfiado]');
INSERT INTO `emoticons` VALUES (18, 'icon20.bmp', 1, '[feliz2]');
INSERT INTO `emoticons` VALUES (19, 'icon21.bmp', 1, '[feliz3]');
INSERT INTO `emoticons` VALUES (20, 'icon22.bmp', 1, '[pirata]');
INSERT INTO `emoticons` VALUES (21, 'icon23.bmp', 1, '[choro]');
INSERT INTO `emoticons` VALUES (23, 'icon25.bmp', 1, '[triste2]');
INSERT INTO `emoticons` VALUES (24, 'icon26.bmp', 1, '[timido]');
INSERT INTO `emoticons` VALUES (25, 'icon27.bmp', 1, '[ninja]');
INSERT INTO `emoticons` VALUES (26, 'icon28.bmp', 1, '[nerd]');
INSERT INTO `emoticons` VALUES (27, 'icon29.bmp', 1, '[do]');
INSERT INTO `emoticons` VALUES (28, 'icon3.bmp', 1, '[sono]');
INSERT INTO `emoticons` VALUES (29, 'icon30.bmp', 1, '[feliz1]');
INSERT INTO `emoticons` VALUES (30, 'icon31.bmp', 1, '[zangado]');
INSERT INTO `emoticons` VALUES (31, 'icon32.bmp', 1, '[espanto]');
INSERT INTO `emoticons` VALUES (32, 'icon33.bmp', 1, '[espanto2]');
INSERT INTO `emoticons` VALUES (33, 'icon34.bmp', 1, '[assovio]');
INSERT INTO `emoticons` VALUES (34, 'icon35.bmp', 1, '[ok]');
INSERT INTO `emoticons` VALUES (35, 'icon36.bmp', 1, '[bad]');
INSERT INTO `emoticons` VALUES (36, 'icon37.bmp', 1, '[alegre1]');
INSERT INTO `emoticons` VALUES (37, 'icon38.bmp', 1, '[alegre2]');
INSERT INTO `emoticons` VALUES (38, 'icon39.bmp', 1, '[confuso]');
INSERT INTO `emoticons` VALUES (39, 'icon4.bmp', 1, '[bobo1]');
INSERT INTO `emoticons` VALUES (40, 'icon40.bmp', 1, '[aff]');
INSERT INTO `emoticons` VALUES (41, 'icon41.bmp', 1, '[do1]');
INSERT INTO `emoticons` VALUES (42, 'icon42.bmp', 1, '[capeta]');
INSERT INTO `emoticons` VALUES (43, 'icon43.bmp', 1, '[do2]');
INSERT INTO `emoticons` VALUES (44, 'icon45.bmp', 1, '[aff1]');
INSERT INTO `emoticons` VALUES (45, 'icon49.bmp', 1, '[aff2]');
INSERT INTO `emoticons` VALUES (46, 'icon5.bmp', 1, '[espanto1]');
INSERT INTO `emoticons` VALUES (47, 'icon52.bmp', 1, '[feliz4]');
INSERT INTO `emoticons` VALUES (48, 'icon56.bmp', 1, '[serio1]');
INSERT INTO `emoticons` VALUES (49, 'icon57.bmp', 1, '[bjo]');
INSERT INTO `emoticons` VALUES (50, 'icon6.bmp', 1, '[alegre3]');
INSERT INTO `emoticons` VALUES (51, 'icon60.bmp', 1, '[espanto3]');
INSERT INTO `emoticons` VALUES (52, 'icon61.bmp', 1, '[segredo]');
INSERT INTO `emoticons` VALUES (53, 'icon65.bmp', 1, '[duvida1]');
INSERT INTO `emoticons` VALUES (54, 'icon7.bmp', 1, '[bravo]');
INSERT INTO `emoticons` VALUES (55, 'icon72.bmp', 1, '[zangado1]');
INSERT INTO `emoticons` VALUES (56, 'icon8.bmp', 1, '[malestar]');
INSERT INTO `emoticons` VALUES (57, 'icon9.bmp', 1, '[triste3]');
INSERT INTO `emoticons` VALUES (58, 'icon99.bmp', 1, '[:O]');
INSERT INTO `emoticons` VALUES (59, 'martini.bmp', 1, '[martini]');
INSERT INTO `emoticons` VALUES (60, 'rockin.bmp', 1, '[rockin]');
INSERT INTO `emoticons` VALUES (61, 'rockinr.bmp', 1, '[rockinrow]');
INSERT INTO `emoticons` VALUES (62, 'thumbs_down.bmp', 1, '[negativo]');
INSERT INTO `emoticons` VALUES (63, 'thumbs_up.bmp', 1, '[positivo]');

-- --------------------------------------------------------

-- 
-- Estrutura da tabela `online`
-- 

CREATE TABLE `online` (
  `cod_online` int(11) NOT NULL auto_increment,
  `usuario` varchar(20) NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY  (`cod_online`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1460 ;

-- 
-- Extraindo dados da tabela `online`
-- 


-- --------------------------------------------------------

-- 
-- Estrutura da tabela `usuario`
-- 

CREATE TABLE `usuario` (
  `cod_usuario` int(11) NOT NULL auto_increment,
  `email` varchar(100) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `senha` longtext NOT NULL,
  `dt_ult_acesso` datetime NOT NULL,
  PRIMARY KEY  (`cod_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Extraindo dados da tabela `usuario`
-- 

