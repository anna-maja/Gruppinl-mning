CREATE  OR REPLACE VIEW visa_maxbud AS 

select aktiv_auktion.id_auktionsnummer, bud.Kund_id_Kundnummer, bud.currentBid 

from aktiv_auktion

inner join bud
on aktiv_auktion.id_auktionsnummer = bud.aktiv_auktion_id_auktionsnummer

inner join kund
on bud.Kund_id_Kundnummer = kund.id_Kundnummer

inner join

(SELECT aktiv_auktion_id_auktionsnummer, max(currentBid) as MaxBud
FROM aktiv_auktion
inner join bud
WHERE aktiv_auktion.id_auktionsnummer = bud.aktiv_auktion_id_auktionsnummer
GROUP BY aktiv_auktion_id_auktionsnummer) AuktionMaxBud

on 
AuktionMaxBud.aktiv_auktion_id_auktionsnummer = aktiv_auktion.id_auktionsnummer
and 
bud.currentBid = AuktionMaxBud.MaxBud
order by
aktiv_auktion.id_auktionsnummer
;

