CREATE TABLE `auktionshistorik` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `auktionID` int(11) NOT NULL,
  `startDatum` datetime NOT NULL,
  `slutDatum` datetime NOT NULL,
  `utropsPris` int(11) NOT NULL,
  `Produkt_ID_ArtNr` int(11) NOT NULL,
  `PengarTillGunnar` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci