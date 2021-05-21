create database projeto_php;

use projeto_php;

CREATE TABLE `alunos` (
  `ra` int(11) NOT NULL auto_increment,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `rg` varchar(12) NOT NULL,
  `nasc` varchar(11) NOT NULL ,
  `sexo` varchar(10) NOT NULL,
  `est_civil` varchar(10) NOT NULL,
  `tel_residencial` varchar(12) NOT NULL,
  `tel_celular` varchar(13) NOT NULL ,
  `email` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `curso` varchar(15) NOT NULL,
  PRIMARY KEY  (`ra`,`cpf`)
);

CREATE TABLE `ingles` (
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY  (`cpf`)
);

CREATE TABLE `frances` (
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY  (`cpf`)
);

CREATE TABLE `italiano` (
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY  (`cpf`)
);

CREATE TABLE `espanhol` (
  `nome` varchar(100) NOT NULL,
   `cpf` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY  (`cpf`)
);

CREATE TABLE `alemao` (
  `nome` varchar(100) NOT NULL,
   `cpf` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY  (`cpf`)
);

CREATE TABLE `mandarim` (
  `nome` varchar(100) NOT NULL,
   `cpf` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY  (`cpf`)
);
CREATE TABLE `libras` (
  `nome` varchar(100) NOT NULL,
   `cpf` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY  (`cpf`)
);
CREATE TABLE `portugues_ex` (
  `nome` varchar(100) NOT NULL,
   `cpf` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY  (`cpf`)
);
CREATE TABLE `russo` (
  `nome` varchar(100) NOT NULL,
   `cpf` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY  (`cpf`)
);
CREATE TABLE `japones` (
  `nome` varchar(100) NOT NULL,
   `cpf` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY  (`cpf`)
);


