CREATE DATABASE nbarbaste;

-- hive> use nbarbaste;

CREATE EXTERNAL TABLE nbarbaste.prenoms ( prenom STRING, gender ARRAY<STRING>,origin ARRAY<STRING>,version DOUBLE)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\073' COLLECTION ITEMS TERMINATED by ',' STORED AS TEXTFILE LOCATION '/user/nbarbaste/prenoms';

Exo 1 :
SELECT origins, COUNT(prenom) 
FROM prenoms 
LATERAL VIEW EXPLODE (origin) originsList AS origins 
GROUP BY origins;

Exo 2 : 
SELECT SIZE(origin), COUNT(prenom) FROM prenoms GROUP BY SIZE(origin);