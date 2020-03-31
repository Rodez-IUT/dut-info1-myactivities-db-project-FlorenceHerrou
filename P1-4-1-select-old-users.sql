INSERT INTO "user" VALUES (51, 'Jim Carrey', '2019-07-21');
INSERT INTO "user" VALUES (52, 'Jimmy Abraham', '2019-06-25');
INSERT INTO "user" VALUES (53, 'Hector Balma', '2019-08-12');

SELECT username, date_created
FROM "user"
WHERE date_created < '2019-09-01'
ORDER BY username ASC