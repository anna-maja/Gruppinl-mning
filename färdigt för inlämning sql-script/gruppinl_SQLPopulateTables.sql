
INSERT INTO `gruppinlamning_relationmodel`.`leverantor` (`id_OrganisationsNummer`, `telefonNummer`, `namn`, `mailAdress`, `provisionProcent`) VALUES ('111', '070-111 11 11', 'First Firm', 'firstfirm@gmail.com', '0.01');
INSERT INTO `gruppinlamning_relationmodel`.`leverantor` (`id_OrganisationsNummer`, `telefonNummer`, `namn`, `mailAdress`, `provisionProcent`) VALUES ('222', '070-222 22 22', 'Second Firm', 'secondfirm@gmail.com', '0.02');
INSERT INTO `gruppinlamning_relationmodel`.`leverantor` (`id_OrganisationsNummer`, `telefonNummer`, `namn`, `mailAdress`, `provisionProcent`) VALUES ('333', '070-333 33 33', 'Third Firm', 'thirdfirm@gmail.com', '0.03');

INSERT INTO `gruppinlamning_relationmodel`.`kund` (`id_Kundnummer`, `namn`, `telnr`) VALUES ('1', 'Ettan Ettson', '071-717171');
INSERT INTO `gruppinlamning_relationmodel`.`kund` (`id_Kundnummer`, `namn`, `telnr`) VALUES ('2', 'Andra Andrasson', '072-727272');
INSERT INTO `gruppinlamning_relationmodel`.`kund` (`id_Kundnummer`, `namn`, `telnr`) VALUES ('3', 'Trean Treansson', '073-737373');
INSERT INTO `gruppinlamning_relationmodel`.`kund` (`id_Kundnummer`, `namn`, `telnr`) VALUES ('4', 'Fyran Fyransson', '074-747474');

INSERT INTO `gruppinlamning_relationmodel`.`produkt` (`ID_ArtNr`, `ProduktNamn`, `Kategori`, `Leverantor_id_OrganisationsNummer`) VALUES ('101', 'Smörkniv 111', 'Köksredskap', '111');
INSERT INTO `gruppinlamning_relationmodel`.`produkt` (`ID_ArtNr`, `ProduktNamn`, `Kategori`, `Leverantor_id_OrganisationsNummer`) VALUES ('102', 'Stol 111', 'Möbler', '111');
INSERT INTO `gruppinlamning_relationmodel`.`produkt` (`ProduktNamn`, `Kategori`, `Leverantor_id_OrganisationsNummer`) VALUES ('Tandborste 222', 'Hygienartiklar', '222');
INSERT INTO `gruppinlamning_relationmodel`.`produkt` (`ProduktNamn`, `Kategori`, `Leverantor_id_OrganisationsNummer`) VALUES ('Stol222', 'Möbler', '222');
INSERT INTO `gruppinlamning_relationmodel`.`produkt` (`ProduktNamn`, `Kategori`, `Leverantor_id_OrganisationsNummer`) VALUES ('Smörkniv333', 'Köksredskap', '333');
INSERT INTO `gruppinlamning_relationmodel`.`produkt` (`ProduktNamn`, `Kategori`, `Leverantor_id_OrganisationsNummer`) VALUES ('Stol333', 'Möbler', '333');

INSERT INTO `gruppinlamning_relationmodel`.`aktiv_auktion` (`id_auktionsnummer`, `startDatum`, `slutDatum`, `utropsPris`, `Produkt_ID_ArtNr`) VALUES ('1000', '2018-01-08 15:16:00', '2018-01-08 15:30:00', '1', '101');
INSERT INTO `gruppinlamning_relationmodel`.`aktiv_auktion` (`startDatum`, `slutDatum`, `utropsPris`, `Produkt_ID_ArtNr`) VALUES ('2018-01-08 13:00:00', '2018-01-15 13:00:00', '100', '104');
INSERT INTO `gruppinlamning_relationmodel`.`aktiv_auktion` (`startDatum`, `slutDatum`, `utropsPris`, `Produkt_ID_ArtNr`) VALUES ('2018-01-08 13:00:00', '2018-01-10 19:45:00', '1002', '2001', '104');
INSERT INTO `gruppinlamning_relationmodel`.`aktiv_auktion` (`startDatum`, `slutDatum`, `utropsPris`, `Produkt_ID_ArtNr`) VALUES ('2018-01-01 11:35:00', '2019-01-01 10:00:00', '50', '103');
INSERT INTO `gruppinlamning_relationmodel`.`aktiv_auktion` (`startDatum`, `slutDatum`, `utropsPris`, `Produkt_ID_ArtNr`) VALUES ('2018-01-01 11:35:00', '2019-01-01 10:00:00', '50', '60', '103');

INSERT INTO `gruppinlamning_relationmodel`.`bud` (`id_Bud`, `currentBid`, `aktiv_auktion_id_auktionsnummer`, `Kund_id_Kundnummer`) VALUES ('1', '100', '1001', '1');
INSERT INTO `gruppinlamning_relationmodel`.`bud` (`id_Bud`, `currentBid`, `aktiv_auktion_id_auktionsnummer`, `Kund_id_Kundnummer`) VALUES ('2', '150', '1001', '2');
INSERT INTO `gruppinlamning_relationmodel`.`bud` (`currentBid`, `aktiv_auktion_id_auktionsnummer`, `Kund_id_Kundnummer`) VALUES ('1', '1000', '1');
INSERT INTO `gruppinlamning_relationmodel`.`bud` (`currentBid`, `aktiv_auktion_id_auktionsnummer`, `Kund_id_Kundnummer`) VALUES ('5', '1000', '3');
INSERT INTO `gruppinlamning_relationmodel`.`bud` (`currentBid`, `aktiv_auktion_id_auktionsnummer`, `Kund_id_Kundnummer`) VALUES ('160', '1001', '1');
INSERT INTO `gruppinlamning_relationmodel`.`bud` (`currentBid`, `aktiv_auktion_id_auktionsnummer`, `Kund_id_Kundnummer`) VALUES ('10', '1000', '2');
INSERT INTO `gruppinlamning_relationmodel`.`bud` (`currentBid`, `aktiv_auktion_id_auktionsnummer`, `Kund_id_Kundnummer`) VALUES ('15', '1000', '1');
INSERT INTO `gruppinlamning_relationmodel`.`bud` (`currentBid`, `aktiv_auktion_id_auktionsnummer`, `Kund_id_Kundnummer`) VALUES ('161', '1001', '3');
INSERT INTO `gruppinlamning_relationmodel`.`bud` (`currentBid`, `aktiv_auktion_id_auktionsnummer`, `Kund_id_Kundnummer`) VALUES ('170', '1001', '3');
INSERT INTO `gruppinlamning_relationmodel`.`bud` (`currentBid`, `aktiv_auktion_id_auktionsnummer`, `Kund_id_Kundnummer`) VALUES ('2001', '1002', '2');
INSERT INTO `gruppinlamning_relationmodel`.`bud` (`currentBid`, `aktiv_auktion_id_auktionsnummer`, `Kund_id_Kundnummer`) VALUES ('150', '1001', '1');
INSERT INTO `gruppinlamning_relationmodel`.`bud` (`currentBid`, `aktiv_auktion_id_auktionsnummer`, `Kund_id_Kundnummer`) VALUES ('60', '1004', '3');
INSERT INTO `gruppinlamning_relationmodel`.`bud` (`currentBid`, `aktiv_auktion_id_auktionsnummer`, `Kund_id_Kundnummer`) VALUES ('200', '1001', '1');