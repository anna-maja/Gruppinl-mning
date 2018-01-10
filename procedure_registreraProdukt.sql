CREATE PROCEDURE registrera_produkt (artnr int, produktnamn varchar(45), kategori varchar(45), leverantorID int)
BEGIN
 
 insert into leverantor values (artnr, produktnamn, kategori, leverantorID);
 
END