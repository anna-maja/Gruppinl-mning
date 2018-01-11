
DROP TRIGGER `gruppinlamning_relationModel`.`aktiv_auktion_BEFORE_DELETE` IF EXISTS
DELIMITER //
CREATE DEFINER = CURRENT_USER 
TRIGGER `gruppinlamning_relationModel`.`aktiv_auktion_BEFORE_DELETE` 
BEFORE DELETE 
ON `aktiv_auktion` 
FOR EACH ROW

BEGIN

   -- Lägga in data i auktionshistorik
   -- I tabellen auktionshistorik vill jag lägga in, i dessa kolumner...
   INSERT INTO gruppinlamning_relationmodel.auktionshistorik
   (auktionID,
   startDatum,
   slutDatum,
   utropsPris,
   slutPris,
   Produkt_ID_ArtNr
   )
   -- dessa värden, från gamla tabellen.
   VALUES
   ( OLD.id_auktionsnummer,
   OLD.startDatum,
   OLD.slutDatum,
   OLD.utropsPris,
   OLD.slutPris,
   OLD.Produkt_ID_ArtNr)
   ;

END; //

DELIMITER ;