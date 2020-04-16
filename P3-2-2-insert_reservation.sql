
- Description de la fonction :  

    - *Nom de la fonction* :  
    "gds.insert_reservation"  
    - *Arguments de la fonction* :  
    "une_date_debut" de type "timestamp without time zone"
    "une_date_fin" de type "timestamp without time zone" 
    "un_nom_de_salle" de type "character varying(250)"
    - *Description* :   
    la fonction insert une nouvelle réservation dans la table "reservation" dont la date de début, 
	la date de fin et le nom de la salle réservée sont transmis en paramètres.
    La fonction utilise la séquence "gds.reservation_seq" pour générer la valeur de la clé primaire 
	de la réservation à insérer dans la base. La date de création et la date de modification 
	sont initialisées en utilisant la fonction "now()". 
    La fonction retourne la réservation qui a été insérée.
	
	CREATE FUNCTION gds.insert_reservation(une_date_debut timestamp without time zone, une_date_fin timestamp without time zone, un_nom_de_salle character varying(250)) 
	RETURNS gds.reservation AS $$
	INSERT INTO gds.reservation VALUES (nextval('gds.reservation_seq'), une_date_debut, une_date_fin, now(), now(), (SELECT id FROM gds.salle WHERE nom = un_nom_de_salle))
	RETURNING *
	$$ LANGUAGE SQL;