CREATE TABLE IF NOT EXISTS public."Yearly Crimes"
(
    "Law_Cat_Cd" "char",
    "Perp_Race" character varying COLLATE pg_catalog."default",
    "Arrest_Boro" "char",
    "Age_Group" character(10),
    "Perp_Sex" "char",
    "Arrest_Date" character varying COLLATE pg_catalog."default",
    counts numeric
);
SELECT * 
FROM public."Yearly Crimes"
;


CREATE TABLE IF NOT EXISTS public."Monthly Crimes"
(
    "Law_Cat_Cd" "char",
    "Perp_Race" character varying COLLATE pg_catalog."default",
    "Arrest_Boro" "char",
    "Age_Group" character(10),
    "Perp_Sex" "char",
    "Arrest_Date" character varying COLLATE pg_catalog."default",
    counts numeric
);

SELECT * 
FROM public."Monthly Crimes"
;

CREATE TABLE IF NOT EXISTS public."Felony"
(
    "Law_Cat_Cd" "char",
    "Perp_Race" character varying COLLATE pg_catalog."default",
    "Arrest_Boro" "char",
    "Age_Group" character varying COLLATE pg_catalog."default",
    "Perp_Sex" "char",
    "Arrest_Date" character varying COLLATE pg_catalog."default",
    counts numeric
);

SELECT * 
FROM public."Felony"



CREATE TABLE IF NOT EXISTS public."Misdemeanor"
(
    "Law_Cat_Cd" "char",
    "Perp_Race" character varying COLLATE pg_catalog."default",
    "Arrest_Boro" "char",
    "Age_Group" character varying COLLATE pg_catalog."default",
    "Perp_Sex" "char",
    "Arrest_Date" character varying COLLATE pg_catalog."default",
    counts numeric
);

SELECT * 
FROM public."Misdemeanor"
;

CREATE TABLE IF NOT EXISTS public."Violation"
(
    "Law_Cat_Cd" "char",
    "Perp_Race" character varying COLLATE pg_catalog."default",
    "Arrest_Boro" "char",
    "Age_Group" character varying COLLATE pg_catalog."default",
    "Perp_Sex" "char",
    "Arrest_Date" character varying COLLATE pg_catalog."default",
    counts numeric
);

SELECT * 
FROM public."Violation"
;

CREATE TABLE IF NOT EXISTS public."Violation"
(
    "Law_Cat_Cd" "char",
    "Perp_Race" character varying COLLATE pg_catalog."default",
    "Arrest_Boro" "char",
    "Age_Group" character varying COLLATE pg_catalog."default",
    "Perp_Sex" "char",
    "Arrest_Date" character varying COLLATE pg_catalog."default",
    counts numeric
);

DROP TABLE IF EXISTS public."NYC Historic Crime";
CREATE TABLE IF NOT EXISTS public."NYC Histroic Crime"
(
    "Arrest_Key" numeric,
    "Arrest_Date" character varying COLLATE pg_catalog."default",
    "day" numeric,
    "month" numeric,
    "PD_DESC" character varying COLLATE pg_catalog."default",
	"OFNS_DESC" character varying COLLATE pg_catalog."default",
	"Law_Cat_Cd" "char",
	"Arrest_Boro" "char",
	"Arrest_Precinct" numeric,
	"Jurdisction_Code" numeric,
	"Age_Group" character varying COLLATE pg_catalog."default",
	"Perp_Sex" "char",
	"Perp_Race" character varying COLLATE pg_catalog."default",
	"Latitude" character varying COLLATE pg_catalog."default",
	"Longitude" character varying COLLATE pg_catalog."default",
	"Lon_Lat" character varying COLLATE pg_catalog."default",
	"Zip Codes" numeric,
	"Community Districts" character varying COLLATE pg_catalog."default",
	"Borough Boundaries" character varying COLLATE pg_catalog."default",
	"City Council Districts" character varying COLLATE pg_catalog."default",
	"Police Precincts" character varying COLLATE pg_catalog."default"

);

SELECT * 
FROM public."NYC Histroic Crime"
