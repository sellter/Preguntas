/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.16 : Database - apli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`apli` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `apli`;

/*Table structure for table `preguntadetalle` */

DROP TABLE IF EXISTS `preguntadetalle`;

CREATE TABLE `preguntadetalle` (
  `id_juego` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `calif` int(10) DEFAULT NULL,
  `intentos` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_juego`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `preguntadetalle` */

insert  into `preguntadetalle`(`id_juego`,`id`,`calif`,`intentos`) values (1,1,10,NULL),(5,1,2,NULL),(6,2,5,NULL);

/*Table structure for table `preguntas` */

DROP TABLE IF EXISTS `preguntas`;

CREATE TABLE `preguntas` (
  `id_p` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(100) NOT NULL,
  `respuesta` varchar(200) DEFAULT NULL,
  `f1` varchar(200) DEFAULT NULL,
  `f2` varchar(200) DEFAULT NULL,
  `ok` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_p`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `preguntas` */

insert  into `preguntas`(`id_p`,`pregunta`,`respuesta`,`f1`,`f2`,`ok`) values (1,'¿Cuanto es 2 + 5?','6','7','9','7'),(2,'¿Cuanto es 2 + 6?','23','6','8','8'),(3,'¿Cuanto es 2 + 3?','5','4','6','5'),(4,'¿Cuanto es 4 + 3?','6','7','11','7'),(5,'¿Cuanto es 2 + 3?','23','2','4','5'),(6,'¿Cuanto es 14 + 3?','23','143','17','17'),(7,'¿Cuanto es 2 + 31?','131','6','33','33'),(8,'¿Cuanto es 23 + 3?','6','25','26','26'),(9,'¿Cuanto es 24 + 3?','27','29','23','27'),(10,'¿Cuanto es 2 + 34?','34','6','22','36'),(11,'¿Cuanto es 2 + 33?','23','21','22','35'),(12,'¿Cuanto es 2 + 56?','43','58','13','58'),(13,'¿Cuanto es 2 + 13?','54','15','6','15'),(14,'¿Cuanto es 2 + 23?','26','23','25','25'),(15,'¿Cuanto es 2 + 63?','23','23','65','65'),(16,'¿Cuanto es 2 + 33?','35','23','6','35');

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  `usuario` varchar(250) DEFAULT NULL,
  `pws` varchar(250) DEFAULT NULL,
  `estatus` varchar(250) DEFAULT NULL,
  `nivel` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

/*Data for the table `usuario` */

insert  into `usuario`(`id`,`nombre`,`usuario`,`pws`,`estatus`,`nivel`) values (1,'Ricardo','ricardo','1234','1','1'),(2,'Irving','zavala','1234','1','2');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
