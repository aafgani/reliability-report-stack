CREATE DATABASE IF NOT EXISTS database_report
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

USE database_report;

SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `n_ata_qpa_xref_pn`;
CREATE TABLE `n_ata_qpa_xref_pn` (
`Aircraft0` varchar(20) DEFAULT '',
`Aircraft` varchar(20) DEFAULT '',
`Key` varchar(10) DEFAULT '',
`PartNo` text DEFAULT NULL,
`ATA` varchar(10) DEFAULT '',
`QPA` varchar(5) DEFAULT '',
`Mat_Type` varchar(10) DEFAULT '',
`PartName` varchar(255) DEFAULT '',
`FastM` varchar(10) DEFAULT '',
`Cabin` varchar(10) DEFAULT '',
`PartNo_text` text DEFAULT NULL,
`PartNo_space` text DEFAULT NULL,
`EMG` varchar(100) DEFAULT '',
`source` varchar(100) DEFAULT '',
`date_rev` varchar(100) DEFAULT '',
`Manufacturer` text DEFAULT NULL,
`document` varchar(200) DEFAULT NULL,
`functional_family` varchar(40) DEFAULT NULL,
`list_of_supplier` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `n_fleetdata`;
CREATE TABLE `n_fleetdata` (
`IDreg` varchar(20) DEFAULT '',
`IDType` varchar(20) DEFAULT '',
`ACReg` varchar(20) DEFAULT '',
`ACReg2` varchar(50) DEFAULT '',
`ACType0` varchar(50) DEFAULT '',
`ACType` varchar(50) DEFAULT '',
`ACType2` varchar(50) DEFAULT '',
`FleetID_` varchar(20) DEFAULT '',
`Operator` varchar(50) DEFAULT '',
`SerialModule` varchar(50) DEFAULT '',
`VariableNumber` varchar(20) DEFAULT '',
`SerialNumber` varchar(50) DEFAULT '',
`ManufYear` varchar(20) DEFAULT '',
`DEliveryDate` varchar(20) DEFAULT '',
`EngineType` varchar(50) DEFAULT '',
`Lessor` varchar(50) DEFAULT '',
`Active` varchar(20) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `n_ik17_raw`;
CREATE TABLE `n_ik17_raw` (
`MeasDocument` varchar(20) DEFAULT NULL,
`Equipment_ik` varchar(20) DEFAULT NULL,
`Description_ik` varchar(100) DEFAULT NULL,
`Measuring point` varchar(20) DEFAULT NULL,
`Origin_indic` varchar(20) DEFAULT NULL,
`Date` date DEFAULT NULL,
`MeasTotCtrRdg` varchar(20) DEFAULT NULL,
`Difference` varchar(20) DEFAULT NULL,
`Counter reading` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

SET FOREIGN_KEY_CHECKS=1;
