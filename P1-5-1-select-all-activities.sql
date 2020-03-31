
SELECT title, description, username
FROM activity
LEFT OUTER JOIN "user" 
ON owner_id = "user".id
WHERE creation_date > '2019-09-01'
ORDER BY title, username ASC

INSERT INTO public.activity VALUES (5, 'Tennis de table', 'Activité loisir tennis de table', '2019-09-21 11:30:00', '2019-09-21 11:30:00', 102);
INSERT INTO public.activity VALUES (6, 'Théatre', 'Club de théâtre amateur', '2019-09-21 11:30:00', '2019-09-21 11:30:00');
INSERT INTO public.activity VALUES (7, 'Musique funk', 'Groupe de musique amateur passionné de jazz fusion funk.', '2019-09-21 11:30:00', '2019-09-21 11:30:00');
INSERT INTO public.activity VALUES (8, 'Football', 'Club de foot pour tous les ages', '2019-09-21 11:30:00', '2019-09-21 11:30:51.00', 52);
INSERT INTO public.activity VALUES (9, 'Tennis de table', 'Activité loisir tennis de table', '2019-09-21 11:30:00', '2019-09-21 11:30:00', 53);
INSERT INTO public.activity VALUES (10, 'Théatre', 'Club de théâtre amateur', '2019-09-21 11:30:00', '2019-09-21 11:30:00');
INSERT INTO public.activity VALUES (11, 'Musique funk', 'Groupe de musique amateur passionné de jazz fusion funk.', '2019-09-21 11:30:00', '2019-09-21 11:30:00');
INSERT INTO public.activity VALUES (12, 'Football', 'Club de foot pour tous les ages', '2019-09-21 11:30:00', '2019-09-21 11:30:51.00', 51);