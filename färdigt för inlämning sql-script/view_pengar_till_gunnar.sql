-- Detta visar Gunnars provision, baserat på slutpris, och auktionens id-nummer samt slutdatum. 
-- Vi har inte kunnnat få in intervall i den här versionen.
-- 
-- Det borde kunna göras som en trigger - när slutdatum är uppnått OCH slutbud == null, skickas mail till Gunnar. 
-- 
-- Om auktionen har slutpris != null, kan den raderas och insertas i auktionshistorik. 
-- TRIGGER - innan inserten, aktiveras detta script. Kolumnen PengarTillGunnar läggs till som kolumn i auktionshistorik, eftersom den inte finns . 
-- Det gör att värdet PengarTillGunnar går att hitta i tabellen auktionshistorik. 

CREATE VIEW `pengar_till_gunnar` AS

select slutpris * provisionProcent as PengarTillGunnar,
aktiv_auktion.slutDatum,
aktiv_auktion.id_auktionsnummer

from gruppinlamning_relationmodel.aktiv_auktion

inner join gruppinlamning_relationmodel.produkt
on gruppinlamning_relationmodel.aktiv_auktion.Produkt_ID_ArtNr = gruppinlamning_relationmodel.produkt.ID_ArtNr


inner join gruppinlamning_relationmodel.leverantor
on gruppinlamning_relationmodel.produkt.Leverantor_id_OrganisationsNummer = gruppinlamning_relationmodel.leverantor.id_OrganisationsNummer

where 
slutPris is not null;