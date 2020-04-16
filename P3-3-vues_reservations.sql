
Description :
la vue retourne la liste de toutes les réservations. Chaque ligne retournée affiche :
l id de la réservation
le nom de la salle réservée
la date de début de la réservation
la date de fin de la réservation Les réservations sont triées sur les noms des salles 
puis de la date de début la plus récente à la date de début la plus ancienne.

CREATE VIEW gds.vue_reservations AS 
	SELECT res.id, sal.nom, date_debut, date_fin
	FROM gds.reservation AS res
	JOIN gds.salle AS sal
	ON salle_id = sal.id
	ORDER BY sal.nom ASC, date_debut DESC;