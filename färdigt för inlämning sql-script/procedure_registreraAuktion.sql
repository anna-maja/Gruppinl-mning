DELIMITER //  
create DEFINER=`root`@`localhost` PROCEDURE `RegistreraAuktion`(starttid datetime, sluttid datetime, startpris int, produkt int)
BEGIN

insert into aktiv_auktion 
values (null, starttid, sluttid, startpris, NULL, NULL, produkt);

END //

DELIMITER ;