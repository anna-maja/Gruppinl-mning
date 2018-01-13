DELIMITER //
CREATE PROCEDURE `RegistreraProdukt` (produktnamn varchar(45), kategori varchar(45), leverantor int)
BEGIN

insert into produkt
values (null, produktnamn, kategori, leverantor);


END //
DELIMITER ;