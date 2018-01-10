CREATE DEFINER=`root`@`localhost` PROCEDURE `RegistreraBud`(IN kundid int, auktionsid int, budvarde int)
BEGIN

insert into bud values (NULL, kundid, auktionsid, budvarde, NULL);

END