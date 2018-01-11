CREATE VIEW `visa_alla_kunder_med_bud` AS 
select *
from gruppinlamning_relationmodel.bud

inner join gruppinlamning_relationmodel.aktiv_auktion
on gruppinlamning_relationmodel.bud.aktiv_auktion_id_auktionsnummer = gruppinlamning_relationmodel.aktiv_auktion.id_auktionsnummer
;
