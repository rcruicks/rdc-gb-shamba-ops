-- Enter SQL statements below or load a SQL script into the editor from the toolbar.
drop table asset_type;
create table asset_type (
	id			integer not null,
	name		varchar(30) not null,
	tab			varchar(30) not null
);
insert into asset_type values(1, 'Carrier', 'CARRIERS');
insert into asset_type values(2, 'Charger', 'CHARGERS');
insert into asset_type values(3, 'Zip module', 'ZIPMODULES');
insert into asset_type values(4, 'Pilot', 'DRIVERS');
insert into asset_type values(5, 'Light', 'LIGHTS');
insert into asset_type values(6, 'Pilot kit', 'KITS');

drop table interface_type;
create table interface_type (
	id				integer not null unique,
	name 			varchar(16) not null
);
insert into interface_type values(1,'DEFAULT');

drop table comms_type;
create table comms_type (
	id				integer not null unique,
	name 			varchar(16) not null,
	netid 		integer
);
insert into comms_type values(1,'LORA-SHAMBA',0);
insert into comms_type values(2,'SIGFOX-SHAMBA',45);

drop table location_type;
create table location_type (
	id			integer not null unique,
	name		varchar(32) not null
);
insert into location_type values(0,'STORES');
insert into location_type values(1,'COLLEGE');
insert into location_type values(2,'DISPENSARY');
insert into location_type values(3,'CLINIC');
insert into location_type values(4,'FARM');
insert into location_type values(5,'WAREHOUSE');
insert into location_type values(6,'CIVIC');
insert into location_type values(7,'PRIMARY SCHOOL');
insert into location_type values(8,'SECONDARY SCHOOL');

drop table locations;
create table locations (
	id 				integer not null unique,
	name 			varchar(128) not null,
	loctyp		integer,
	lang 			char(2),
	w3w 			varchar(64),
	lat 			decimal(10,7),
	lon 			decimal(10,7),
	contact 	varchar(128)
);
insert into locations (id,name,loctyp,lang,w3w) values(0,'Kasulu Airport - Store',0,'en','sketching.across.twitchy');
insert into locations (id,name,loctyp,lang,w3w) values(1,'Kasulu Teachers College',1,'en','quicksand.radiates.masts');
insert into locations (id,name,loctyp,lang,w3w) values(2,'Kidyama Dispensary',2,'en','suspenseful.lovesick.magnify');
insert into locations (id,name,loctyp,lang,w3w) values(3,'Nyamnyusi Dispensary',2,'en','ambushed.lifelong.fairways');
insert into locations (id,name,loctyp,lang,w3w) values(4,'Nyamnyusi Primary School',7,'en','confusedly.dress.complainant');
insert into locations (id,name,loctyp,lang,w3w) values(5,'Nyakitonto Health Centre',3,'en','precinct.projecting.endured');
insert into locations (id,name,loctyp,lang,w3w) values(6,'Murubanga Primary School',7,'en','deodorant.dehydrating.mismanaged');
insert into locations (id,name,loctyp,lang,w3w) values(7,'Buchuma Primary School',7,'en','propellants.overran.oxides');
insert into locations (id,name,loctyp,lang,w3w) values(8,'Mugombe Dispensary',2,'en','singularly.derisory.diggers');
insert into locations (id,name,loctyp,lang,w3w) values(9,'Nyachenda Dispensary',2,'en','liveliest.element.bookworms');
insert into locations (id,name,loctyp,lang,w3w) values(10,'Kimwanya Dispensary',2,'en','moneymaking.spurs.tailgate');
insert into locations (id,name,loctyp,lang,w3w) values(11,'Kitagata Dispensary',2,'en','yuppie.beaks.boomerang');
insert into locations (id,name,loctyp,lang,w3w) values(12,'Makere Red Cross Centre',3,'en','moorings.enjoys.prototyping');
insert into locations (id,name,loctyp,lang,w3w) values(13,'Heru-Ushingo',2,'en','confessed.assertively.republish');
insert into locations (id,name,loctyp,lang,w3w) values(14,'Shunga Primary School',7,'en','linseed.widgets.reunions');
insert into locations (id,name,loctyp,lang,w3w) values(15,'Mtabila',2,'en','starships.trolled.upholds');
insert into locations (id,name,loctyp,lang,w3w) values(16,'Kabanga Teachers College',1,'en','stallion.triangles.others');
insert into locations (id,name,loctyp,lang,w3w) values(17,'Kabanga Hospital',3,'en','showtime.kooks.whisperings');
insert into locations (id,name,loctyp,lang,w3w) values(18,'Kabanga Nursing School',1,'en','evokes.paratrooper.shackle');
insert into locations (id,name,loctyp,lang,w3w) values(19,'Bogwe Secondary School',8,'en','above.inflamed.curving');
insert into locations (id,name,loctyp,lang,w3w) values(20,'Kasulu Secondary School',8,'en','highlight.renovated.giggles');
insert into locations (id,name,loctyp,lang,w3w) values(21,'Nyansha Secondary School',8,'en','lend.inhibitors.sponsorship');
insert into locations (id,name,loctyp,lang,w3w) values(22,'Hwazi Secondary School',8,'en','contemplate.workbench.resorting');
insert into locations (id,name,loctyp,lang,w3w) values(23,'TFS Post Office',6,'en','spoken.solicitor.corals');
insert into locations (id,name,loctyp,lang,w3w) values(24,'Kasulu Primary School',7,'en','disposal.hits.adverbs');
insert into locations (id,name,loctyp,lang,w3w) values(25,'Kasulu Primary School',7,'en','vacates.classic.martinis');
insert into locations (id,name,loctyp,lang,w3w) values(26,'Buseka Hill Secondary School',8,'en','disposal.hits.adverbs');
insert into locations (id,name,loctyp,lang,w3w) values(27,'Nyumbigwa Dispensary',2,'en','intolerable.scarily.search');
insert into locations (id,name,loctyp,lang,w3w) values(28,'Imanga Primary School',7,'en','flaking.strainer.configures');
insert into locations (id,name,loctyp,lang,w3w) values(29,'Bugaga Primary School',7,'en','counter.anniversary.unending');
insert into locations (id,name,loctyp,lang,w3w) values(30,'Bugaga Dispensary',2,'en','spotlessly.nabbed.callousness');
insert into locations (id,name,loctyp,lang,w3w) values(31,'Muhanga Dispensary',2,'en','masterworks.deliverance.backfires');
insert into locations (id,name,loctyp,lang,w3w) values(32,'Shunga Health Centre',3,'en','shallots.danger.purpose');
insert into locations (id,name,loctyp,lang,w3w) values(33,'Nkundutsi Primary School',7,'en','unofficial.parasols.garnishing');
insert into locations (id,name,loctyp,lang,w3w) values(34,'Nkundutsi Dispensary',2,'en','imprinted.bunkers.mandatory');
insert into locations (id,name,loctyp,lang,w3w) values(35,'Nkundutsi Secondary School',8,'en','change.haulage.stripe');

insert into locations (id,name,loctyp,lang,w3w) values(70,'Kabagwe Secondary School', 8, 'sw', 'isemwe.wasaa.mipera');
insert into locations (id,name,loctyp,lang,w3w) values(71,'Kasangezi Secondary School', 8, 'sw', 'kujitathmini.wanaoa.udenda');
insert into locations (id,name,loctyp,lang,w3w) values(72,'Kihenya Secondary School', 8, 'sw', 'kukuonya.hakimo.kupambanua');
insert into locations (id,name,loctyp,lang,w3w) values(73,'Kimenyi Secondary School', 8, 'sw', 'kuingizwa.useremala.nyakua');
insert into locations (id,name,loctyp,lang,w3w) values(74,'Kimwanya Secondary School', 8, 'sw', 'zimefungwa.vitatoa.mafunzo');
insert into locations (id,name,loctyp,lang,w3w) values(75,'Kinyaka Secondary School', 8, 'sw', 'mwagwa.asivyo.wachapishaji');
insert into locations (id,name,loctyp,lang,w3w) values(76,'Kurunyemi Secondary School', 8, 'sw', 'shemeji.arithi.yamekamilika');
insert into locations (id,name,loctyp,lang,w3w) values(77,'Makere Secondary School', 8, 'sw', 'upishi.kunguru.vyombo');
insert into locations (id,name,loctyp,lang,w3w) values(78,'Muyovoz Secondary School', 8, 'sw', 'kuruka.utawaona.zenye');
insert into locations (id,name,loctyp,lang,w3w) values(79,'Ntamya Secondary School', 8, 'sw', 'vinono.kutosha.vunjika');
insert into locations (id,name,loctyp,lang,w3w) values(80,'Nyakitonto Secondary School', 8, 'sw', 'husomwa.midundo.inaratibu');
insert into locations (id,name,loctyp,lang,w3w) values(81,'Rungwe Mpya Secondary School', 8, 'sw', 'sikukuu.kuelekea.zurura');
insert into locations (id,name,loctyp,lang,w3w) values(82,'Rusesa Secondary School', 8, 'sw', 'mwanasayansi.kuzitaka.kubadilishia');
insert into locations (id,name,loctyp,lang,w3w) values(83,'Titye Secondary School', 8, 'sw', 'imetangaza.chipua.alitii');
insert into locations (id,name,loctyp,lang,w3w) values(84,'Zeze Secondary School', 8, 'sw', 'hereni.ulioko.umbika');

drop table carrier_type;
create table carrier_type (
	id				integer not null unique,
	name			varchar(16) not null,
	comtyp		integer,
	charges		integer not null,
	carries		integer not null,
	uses      integer not null
);
insert into carrier_type values(1,'QUAD',1,0,4,1);
insert into carrier_type values(2,'TRAILER',1,0,0,1);
insert into carrier_type values(3,'DRONE',1,0,3,1);
insert into carrier_type values(4,'TRUCK',1,0,40,0);

drop table carriers;
create table carriers (
	id 				integer not null unique,
	name 			varchar(64) not null,
	zin       varchar(10) not null,
	cartyp		integer
);
insert into carriers (id,name,zin,cartyp) values( 11, 'philomena-margaret-vivienne', '1804423001',1);
insert into carriers (id,name,zin,cartyp) values( 12, 'mary-louise-evelyn', '1804423002',1);
insert into carriers (id,name,zin,cartyp) values( 13, 'elizabeth-mary-margaret', '1804423003',1);
insert into carriers (id,name,zin,cartyp) values( 14, 'margaret-susan-helen', '1804423004',1);
insert into carriers (id,name,zin,cartyp) values( 15, 'davina-helen-elizabeth', '1804423005',1);
insert into carriers (id,name,zin,cartyp) values( 16, 'mary-helen-susan', '1804423006',1);
insert into carriers (id,name,zin,cartyp) values( 17, 'margaret-abigail-jane', '1804423007',1);
insert into carriers (id,name,zin,cartyp) values( 18, 'joan-jane-mary', '1804423008',1);
insert into carriers (id,name,zin,cartyp) values( 19, 'susan-jane-elizabeth', '1804423009',1);
insert into carriers (id,name,zin,cartyp) values( 20, 'evelyn-helen-louise', '1804423010',1);

insert into carriers (id,name,zin,cartyp) values( 101, 'dennis', '1804423101',3);
insert into carriers (id,name,zin,cartyp) values( 102, 'gnasher', '1804423102',3);

drop table carrier_position;
create table carrier_position (
	carrier		integer not null unique,
	posdate		date not null,
	postime		time not null,
	lat				decimal(10,7),
	lon				decimal(10,7),
	w3w				varchar(64),
	driver		integer not null
);

drop table drivers;
create table drivers (
	id				integer not null unique,
	name			varchar(128) not null,
	aka				varchar(32)
);
insert into drivers values(1, 'Roberta', 'Bob');
insert into drivers values(2, 'Edmund', 'Ed');
insert into drivers values(3, 'Eoin', 'Eoin');
insert into drivers values(4, 'Kevin', 'KD');

drop table zip_type;
create table zip_type (
	id				integer not null unique,
	name			varchar(16) not null,
	comtyp		integer not null,
	inttyp		integer not null,
	capacity	integer not null
);
insert into zip_type (id,name,comtyp,inttyp,capacity) values(1,'ZMLORA03',1,1,3000);
insert into zip_type (id,name,comtyp,inttyp,capacity) values(2,'ZMLORA02',1,1,2000);
insert into zip_type (id,name,comtyp,inttyp,capacity) values(3,'ZMSFOX02',2,1,2000);

drop table zipmodules;
create table zipmodules (
	id				integer not null unique,
	name			varchar(32) not null,
	zin       integer not null,
	ziptyp		integer not null,
	charge		integer not null,
	charge_date	timestamp
);
insert into zipmodules (id,name,zin,ziptyp,charge) values(1,'zipmod0601',601,1,0);
insert into zipmodules (id,name,zin,ziptyp,charge) values(2,'zipmod0602',602,1,0);
insert into zipmodules (id,name,zin,ziptyp,charge) values(3,'zipmod0603',603,1,0);
insert into zipmodules (id,name,zin,ziptyp,charge) values(4,'zipmod0604',604,1,0);
insert into zipmodules (id,name,zin,ziptyp,charge) values(5,'zipmod0605',605,1,0);
insert into zipmodules (id,name,zin,ziptyp,charge) values(6,'zipmod0606',606,1,0);
insert into zipmodules (id,name,zin,ziptyp,charge) values(7,'zipmod0607',607,1,0);
insert into zipmodules (id,name,zin,ziptyp,charge) values(8,'zipmod0608',608,1,0);
insert into zipmodules (id,name,zin,ziptyp,charge) values(9,'zipmod0609',609,1,0);
insert into zipmodules (id,name,zin,ziptyp,charge) values(10,'zipmod0610',610,1,0);

insert into zipmodules (id,name,zin,ziptyp,charge) values(21,'zipmod2001',2001,2,0);
insert into zipmodules (id,name,zin,ziptyp,charge) values(22,'zipmod2002',2002,2,0);
insert into zipmodules (id,name,zin,ziptyp,charge) values(23,'zipmod2003',2003,2,0);
insert into zipmodules (id,name,zin,ziptyp,charge) values(24,'zipmod2004',2004,2,0);
insert into zipmodules (id,name,zin,ziptyp,charge) values(25,'zipmod2005',2005,2,0);
insert into zipmodules (id,name,zin,ziptyp,charge) values(26,'zipmod2006',2006,2,0);
insert into zipmodules (id,name,zin,ziptyp,charge) values(27,'zipmod2007',2007,2,0);
insert into zipmodules (id,name,zin,ziptyp,charge) values(28,'zipmod2008',2008,2,0);
insert into zipmodules (id,name,zin,ziptyp,charge) values(29,'zipmod2009',2009,2,0);
insert into zipmodules (id,name,zin,ziptyp,charge) values(30,'zipmod2010',2010,2,0);

drop table state_type;
create table state_type (
  id 				integer not null unique,
	statyp		varchar(16) not null
);

drop table charger_type;
create table charger_type (
	id				integer not null unique,
	name			varchar(32) not null,
	comtyp		integer not null,
	inttyp		integer not null,
	capacity  integer not null,
	charges 	integer not null,
	carries 	integer not null,
	uses			integer not null
);
insert into charger_type (id,name,comtyp,inttyp,capacity,charges,carries,uses) values(1,'ZC2000',1,1,2000,6,0,1);

drop table chargers;
create table chargers (
	id				integer not null unique,
	name			varchar(32) not null,
	zin				integer not null,
	chgtyp		integer not null,
	location	integer not null
);
insert into chargers (id,name,zin,chgtyp,location) values(1,'zipchg0101',3001,1,0);
insert into chargers (id,name,zin,chgtyp,location) values(2,'zipchg0102',3002,1,16);
insert into chargers (id,name,zin,chgtyp,location) values(3,'zipchg0103',3003,1,70);

drop table zip_loc;
create table zip_loc (
	zip_id		integer not null,
	loc_id		integer,
	car_id		integer,
	loctime		timestamp not null
);

insert into zip_loc (zip_id,loc_id,loctime) values(1,16,current timestamp);
insert into zip_loc (zip_id,loc_id,loctime) values(2,16,current timestamp);
insert into zip_loc (zip_id,loc_id,loctime) values(3,16,current timestamp);
insert into zip_loc (zip_id,loc_id,loctime) values(4,16,current timestamp);
insert into zip_loc (zip_id,loc_id,loctime) values(5,16,current timestamp);
insert into zip_loc (zip_id,loc_id,loctime) values(6,70,current timestamp);
insert into zip_loc (zip_id,loc_id,loctime) values(7,70,current timestamp);
insert into zip_loc (zip_id,loc_id,loctime) values(8,70,current timestamp);
insert into zip_loc (zip_id,loc_id,loctime) values(9,0,current timestamp);
insert into zip_loc (zip_id,loc_id,loctime) values(10,0,current timestamp);
insert into zip_loc (zip_id,loc_id,loctime) values(21,0,current timestamp);
insert into zip_loc (zip_id,loc_id,loctime) values(22,0,current timestamp);
insert into zip_loc (zip_id,loc_id,loctime) values(23,0,current timestamp);
insert into zip_loc (zip_id,loc_id,loctime) values(24,0,current timestamp);
insert into zip_loc (zip_id,loc_id,loctime) values(25,0,current timestamp);
insert into zip_loc (zip_id,loc_id,loctime) values(26,0,current timestamp);
insert into zip_loc (zip_id,loc_id,loctime) values(27,0,current timestamp);
insert into zip_loc (zip_id,loc_id,loctime) values(28,0,current timestamp);
insert into zip_loc (zip_id,loc_id,loctime) values(29,0,current timestamp);
insert into zip_loc (zip_id,loc_id,loctime) values(30,0,current timestamp);

drop table sponsors;
create table sponsors (
	id				integer not null,
	firstname varchar(30) not null,
	lastname	varchar(30),
	org				varchar(30),
	contact		varchar(30)
);
insert into sponsors values(1,'Jim','Walton','Waltons Mountain','1-512-555-1414');
insert into sponsors values(2,'Jim','Rockford','Rockford Files','1-416-555-1414');

drop table sponsorship;
create table sponsorship (
	spn_id		integer not null,
	asstyp    integer not null,
	ass_id 		integer not null
)
insert into sponsorship values(1,1,11);
insert into sponsorship values(1,1,12);
insert into sponsorship values(1,2,1);

drop table request_type;
create table request_type (
	id				integer not null,
	name			varchar(16) not null,
	desc      varchar(128)
);
insert into request_type values(1,'RESUPPLY','Resupply power unit - normal');
insert into request_type values(2,'URGENT','Resupply power unit - urgent');
insert into request_type values(2,'ADDPILOT','Assign pilot to quad');

drop table requests;
create table requests (
	loc_id		integer not null,
	reqtyp		integer not null,
	reqtime		timestamp not null,
	status		integer not null,
	notes			varchar(128)
);
