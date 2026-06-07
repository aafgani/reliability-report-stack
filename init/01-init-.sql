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

-- ----------------------------
-- Table structure for n_sq00
-- ----------------------------
DROP TABLE IF EXISTS n_sq00;
CREATE TABLE n_sq00 (
  Part_Number text DEFAULT NULL,
  Serial_number text DEFAULT NULL,
  Equipment varchar(40) DEFAULT NULL,
  Material_Description varchar(100) DEFAULT NULL,
  Notification varchar(20) DEFAULT NULL,
  Typ varchar(10) DEFAULT NULL,
  Description varchar(50) DEFAULT NULL,
  Dam. varchar(40) DEFAULT NULL,
  Cs. varchar(40) DEFAULT NULL,
  Mn_wk_ctr varchar(40) DEFAULT NULL,
  Plnt WorkCenter varchar(40) DEFAULT NULL,
  Profit Ctr varchar(40) DEFAULT NULL,
  Functional_location_affected varchar(80) DEFAULT NULL,
  CgrCode varchar(40) DEFAULT NULL,
  Code varchar(40) DEFAULT NULL,
  Short_Text varchar(40) DEFAULT NULL,
  User_Status varchar(40) DEFAULT NULL,
  Ref / Orig Order varchar(40) DEFAULT NULL,
  Type varchar(40) DEFAULT NULL,
  Notification_Orig varchar(40) DEFAULT NULL,
  Typ_Notif_Orig varchar(40) DEFAULT NULL,
  Description_Notif_Orig varchar(100) DEFAULT NULL,
  Doc_Type varchar(40) DEFAULT NULL,
  Document varchar(40) DEFAULT NULL,
  DPt varchar(40) DEFAULT NULL,
  Vr varchar(40) DEFAULT NULL,
  Document_Description varchar(100) DEFAULT NULL,
  Order2 varchar(40) DEFAULT NULL,
  Order2_Type varchar(40) DEFAULT NULL,
  Notification2 varchar(40) DEFAULT NULL,
  Notif2_Type varchar(40) DEFAULT NULL,
  Description2 varchar(100) DEFAULT NULL,
  Batch varchar(40) DEFAULT NULL,
  Req_start date DEFAULT NULL,
  Notif_Date date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- ----------------------------
-- Table structure for n_tabelhasil_2
-- ----------------------------
DROP TABLE IF EXISTS n_tabelhasil_2;
CREATE TABLE n_tabelhasil_2 (
  ID varchar(10) DEFAULT NULL,
  ATA varchar(5) DEFAULT NULL,
  AIN varchar(20) DEFAULT NULL,
  PartNo varchar(20) DEFAULT NULL,
  SerialNo varchar(20) DEFAULT NULL,
  PartName varchar(50) DEFAULT NULL,
  REG varchar(20) DEFAULT NULL,
  Aircraft varchar(20) DEFAULT NULL,
  Month_ varchar(20) DEFAULT '',
  Qty varchar(20) DEFAULT NULL,
  Addtl_Info_Loc varchar(20) DEFAULT '',
  Work_Center varchar(20) DEFAULT '',
  RemCodeXXX varchar(20) DEFAULT NULL,
  Reason varchar(100) DEFAULT '',
  RealReason longtext DEFAULT NULL,
  Originating_Order varchar(20) DEFAULT '',
  Originating_Order_Desc varchar(255) DEFAULT '',
  Maintenance_Item_Type varchar(20) DEFAULT '',
  Maintenance_Item varchar(20) DEFAULT '',
  First_Notification_Trigger varchar(20) DEFAULT '',
  Related_AML_Prob varchar(255) DEFAULT '',
  Related_AML_Rect varchar(255) DEFAULT '',
  NFF varchar(20) DEFAULT '',
  DateRem date DEFAULT NULL,
  Year_ varchar(20) DEFAULT '',
  Serviceable varchar(20) DEFAULT NULL,
  Shop_Notification varchar(20) DEFAULT NULL,
  Shop_Visit varchar(255) DEFAULT '',
  Shop_Finding varchar(255) DEFAULT '',
  XXX varchar(20) DEFAULT NULL,
  Originating_Orderx varchar(20) DEFAULT '',
  Orig_Order_Type varchar(20) DEFAULT NULL,
  Orig_Order_Notif varchar(20) DEFAULT NULL,
  Orig_Order_Notif_Type varchar(20) DEFAULT NULL,
  Orig_Order_Notif_Desc varchar(255) DEFAULT NULL,
  Order2 varchar(20) DEFAULT NULL,
  Order2_Type varchar(20) DEFAULT NULL,
  Notif2_Type varchar(20) DEFAULT NULL,
  Mat_Type varchar(20) DEFAULT NULL,
  FastM varchar(20) DEFAULT NULL,
  Cabin varchar(20) DEFAULT NULL,
  FECOD varchar(10) DEFAULT NULL,
  URCOD varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- ----------------------------
-- Table structure for n_tabelhasil_3
-- ----------------------------
DROP TABLE IF EXISTS n_tabelhasil_3;
CREATE TABLE n_tabelhasil_3 (
  ID varchar(10) DEFAULT NULL,
  ATA varchar(5) DEFAULT NULL,
  AIN varchar(20) DEFAULT NULL,
  PartNo text DEFAULT NULL,
  SerialNo text DEFAULT NULL,
  PartName varchar(50) DEFAULT NULL,
  REG varchar(20) DEFAULT NULL,
  Aircraft varchar(20) DEFAULT NULL,
  Month varchar(20) DEFAULT NULL,
  Qty varchar(20) DEFAULT NULL,
  Addtl Info - Loc varchar(20) DEFAULT NULL,
  Work Center varchar(20) DEFAULT NULL,
  RemCodeXXX varchar(20) DEFAULT NULL,
  Reason varchar(100) DEFAULT '',
  RealReason varchar(255) DEFAULT NULL,
  Originating Order varchar(20) DEFAULT NULL,
  Originating Order Desc varchar(255) DEFAULT NULL,
  Maintenance Item Type varchar(20) DEFAULT NULL,
  Maintenance Item varchar(20) DEFAULT NULL,
  First Notification Trigger varchar(20) DEFAULT NULL,
  Related AML - Prob varchar(255) DEFAULT NULL,
  Related AML - Rect varchar(255) DEFAULT NULL,
  NFF varchar(20) DEFAULT NULL,
  DateRem date DEFAULT NULL,
  Year varchar(20) DEFAULT NULL,
  TSN varchar(20) DEFAULT NULL,
  TSI varchar(20) DEFAULT NULL,
  TSO varchar(20) DEFAULT NULL,
  TSC varchar(20) DEFAULT NULL,
  CSN varchar(20) DEFAULT NULL,
  CSI varchar(20) DEFAULT NULL,
  CSO varchar(20) DEFAULT NULL,
  CSC varchar(20) DEFAULT NULL,
  Serviceable varchar(20) DEFAULT NULL,
  Shop_Notification varchar(20) DEFAULT NULL,
  Shop_Visit varchar(255) DEFAULT '',
  Shop_Finding varchar(255) DEFAULT '',
  XXX varchar(20) DEFAULT NULL,
  Originating_Order varchar(20) DEFAULT NULL,
  Orig_Order_Type varchar(20) DEFAULT NULL,
  Orig_Order_Notif varchar(20) DEFAULT NULL,
  Orig_Order_Notif_Type varchar(20) DEFAULT NULL,
  Orig_Order_Notif_Desc varchar(255) DEFAULT NULL,
  Order2 varchar(20) DEFAULT NULL,
  Order2_Type varchar(20) DEFAULT NULL,
  Notif2_Type varchar(20) DEFAULT NULL,
  Mat_Type varchar(20) DEFAULT NULL,
  FastM varchar(20) DEFAULT NULL,
  Cabin varchar(20) DEFAULT NULL,
  FECOD varchar(10) DEFAULT NULL,
  URCOD varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- ----------------------------
-- Table structure for n_tbl_notif_d8
-- ----------------------------
DROP TABLE IF EXISTS n_tbl_notif_d8;
CREATE TABLE n_tbl_notif_d8 (
  QMNUM varchar(20) DEFAULT NULL,
  QMART varchar(20) DEFAULT NULL,
  EQUNR varchar(20) DEFAULT NULL,
  BTPLN varchar(100) DEFAULT NULL,
  PLTXT varchar(255) DEFAULT NULL,
  MATNR varchar(50) DEFAULT NULL,
  MAKTX varchar(50) DEFAULT NULL,
  SERIALNR varchar(50) DEFAULT NULL,
  QMDAT date DEFAULT NULL,
  ERDAT date DEFAULT NULL,
  AEDAT date DEFAULT NULL,
  QMTXT varchar(50) DEFAULT NULL,
  FECOD varchar(50) DEFAULT NULL,
  URCOD varchar(50) DEFAULT NULL,
  QMCOD varchar(50) DEFAULT NULL,
  KURZTEXT varchar(50) DEFAULT NULL,
  SMR_DEFORD varchar(50) DEFAULT NULL,
  SMR_TECHLOG varchar(50) DEFAULT NULL,
  LTEXT varchar(100) DEFAULT NULL,
  UPDATE_DATE date DEFAULT NULL,
  SMR_CHARG varchar(50) DEFAULT NULL,
  STTXT varchar(50) DEFAULT NULL,
  USTXT varchar(50) DEFAULT NULL,
  SMR_DEFORD_detect varchar(50) DEFAULT NULL,
  SMR_DEFORD_techlog varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- ----------------------------
-- Records of n_tbl_notif_d8
-- ----------------------------

-- ----------------------------
-- Table structure for n_zabiw29_amlcml
-- ----------------------------
DROP TABLE IF EXISTS n_zabiw29_amlcml;
CREATE TABLE n_zabiw29_amlcml (
  Notification_amlcml varchar(20) DEFAULT NULL,
  Notification Date date DEFAULT NULL,
  Functional Location varchar(20) DEFAULT NULL,
  Fault Code varchar(20) DEFAULT NULL,
  Defect Code varchar(20) DEFAULT NULL,
  Departure Station varchar(20) DEFAULT NULL,
  Arrival Station varchar(20) DEFAULT NULL,
  Service varchar(100) DEFAULT NULL,
  Defect Symptoms varchar(20) DEFAULT NULL,
  Action Taken varchar(100) DEFAULT NULL,
  Sector Reference varchar(20) DEFAULT NULL,
  Notification_Description varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
-- ----------------------------
-- Table structure for n_zabiw29_w1
-- ----------------------------
DROP TABLE IF EXISTS n_zabiw29_w1;
CREATE TABLE n_zabiw29_w1 (
  Notification_W1 varchar(20) DEFAULT NULL,
  Notification_Date_W1 date DEFAULT NULL,
  Functional Location_W1 varchar(100) DEFAULT NULL,
  Fault Code_W1 varchar(20) DEFAULT NULL,
  Defect Code_W1 varchar(20) DEFAULT NULL,
  Departure Station_W1 varchar(20) DEFAULT NULL,
  Arrival Station_W1 varchar(20) DEFAULT NULL,
  Service_W1 varchar(20) DEFAULT NULL,
  Defect Symptoms_W1 varchar(50) DEFAULT NULL,
  Action Taken_W1 varchar(100) DEFAULT NULL,
  Sector Reference_W1 varchar(50) DEFAULT NULL,
  Notification_Description_W1 varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- ----------------------------
-- Table structure for n_zascmsord
-- ----------------------------
DROP TABLE IF EXISTS n_zascmsord;
CREATE TABLE n_zascmsord (
  AUART varchar(40) DEFAULT NULL,
  AUFNR varchar(40) DEFAULT NULL,
  KTEXT varchar(255) DEFAULT NULL,
  PLGRP varchar(40) DEFAULT NULL,
  VAPLZ varchar(40) DEFAULT NULL,
  VAWRK varchar(40) DEFAULT NULL,
  ILART varchar(40) DEFAULT NULL,
  REVNR varchar(40) DEFAULT NULL,
  REVTX varchar(255) DEFAULT NULL,
  TPLNR varchar(40) DEFAULT NULL,
  EQART varchar(40) DEFAULT NULL,
  PLNNR varchar(40) DEFAULT NULL,
  ADPSP varchar(40) DEFAULT NULL,
  DOKAR varchar(40) DEFAULT NULL,
  DOKNR varchar(40) DEFAULT NULL,
  DOKTL varchar(40) DEFAULT NULL,
  DOKVR varchar(40) DEFAULT NULL,
  ERDAT_CMSORD varchar(40) DEFAULT NULL,
  DEFORD varchar(40) DEFAULT NULL,
  NACHN varchar(40) DEFAULT NULL,
  MATNR_CMSORD varchar(40) DEFAULT NULL,
  SERNR varchar(40) DEFAULT NULL,
  FLAG varchar(40) DEFAULT NULL,
  SEQUENCE varchar(40) DEFAULT NULL,
  BEGRU varchar(40) DEFAULT NULL,
  PLTXT_CMSORD varchar(40) DEFAULT NULL,
  ENTERED_BY varchar(40) DEFAULT NULL,
  SMRTPLNR varchar(40) DEFAULT NULL,
  MATERIAL varchar(40) DEFAULT NULL,
  MAKTX_CMSORD varchar(40) DEFAULT NULL,
  SERIALNO varchar(40) DEFAULT NULL,
  EQART2 varchar(40) DEFAULT NULL,
  QTY varchar(40) DEFAULT NULL,
  START_DATE date DEFAULT NULL,
  FINISH_DATE date DEFAULT NULL,
  SMRD8NOTIF varchar(40) DEFAULT NULL,
  FUNCLOC varchar(40) DEFAULT NULL,
  TDLINE_HDR varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

SET FOREIGN_KEY_CHECKS=1;
