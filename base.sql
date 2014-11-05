/*
SQLyog Ultimate v11.42 (64 bit)
MySQL - 5.5.39 : Database - examen
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`examen` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `examen`;

/*Table structure for table `detalle_pregutas_respuestas` */

DROP TABLE IF EXISTS `detalle_pregutas_respuestas`;

CREATE TABLE `detalle_pregutas_respuestas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Pregunta` int(11) NOT NULL,
  `ID_Respuesta` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `unique_ID` (`ID`),
  KEY `ID_Pregunta` (`ID_Pregunta`),
  KEY `ID_Respuesta` (`ID_Respuesta`),
  CONSTRAINT `detalle_pregutas_respuestas_ibfk_1` FOREIGN KEY (`ID_Pregunta`) REFERENCES `preguntas` (`ID`),
  CONSTRAINT `detalle_pregutas_respuestas_ibfk_2` FOREIGN KEY (`ID_Respuesta`) REFERENCES `respuestas` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `detalle_pregutas_respuestas` */

insert  into `detalle_pregutas_respuestas`(`ID`,`ID_Pregunta`,`ID_Respuesta`) values (1,1,1),(2,1,2),(3,1,3),(4,2,4),(5,2,5),(6,2,6),(7,3,7),(8,3,8),(9,3,9),(10,4,10),(11,4,11),(12,4,12),(13,5,13),(14,5,14),(15,5,15);

/*Table structure for table `preguntas` */

DROP TABLE IF EXISTS `preguntas`;

CREATE TABLE `preguntas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(200) NOT NULL,
  `ID_respuesta` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `unique_ID` (`ID`),
  KEY `ID_respuesta` (`ID_respuesta`),
  CONSTRAINT `preguntas_ibfk_1` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `preguntas` */

insert  into `preguntas`(`ID`,`pregunta`,`ID_respuesta`) values (1,'¿Quién es el padre de la patria?',3),(2,'¿Qué es el grito de Dolores?',5),(3,'¿En qué año inicia  la Independencia de México?',9),(4,'¿Primer presidente de México?',10),(5,'¿Qué presidente de México se hacía llamar su santísima serenidad?',15);

/*Table structure for table `respuestas` */

DROP TABLE IF EXISTS `respuestas`;

CREATE TABLE `respuestas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `respuesta` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `respuestas` */

insert  into `respuestas`(`ID`,`respuesta`) values (1,'José María Morelos '),(2,'Ignacio Allende'),(3,'Miguel Hidalgo '),(4,'Una celebración'),(5,'Un acto de Inicio  de guerra '),(6,'Una conferencia'),(7,'1910'),(8,'1941'),(9,'1810'),(10,'Guadalupe Victoria'),(11,'Vicente Guerrero'),(12,'Anastasio Bustamante  '),(13,'Manuel Gómez Pedraza'),(14,'Valentín Gómez Farías'),(15,'Antonio López de Santa Ana');

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nomb` varchar(50) DEFAULT NULL,
  `App` varchar(50) DEFAULT NULL,
  `Apm` varchar(50) DEFAULT NULL,
  `usr` varchar(20) DEFAULT NULL,
  `psw` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `calficacion` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `unique_ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `usuarios` */

insert  into `usuarios`(`ID`,`Nomb`,`App`,`Apm`,`usr`,`psw`,`status`,`calficacion`) values (1,'Cruz Alfredo','Bibiano','Montaño','cruz','qwerty',1,5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
