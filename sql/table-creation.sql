-- -----------------------------------------------------
-- AUTHOR: Bassem Gawish
-- DATE: 19/03/2020
-- -----------------------------------------------------

create table COUNTRY
(
	ID int auto_increment,
	NAME_EN varchar(30) not null,
	NAME_AR varchar(30) not null,
	constraint COUNTRY_pk
		primary key (ID)
) collate=utf8mb4_bin;


create table CITY
(
	ID int auto_increment,
	NAME_EN VARCHAR(60) not null,
	NAME_AR VARCHAR(60) not null,
	COUNTRY_ID int not null,
	constraint CITY_pk
		primary key (ID),
	constraint CITY_COUNTRY_ID_fk
		foreign key (COUNTRY_ID) references COUNTRY (ID)
)  collate=utf8mb4_bin;

create table DISTRICT
(
	ID int auto_increment,
	NAME_EN VARCHAR(60) not null,
	NAME_AR varchar(60) not null,
	CITY_ID int not null,
	constraint DISTRICT_pk
		primary key (ID),
	constraint DISTRICT_CITY_ID_fk
		foreign key (CITY_ID) references CITY (ID)
) collate=utf8mb4_bin;










