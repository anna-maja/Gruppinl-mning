DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `RegistreraBud`(IN kundid int, auktionsid int, budvarde int, tidpunkt datetime)
BEGIN

insert into bud 
values (NULL, budvarde, now(), auktionsid, kundid);

END //
DELIMITER ;