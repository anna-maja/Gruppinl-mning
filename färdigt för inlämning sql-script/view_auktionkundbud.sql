CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER

-- Denna vy visar alla bud, kunder och auktioner.
-- Vi tänker att om den vyn är framme, är det lätt att göra ny sökning på en specifik auktion. 
-- t ex att lägga till "WHERE Auktion = '1000' "

VIEW `auktion_kund_bud` AS
    SELECT 
        `bud`.`id_Bud` AS `id_Bud`,
        `bud`.`currentBid` AS `Bud`,
        `bud`.`tidPunkt` AS `Tid`,
        `bud`.`aktiv_auktion_id_auktionsnummer` AS `Auktion`,
        `bud`.`Kund_id_Kundnummer` AS `Kundnummer`
    FROM
        `bud`;