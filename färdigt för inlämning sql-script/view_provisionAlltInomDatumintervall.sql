CREATE VIEW `provisionAlltInomDatumintervall` AS

select 
slutpris * provisionProcent as PengarTillGunnar,
slutDatum

from gruppinlamning_relationmodel.aktiv_auktion


inner join gruppinlamning_relationmodel.produkt
on gruppinlamning_relationmodel.aktiv_auktion.Produkt_ID_ArtNr = gruppinlamning_relationmodel.produkt.ID_ArtNr


inner join gruppinlamning_relationmodel.leverantor
on gruppinlamning_relationmodel.produkt.Leverantor_id_OrganisationsNummer = gruppinlamning_relationmodel.leverantor.id_OrganisationsNummer

where 
slutPris is not null 
and
(startDatum > '2018-01-08 08:00:00'
and slutDatum < '2018-01-10 16:59:59')
;

