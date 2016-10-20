CREATE DATABASE nbarbaste;

-- hive> use nbarbaste;

CREATE EXTERNAL TABLE nbarbaste.prenoms ( prenom STRING, gender ARRAY<STRING>,origin ARRAY<STRING>,version DOUBLE)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\073' COLLECTION ITEMS TERMINATED by ',' STORED AS TEXTFILE LOCATION '/user/nbarbaste/prenoms';

Exo 1 :
SELECT origin, COUNT(prenom) FROM prenoms GROUP BY origin;

Exo 2 : 
SELECT SIZE(origin), COUNT(prenom) FROM prenoms GROUP BY SIZE(origin);