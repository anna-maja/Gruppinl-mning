CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
-- detta visar alla maxbud, oavsett om auktionen är avslutad eller pågående.
-- vill man söka på bara pågående, kan det göras med en where-sats i slutet, 
-- att visa allt där datum är högre än dagens datum.
VIEW `visa_maxbud` AS
    SELECT 
        `gruppinlamning_relationmodel`.`aktiv_auktion`.`id_auktionsnummer` AS `id_auktionsnummer`,
        `gruppinlamning_relationmodel`.`bud`.`Kund_id_Kundnummer` AS `Kund_id_Kundnummer`,
        `gruppinlamning_relationmodel`.`bud`.`currentBid` AS `currentBid`
    FROM
        (((`gruppinlamning_relationmodel`.`aktiv_auktion`
        JOIN `gruppinlamning_relationmodel`.`bud` ON ((`gruppinlamning_relationmodel`.`aktiv_auktion`.`id_auktionsnummer` = `gruppinlamning_relationmodel`.`bud`.`aktiv_auktion_id_auktionsnummer`)))
        JOIN `gruppinlamning_relationmodel`.`kund` ON ((`gruppinlamning_relationmodel`.`bud`.`Kund_id_Kundnummer` = `gruppinlamning_relationmodel`.`kund`.`id_Kundnummer`)))
        JOIN (SELECT 
            `gruppinlamning_relationmodel`.`bud`.`aktiv_auktion_id_auktionsnummer` AS `aktiv_auktion_id_auktionsnummer`,
                MAX(`gruppinlamning_relationmodel`.`bud`.`currentBid`) AS `MaxBud`
        FROM
            (`gruppinlamning_relationmodel`.`aktiv_auktion`
        JOIN `gruppinlamning_relationmodel`.`bud`)
        WHERE
            (`gruppinlamning_relationmodel`.`aktiv_auktion`.`id_auktionsnummer` = `gruppinlamning_relationmodel`.`bud`.`aktiv_auktion_id_auktionsnummer`)
        GROUP BY `gruppinlamning_relationmodel`.`bud`.`aktiv_auktion_id_auktionsnummer`) `auktionmaxbud` ON (((`auktionmaxbud`.`aktiv_auktion_id_auktionsnummer` = `gruppinlamning_relationmodel`.`aktiv_auktion`.`id_auktionsnummer`)
            AND (`gruppinlamning_relationmodel`.`bud`.`currentBid` = `auktionmaxbud`.`MaxBud`))))

   ORDER BY `gruppinlamning_relationmodel`.`aktiv_auktion`.`id_auktionsnummer`