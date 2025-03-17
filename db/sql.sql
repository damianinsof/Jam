-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: jam
-- ------------------------------------------------------
-- Server version       10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


--
-- Table structure for table `entidad`
--

DROP TABLE IF EXISTS `entidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entidad` (
  `idEntidad` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(15) NOT NULL,
  `Denominacion` varchar(50) DEFAULT NULL,
  `RazonSocial` varchar(100) DEFAULT NULL,
  `Iva` varchar(50) DEFAULT NULL,
  `Domicilio` varchar(70) DEFAULT NULL,
  `Localidad` varchar(50) DEFAULT NULL,
  `Provincia` varchar(50) DEFAULT NULL,
  `Transporte` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Dni` varchar(10) DEFAULT NULL,
  `Cuit` varchar(15) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `contacto1` varchar(50) DEFAULT NULL,
  `contacto2` varchar(50) DEFAULT NULL,
  `Activo` char(1) NOT NULL DEFAULT 'S',
  PRIMARY KEY (`idEntidad`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `comprobante`
--

DROP TABLE IF EXISTS `comprobante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comprobante` (
  `idComprobante` int(11) NOT NULL AUTO_INCREMENT,
  `IdCompAsoc` int(11) NOT NULL,
  `Fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `Tipo` varchar(15) NOT NULL,
  `Circuito` varchar(10) NOT NULL,
  `Numero` varchar(15) NOT NULL,
  `IdEntidadPro` int(11) NOT NULL,
  `idEntidadCli` int(11) NOT NULL,
  `IdEntidadVia` int(11) NOT NULL,
  `FormaPago` varchar(150) NOT NULL,
  `Condicion` varchar(150) NOT NULL,
  `Observacion` varchar(150) NOT NULL,
  `promo` varchar(1000) NOT NULL DEFAULT '',
  `ImpNeto` double(10,2) NOT NULL,
  `ImpTotal` double(10,2) NOT NULL,
  `FechaP` varchar(10) NOT NULL,
  PRIMARY KEY (`idComprobante`),
  CONSTRAINT `comprobante_ibfk_2` FOREIGN KEY (`IdEntidadPro`) REFERENCES `entidad` (`idEntidad`),
  CONSTRAINT `comprobante_ibfk_3` FOREIGN KEY (`idEntidadCli`) REFERENCES `entidad` (`idEntidad`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `compdet`
--


DROP TABLE IF EXISTS `compdet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compdet` (
  `idCompDet` int(11) NOT NULL AUTO_INCREMENT,
  `idComprobante` int(11) NOT NULL,
  `idLisDet` int(11) NOT NULL,
  `Cant` int(5) NOT NULL,
  `Articulo` varchar(15) NOT NULL,
  `Descripcion` varchar(70) NOT NULL,
  `precio` double(10,2) NOT NULL,
  PRIMARY KEY (`idCompDet`),
  CONSTRAINT `compdet_ibfk_1` FOREIGN KEY (`idComprobante`) REFERENCES `comprobante` (`idComprobante`)
) ENGINE=InnoDB AUTO_INCREMENT=9268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;




--
-- Temporary table structure for view `entidad_cliente`
--

DROP TABLE IF EXISTS `entidad_cliente`;
/*!50001 DROP VIEW IF EXISTS `entidad_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `entidad_cliente` AS SELECT
 1 AS `idEntidad`,
  1 AS `Tipo`,
  1 AS `Denominacion`,
  1 AS `RazonSocial`,
  1 AS `Iva`,
  1 AS `Domicilio`,
  1 AS `Localidad`,
  1 AS `Provincia`,
  1 AS `Transporte`,
  1 AS `Email`,
  1 AS `Dni`,
  1 AS `Cuit`,
  1 AS `telefono`,
  1 AS `contacto1`,
  1 AS `contacto2`,
  1 AS `Activo` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `entidad_otros`
--

DROP TABLE IF EXISTS `entidad_otros`;
/*!50001 DROP VIEW IF EXISTS `entidad_otros`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `entidad_otros` AS SELECT
 1 AS `idEntidad`,
  1 AS `Tipo`,
  1 AS `Denominacion`,
  1 AS `RazonSocial`,
  1 AS `Iva`,
  1 AS `Domicilio`,
  1 AS `Localidad`,
  1 AS `Provincia`,
  1 AS `Transporte`,
  1 AS `Email`,
  1 AS `Dni`,
  1 AS `Cuit`,
  1 AS `telefono`,
  1 AS `contacto1`,
  1 AS `contacto2`,
  1 AS `Activo` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `entidad_provedor`
--

DROP TABLE IF EXISTS `entidad_provedor`;
/*!50001 DROP VIEW IF EXISTS `entidad_provedor`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `entidad_provedor` AS SELECT
 1 AS `idEntidad`,
  1 AS `Tipo`,
  1 AS `Denominacion`,
  1 AS `RazonSocial`,
  1 AS `Iva`,
  1 AS `Domicilio`,
  1 AS `Localidad`,
  1 AS `Provincia`,
  1 AS `Transporte`,
  1 AS `Email`,
  1 AS `Dni`,
  1 AS `Cuit`,
  1 AS `telefono`,
  1 AS `contacto1`,
  1 AS `contacto2`,
  1 AS `Activo` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `entidad_viajante`
--

DROP TABLE IF EXISTS `entidad_viajante`;
/*!50001 DROP VIEW IF EXISTS `entidad_viajante`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `entidad_viajante` AS SELECT
 1 AS `idEntidad`,
  1 AS `Tipo`,
  1 AS `Denominacion`,
  1 AS `RazonSocial`,
  1 AS `Iva`,
  1 AS `Domicilio`,
  1 AS `Localidad`,
  1 AS `Provincia`,
  1 AS `Transporte`,
  1 AS `Email`,
  1 AS `Dni`,
  1 AS `Cuit`,
  1 AS `telefono`,
  1 AS `contacto1`,
  1 AS `contacto2`,
  1 AS `Activo` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `listado`
--

DROP TABLE IF EXISTS `listado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listado` (
  `idListado` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(40) DEFAULT NULL,
  `Fecha` text DEFAULT current_timestamp(),
  `Disponible` varchar(1) DEFAULT 'S',
  `Promo` varchar(1000) DEFAULT NULL,
  `idEntidad` int(11) NOT NULL,
  PRIMARY KEY (`idListado`),
  KEY `idEntidad` (`idEntidad`),
  CONSTRAINT `listado_ibfk_1` FOREIGN KEY (`idEntidad`) REFERENCES `entidad` (`idEntidad`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `lisdet`
--

DROP TABLE IF EXISTS `lisdet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lisdet` (
  `IdLisDet` int(11) NOT NULL AUTO_INCREMENT,
  `IdListado` int(11) NOT NULL,
  `Articulo` varchar(15) NOT NULL,
  `CantxBulto` int(8) NOT NULL,
  `CantParcial` int(5) NOT NULL,
  `Descripcion` varchar(70) NOT NULL,
  `CajaxPalets` varchar(5) NOT NULL,
  `Oferta` varchar(100) NOT NULL,
  `Precio` varchar(14) NOT NULL,
  `Disponible` varchar(1) NOT NULL DEFAULT 'S',
  `Descuento` varchar(14) NOT NULL,
  `Neto` varchar(14) NOT NULL,
  PRIMARY KEY (`IdLisDet`),
  KEY `idListado` (`IdListado`)
) ENGINE=InnoDB AUTO_INCREMENT=10629 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Temporary table structure for view `notapedidofacturada`
--

DROP TABLE IF EXISTS `notapedidofacturada`;
/*!50001 DROP VIEW IF EXISTS `notapedidofacturada`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `notapedidofacturada` AS SELECT
 1 AS `Factura`,
  1 AS `idComprobante`,
  1 AS `FechaFactura`,
  1 AS `Fecha`,
  1 AS `ImpTotal`,
  1 AS `Observacion`,
  1 AS `Provedor`,
  1 AS `Cliente`,
  1 AS `Viajante` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `notapedidonofacturada`
--

DROP TABLE IF EXISTS `notapedidonofacturada`;
/*!50001 DROP VIEW IF EXISTS `notapedidonofacturada`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `notapedidonofacturada` AS SELECT
 1 AS `idComprobante`,
  1 AS `Fecha`,
  1 AS `Provedor`,
  1 AS `Cliente`,
  1 AS `ImpTotal`,
  1 AS `Viajante` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `relacionentidad`
--

DROP TABLE IF EXISTS `relacionentidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relacionentidad` (
  `idRelacion` int(11) NOT NULL AUTO_INCREMENT,
  `idEntP` int(11) NOT NULL,
  `idEntC` int(11) NOT NULL,
  `NroCli` varchar(100) NOT NULL,
  PRIMARY KEY (`idRelacion`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `entidad_cliente`
--

/*!50001 DROP VIEW IF EXISTS `entidad_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `entidad_cliente` AS select `entidad`.`idEntidad` AS `idEntidad`,`entidad`.`Tipo` AS `Tipo`,`entidad`.`Denominacion` AS `Denominacion`,`entidad`.`RazonSocial` AS `RazonSocial`,`entidad`.`Iva` AS `Iva`,`entidad`.`Domicilio` AS `Domicilio`,`entidad`.`Localidad` AS `Localidad`,`entidad`.`Provincia` AS `Provincia`,`entidad`.`Transporte` AS `Transporte`,`entidad`.`Email` AS `Email`,`entidad`.`Dni` AS `Dni`,`entidad`.`Cuit` AS `Cuit`,`entidad`.`telefono` AS `telefono`,`entidad`.`contacto1` AS `contacto1`,`entidad`.`contacto2` AS `contacto2`,`entidad`.`Activo` AS `Activo` from `entidad` where `entidad`.`Tipo` = 'Cliente' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `entidad_otros`
--

/*!50001 DROP VIEW IF EXISTS `entidad_otros`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `entidad_otros` AS select `entidad`.`idEntidad` AS `idEntidad`,`entidad`.`Tipo` AS `Tipo`,`entidad`.`Denominacion` AS `Denominacion`,`entidad`.`RazonSocial` AS `RazonSocial`,`entidad`.`Iva` AS `Iva`,`entidad`.`Domicilio` AS `Domicilio`,`entidad`.`Localidad` AS `Localidad`,`entidad`.`Provincia` AS `Provincia`,`entidad`.`Transporte` AS `Transporte`,`entidad`.`Email` AS `Email`,`entidad`.`Dni` AS `Dni`,`entidad`.`Cuit` AS `Cuit`,`entidad`.`telefono` AS `telefono`,`entidad`.`contacto1` AS `contacto1`,`entidad`.`contacto2` AS `contacto2`,`entidad`.`Activo` AS `Activo` from `entidad` where `entidad`.`Tipo` <> 'Cliente' and `entidad`.`Tipo` <> 'Provedor' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `entidad_provedor`
--

/*!50001 DROP VIEW IF EXISTS `entidad_provedor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `entidad_provedor` AS select `entidad`.`idEntidad` AS `idEntidad`,`entidad`.`Tipo` AS `Tipo`,`entidad`.`Denominacion` AS `Denominacion`,`entidad`.`RazonSocial` AS `RazonSocial`,`entidad`.`Iva` AS `Iva`,`entidad`.`Domicilio` AS `Domicilio`,`entidad`.`Localidad` AS `Localidad`,`entidad`.`Provincia` AS `Provincia`,`entidad`.`Transporte` AS `Transporte`,`entidad`.`Email` AS `Email`,`entidad`.`Dni` AS `Dni`,`entidad`.`Cuit` AS `Cuit`,`entidad`.`telefono` AS `telefono`,`entidad`.`contacto1` AS `contacto1`,`entidad`.`contacto2` AS `contacto2`,`entidad`.`Activo` AS `Activo` from `entidad` where `entidad`.`Tipo` = 'Provedor' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `entidad_viajante`
--

/*!50001 DROP VIEW IF EXISTS `entidad_viajante`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `entidad_viajante` AS select `entidad`.`idEntidad` AS `idEntidad`,`entidad`.`Tipo` AS `Tipo`,`entidad`.`Denominacion` AS `Denominacion`,`entidad`.`RazonSocial` AS `RazonSocial`,`entidad`.`Iva` AS `Iva`,`entidad`.`Domicilio` AS `Domicilio`,`entidad`.`Localidad` AS `Localidad`,`entidad`.`Provincia` AS `Provincia`,`entidad`.`Transporte` AS `Transporte`,`entidad`.`Email` AS `Email`,`entidad`.`Dni` AS `Dni`,`entidad`.`Cuit` AS `Cuit`,`entidad`.`telefono` AS `telefono`,`entidad`.`contacto1` AS `contacto1`,`entidad`.`contacto2` AS `contacto2`,`entidad`.`Activo` AS `Activo` from `entidad` where `entidad`.`Tipo` = 'Viajante' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `notapedidofacturada`
--

/*!50001 DROP VIEW IF EXISTS `notapedidofacturada`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Damian`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `notapedidofacturada` AS select `c`.`idComprobante` AS `Factura`,`cr`.`idComprobante` AS `idComprobante`,date_format(`c`.`Fecha`,'%d/%m/%Y') AS `FechaFactura`,date_format(`cr`.`Fecha`,'%d/%m/%Y') AS `Fecha`,concat('$',format(cast(`cr`.`ImpTotal` as decimal(10,0)),2)) AS `ImpTotal`,`cr`.`Observacion` AS `Observacion`,`ep`.`Denominacion` AS `Provedor`,`ec`.`Denominacion` AS `Cliente`,case when `vi`.`Denominacion` is null then 'Sin Especificar' else `vi`.`Denominacion` end AS `Viajante` from ((((`comprobante` `c` join `entidad` `ep` on(`ep`.`idEntidad` = `c`.`IdEntidadPro`)) join `entidad` `ec` on(`ec`.`idEntidad` = `c`.`idEntidadCli`)) left join `entidad` `vi` on(`vi`.`idEntidad` = `c`.`IdEntidadVia`)) join `comprobante` `cr` on(`c`.`IdCompAsoc` = `cr`.`idComprobante`)) where `c`.`Tipo` = 'Factura' and `c`.`IdCompAsoc` <> 0 order by `c`.`idComprobante` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `notapedidonofacturada`
--

/*!50001 DROP VIEW IF EXISTS `notapedidonofacturada`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Damian`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `notapedidonofacturada` AS select `c`.`idComprobante` AS `idComprobante`,date_format(`c`.`Fecha`,'%d/%m/%Y') AS `Fecha`,`ep`.`Denominacion` AS `Provedor`,`ec`.`Denominacion` AS `Cliente`,concat('$',format(cast(`c`.`ImpTotal` as decimal(10,0)),2)) AS `ImpTotal`,case when `vi`.`Denominacion` is null then 'Sin Especificar' else `vi`.`Denominacion` end AS `Viajante` from (((`comprobante` `c` join `entidad` `ep` on(`ep`.`idEntidad` = `c`.`IdEntidadPro`)) join `entidad` `ec` on(`ec`.`idEntidad` = `c`.`idEntidadCli`)) left join `entidad` `vi` on(`vi`.`idEntidad` = `c`.`IdEntidadVia`)) where `c`.`Tipo` = 'Nota de Pedido' and !(`c`.`idComprobante` in (select `comprobante`.`IdCompAsoc` from `comprobante` where `comprobante`.`Tipo` = 'Factura')) order by `c`.`idComprobante` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-16 13:29:18

C:\Program Files\xampp\mysql\Data>..\bin\mysqldump -u Damian -p jam  --no-data > jam_sin_datos.sql
Acceso denegado.

C:\Program Files\xampp\mysql\Data>..\bin\mysqldump -u Damian --password:DataBas01$ jam  --no-data > jam_sin_datos.sql
Acceso denegado.

C:\Program Files\xampp\mysql\Data>..\bin\mysqldump -u Damian --password=DataBas01$ jam  --no-data > jam_sin_datos.sql
Acceso denegado.

C:\Program Files\xampp\mysql\Data>..\bin\mysqldump -u Damian -p jam  --no-data >> jam_sin_datos.sql
Acceso denegado.

C:\Program Files\xampp\mysql\Data>..\bin\mysqldump -u Damian -p jam  --no-data
Enter password: ***********
-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: jam
-- ------------------------------------------------------
-- Server version       10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `compdet`
--

DROP TABLE IF EXISTS `compdet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compdet` (
  `idCompDet` int(11) NOT NULL AUTO_INCREMENT,
  `idComprobante` int(11) NOT NULL,
  `idLisDet` int(11) NOT NULL,
  `Cant` int(5) NOT NULL,
  `Articulo` varchar(15) NOT NULL,
  `Descripcion` varchar(70) NOT NULL,
  `precio` double(10,2) NOT NULL,
  PRIMARY KEY (`idCompDet`),
  CONSTRAINT `compdet_ibfk_1` FOREIGN KEY (`idComprobante`) REFERENCES `comprobante` (`idComprobante`)
) ENGINE=InnoDB AUTO_INCREMENT=9268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comprobante`
--

DROP TABLE IF EXISTS `comprobante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comprobante` (
  `idComprobante` int(11) NOT NULL AUTO_INCREMENT,
  `IdCompAsoc` int(11) NOT NULL,
  `Fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `Tipo` varchar(15) NOT NULL,
  `Circuito` varchar(10) NOT NULL,
  `Numero` varchar(15) NOT NULL,
  `IdEntidadPro` int(11) NOT NULL,
  `idEntidadCli` int(11) NOT NULL,
  `IdEntidadVia` int(11) NOT NULL,
  `FormaPago` varchar(150) NOT NULL,
  `Condicion` varchar(150) NOT NULL,
  `Observacion` varchar(150) NOT NULL,
  `promo` varchar(1000) NOT NULL DEFAULT '',
  `ImpNeto` double(10,2) NOT NULL,
  `ImpTotal` double(10,2) NOT NULL,
  `FechaP` varchar(10) NOT NULL,
  PRIMARY KEY (`idComprobante`),
  CONSTRAINT `comprobante_ibfk_2` FOREIGN KEY (`IdEntidadPro`) REFERENCES `entidad` (`idEntidad`),
  CONSTRAINT `comprobante_ibfk_3` FOREIGN KEY (`idEntidadCli`) REFERENCES `entidad` (`idEntidad`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `entidad`
--

DROP TABLE IF EXISTS `entidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entidad` (
  `idEntidad` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(15) NOT NULL,
  `Denominacion` varchar(50) DEFAULT NULL,
  `RazonSocial` varchar(100) DEFAULT NULL,
  `Iva` varchar(50) DEFAULT NULL,
  `Domicilio` varchar(70) DEFAULT NULL,
  `Localidad` varchar(50) DEFAULT NULL,
  `Provincia` varchar(50) DEFAULT NULL,
  `Transporte` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Dni` varchar(10) DEFAULT NULL,
  `Cuit` varchar(15) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `contacto1` varchar(50) DEFAULT NULL,
  `contacto2` varchar(50) DEFAULT NULL,
  `Activo` char(1) NOT NULL DEFAULT 'S',
  PRIMARY KEY (`idEntidad`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `entidad_cliente`
--

DROP TABLE IF EXISTS `entidad_cliente`;
/*!50001 DROP VIEW IF EXISTS `entidad_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `entidad_cliente` AS SELECT
 1 AS `idEntidad`,
  1 AS `Tipo`,
  1 AS `Denominacion`,
  1 AS `RazonSocial`,
  1 AS `Iva`,
  1 AS `Domicilio`,
  1 AS `Localidad`,
  1 AS `Provincia`,
  1 AS `Transporte`,
  1 AS `Email`,
  1 AS `Dni`,
  1 AS `Cuit`,
  1 AS `telefono`,
  1 AS `contacto1`,
  1 AS `contacto2`,
  1 AS `Activo` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `entidad_otros`
--

DROP TABLE IF EXISTS `entidad_otros`;
/*!50001 DROP VIEW IF EXISTS `entidad_otros`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `entidad_otros` AS SELECT
 1 AS `idEntidad`,
  1 AS `Tipo`,
  1 AS `Denominacion`,
  1 AS `RazonSocial`,
  1 AS `Iva`,
  1 AS `Domicilio`,
  1 AS `Localidad`,
  1 AS `Provincia`,
  1 AS `Transporte`,
  1 AS `Email`,
  1 AS `Dni`,
  1 AS `Cuit`,
  1 AS `telefono`,
  1 AS `contacto1`,
  1 AS `contacto2`,
  1 AS `Activo` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `entidad_provedor`
--

DROP TABLE IF EXISTS `entidad_provedor`;
/*!50001 DROP VIEW IF EXISTS `entidad_provedor`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `entidad_provedor` AS SELECT
 1 AS `idEntidad`,
  1 AS `Tipo`,
  1 AS `Denominacion`,
  1 AS `RazonSocial`,
  1 AS `Iva`,
  1 AS `Domicilio`,
  1 AS `Localidad`,
  1 AS `Provincia`,
  1 AS `Transporte`,
  1 AS `Email`,
  1 AS `Dni`,
  1 AS `Cuit`,
  1 AS `telefono`,
  1 AS `contacto1`,
  1 AS `contacto2`,
  1 AS `Activo` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `entidad_viajante`
--

DROP TABLE IF EXISTS `entidad_viajante`;
/*!50001 DROP VIEW IF EXISTS `entidad_viajante`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `entidad_viajante` AS SELECT
 1 AS `idEntidad`,
  1 AS `Tipo`,
  1 AS `Denominacion`,
  1 AS `RazonSocial`,
  1 AS `Iva`,
  1 AS `Domicilio`,
  1 AS `Localidad`,
  1 AS `Provincia`,
  1 AS `Transporte`,
  1 AS `Email`,
  1 AS `Dni`,
  1 AS `Cuit`,
  1 AS `telefono`,
  1 AS `contacto1`,
  1 AS `contacto2`,
  1 AS `Activo` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `lisdet`
--

DROP TABLE IF EXISTS `lisdet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lisdet` (
  `IdLisDet` int(11) NOT NULL AUTO_INCREMENT,
  `IdListado` int(11) NOT NULL,
  `Articulo` varchar(15) NOT NULL,
  `CantxBulto` int(8) NOT NULL,
  `CantParcial` int(5) NOT NULL,
  `Descripcion` varchar(70) NOT NULL,
  `CajaxPalets` varchar(5) NOT NULL,
  `Oferta` varchar(100) NOT NULL,
  `Precio` varchar(14) NOT NULL,
  `Disponible` varchar(1) NOT NULL DEFAULT 'S',
  `Descuento` varchar(14) NOT NULL,
  `Neto` varchar(14) NOT NULL,
  PRIMARY KEY (`IdLisDet`),
  KEY `idListado` (`IdListado`)
) ENGINE=InnoDB AUTO_INCREMENT=10629 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `listado`
--

DROP TABLE IF EXISTS `listado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listado` (
  `idListado` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(40) DEFAULT NULL,
  `Fecha` text DEFAULT current_timestamp(),
  `Disponible` varchar(1) DEFAULT 'S',
  `Promo` varchar(1000) DEFAULT NULL,
  `idEntidad` int(11) NOT NULL,
  PRIMARY KEY (`idListado`),
  KEY `idEntidad` (`idEntidad`),
  CONSTRAINT `listado_ibfk_1` FOREIGN KEY (`idEntidad`) REFERENCES `entidad` (`idEntidad`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `notapedidofacturada`
--

DROP TABLE IF EXISTS `notapedidofacturada`;
/*!50001 DROP VIEW IF EXISTS `notapedidofacturada`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `notapedidofacturada` AS SELECT
 1 AS `Factura`,
  1 AS `idComprobante`,
  1 AS `FechaFactura`,
  1 AS `Fecha`,
  1 AS `ImpTotal`,
  1 AS `Observacion`,
  1 AS `Provedor`,
  1 AS `Cliente`,
  1 AS `Viajante` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `notapedidonofacturada`
--

DROP TABLE IF EXISTS `notapedidonofacturada`;
/*!50001 DROP VIEW IF EXISTS `notapedidonofacturada`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `notapedidonofacturada` AS SELECT
 1 AS `idComprobante`,
  1 AS `Fecha`,
  1 AS `Provedor`,
  1 AS `Cliente`,
  1 AS `ImpTotal`,
  1 AS `Viajante` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `relacionentidad`
--

DROP TABLE IF EXISTS `relacionentidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relacionentidad` (
  `idRelacion` int(11) NOT NULL AUTO_INCREMENT,
  `idEntP` int(11) NOT NULL,
  `idEntC` int(11) NOT NULL,
  `NroCli` varchar(100) NOT NULL,
  PRIMARY KEY (`idRelacion`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `entidad_cliente`
--

/*!50001 DROP VIEW IF EXISTS `entidad_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `entidad_cliente` AS select `entidad`.`idEntidad` AS `idEntidad`,`entidad`.`Tipo` AS `Tipo`,`entidad`.`Denominacion` AS `Denominacion`,`entidad`.`RazonSocial` AS `RazonSocial`,`entidad`.`Iva` AS `Iva`,`entidad`.`Domicilio` AS `Domicilio`,`entidad`.`Localidad` AS `Localidad`,`entidad`.`Provincia` AS `Provincia`,`entidad`.`Transporte` AS `Transporte`,`entidad`.`Email` AS `Email`,`entidad`.`Dni` AS `Dni`,`entidad`.`Cuit` AS `Cuit`,`entidad`.`telefono` AS `telefono`,`entidad`.`contacto1` AS `contacto1`,`entidad`.`contacto2` AS `contacto2`,`entidad`.`Activo` AS `Activo` from `entidad` where `entidad`.`Tipo` = 'Cliente' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `entidad_otros`
--

/*!50001 DROP VIEW IF EXISTS `entidad_otros`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `entidad_otros` AS select `entidad`.`idEntidad` AS `idEntidad`,`entidad`.`Tipo` AS `Tipo`,`entidad`.`Denominacion` AS `Denominacion`,`entidad`.`RazonSocial` AS `RazonSocial`,`entidad`.`Iva` AS `Iva`,`entidad`.`Domicilio` AS `Domicilio`,`entidad`.`Localidad` AS `Localidad`,`entidad`.`Provincia` AS `Provincia`,`entidad`.`Transporte` AS `Transporte`,`entidad`.`Email` AS `Email`,`entidad`.`Dni` AS `Dni`,`entidad`.`Cuit` AS `Cuit`,`entidad`.`telefono` AS `telefono`,`entidad`.`contacto1` AS `contacto1`,`entidad`.`contacto2` AS `contacto2`,`entidad`.`Activo` AS `Activo` from `entidad` where `entidad`.`Tipo` <> 'Cliente' and `entidad`.`Tipo` <> 'Provedor' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `entidad_provedor`
--

/*!50001 DROP VIEW IF EXISTS `entidad_provedor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `entidad_provedor` AS select `entidad`.`idEntidad` AS `idEntidad`,`entidad`.`Tipo` AS `Tipo`,`entidad`.`Denominacion` AS `Denominacion`,`entidad`.`RazonSocial` AS `RazonSocial`,`entidad`.`Iva` AS `Iva`,`entidad`.`Domicilio` AS `Domicilio`,`entidad`.`Localidad` AS `Localidad`,`entidad`.`Provincia` AS `Provincia`,`entidad`.`Transporte` AS `Transporte`,`entidad`.`Email` AS `Email`,`entidad`.`Dni` AS `Dni`,`entidad`.`Cuit` AS `Cuit`,`entidad`.`telefono` AS `telefono`,`entidad`.`contacto1` AS `contacto1`,`entidad`.`contacto2` AS `contacto2`,`entidad`.`Activo` AS `Activo` from `entidad` where `entidad`.`Tipo` = 'Provedor' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `entidad_viajante`
--

/*!50001 DROP VIEW IF EXISTS `entidad_viajante`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `entidad_viajante` AS select `entidad`.`idEntidad` AS `idEntidad`,`entidad`.`Tipo` AS `Tipo`,`entidad`.`Denominacion` AS `Denominacion`,`entidad`.`RazonSocial` AS `RazonSocial`,`entidad`.`Iva` AS `Iva`,`entidad`.`Domicilio` AS `Domicilio`,`entidad`.`Localidad` AS `Localidad`,`entidad`.`Provincia` AS `Provincia`,`entidad`.`Transporte` AS `Transporte`,`entidad`.`Email` AS `Email`,`entidad`.`Dni` AS `Dni`,`entidad`.`Cuit` AS `Cuit`,`entidad`.`telefono` AS `telefono`,`entidad`.`contacto1` AS `contacto1`,`entidad`.`contacto2` AS `contacto2`,`entidad`.`Activo` AS `Activo` from `entidad` where `entidad`.`Tipo` = 'Viajante' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `notapedidofacturada`
--

/*!50001 DROP VIEW IF EXISTS `notapedidofacturada`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Damian`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `notapedidofacturada` AS select `c`.`idComprobante` AS `Factura`,`cr`.`idComprobante` AS `idComprobante`,date_format(`c`.`Fecha`,'%d/%m/%Y') AS `FechaFactura`,date_format(`cr`.`Fecha`,'%d/%m/%Y') AS `Fecha`,concat('$',format(cast(`cr`.`ImpTotal` as decimal(10,0)),2)) AS `ImpTotal`,`cr`.`Observacion` AS `Observacion`,`ep`.`Denominacion` AS `Provedor`,`ec`.`Denominacion` AS `Cliente`,case when `vi`.`Denominacion` is null then 'Sin Especificar' else `vi`.`Denominacion` end AS `Viajante` from ((((`comprobante` `c` join `entidad` `ep` on(`ep`.`idEntidad` = `c`.`IdEntidadPro`)) join `entidad` `ec` on(`ec`.`idEntidad` = `c`.`idEntidadCli`)) left join `entidad` `vi` on(`vi`.`idEntidad` = `c`.`IdEntidadVia`)) join `comprobante` `cr` on(`c`.`IdCompAsoc` = `cr`.`idComprobante`)) where `c`.`Tipo` = 'Factura' and `c`.`IdCompAsoc` <> 0 order by `c`.`idComprobante` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `notapedidonofacturada`
--

/*!50001 DROP VIEW IF EXISTS `notapedidonofacturada`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Damian`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `notapedidonofacturada` AS select `c`.`idComprobante` AS `idComprobante`,date_format(`c`.`Fecha`,'%d/%m/%Y') AS `Fecha`,`ep`.`Denominacion` AS `Provedor`,`ec`.`Denominacion` AS `Cliente`,concat('$',format(cast(`c`.`ImpTotal` as decimal(10,0)),2)) AS `ImpTotal`,case when `vi`.`Denominacion` is null then 'Sin Especificar' else `vi`.`Denominacion` end AS `Viajante` from (((`comprobante` `c` join `entidad` `ep` on(`ep`.`idEntidad` = `c`.`IdEntidadPro`)) join `entidad` `ec` on(`ec`.`idEntidad` = `c`.`idEntidadCli`)) left join `entidad` `vi` on(`vi`.`idEntidad` = `c`.`IdEntidadVia`)) where `c`.`Tipo` = 'Nota de Pedido' and !(`c`.`idComprobante` in (select `comprobante`.`IdCompAsoc` from `comprobante` where `comprobante`.`Tipo` = 'Factura')) order by `c`.`idComprobante` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-16 13:31:04\