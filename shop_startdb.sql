--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

-- Started on 2022-01-27 16:01:33 WAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 207 (class 1259 OID 25062)
-- Name: clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients (
    id integer NOT NULL,
    name character varying(100),
    prenom character varying(100),
    adresse character varying(100),
    tel integer,
    mail character varying(100),
    id_produit integer NOT NULL
);


ALTER TABLE public.clients OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 25060)
-- Name: clients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clients_id_seq OWNER TO postgres;

--
-- TOC entry 3001 (class 0 OID 0)
-- Dependencies: 206
-- Name: clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;


--
-- TOC entry 203 (class 1259 OID 25038)
-- Name: fournisseur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fournisseur (
    id_fournisseur integer NOT NULL,
    name character varying(100),
    tel integer,
    adress character varying(100)
);


ALTER TABLE public.fournisseur OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 25036)
-- Name: fournisseur_id_fournisseur_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fournisseur_id_fournisseur_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fournisseur_id_fournisseur_seq OWNER TO postgres;

--
-- TOC entry 3002 (class 0 OID 0)
-- Dependencies: 202
-- Name: fournisseur_id_fournisseur_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fournisseur_id_fournisseur_seq OWNED BY public.fournisseur.id_fournisseur;


--
-- TOC entry 205 (class 1259 OID 25046)
-- Name: produit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produit (
    id_produit integer NOT NULL,
    name character varying(100),
    description text,
    price numeric,
    id_fournisseur integer NOT NULL
);


ALTER TABLE public.produit OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 25044)
-- Name: produit_id_produit_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produit_id_produit_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produit_id_produit_seq OWNER TO postgres;

--
-- TOC entry 3003 (class 0 OID 0)
-- Dependencies: 204
-- Name: produit_id_produit_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produit_id_produit_seq OWNED BY public.produit.id_produit;


--
-- TOC entry 2855 (class 2604 OID 25065)
-- Name: clients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);


--
-- TOC entry 2853 (class 2604 OID 25041)
-- Name: fournisseur id_fournisseur; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fournisseur ALTER COLUMN id_fournisseur SET DEFAULT nextval('public.fournisseur_id_fournisseur_seq'::regclass);


--
-- TOC entry 2854 (class 2604 OID 25049)
-- Name: produit id_produit; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit ALTER COLUMN id_produit SET DEFAULT nextval('public.produit_id_produit_seq'::regclass);


--
-- TOC entry 2995 (class 0 OID 25062)
-- Dependencies: 207
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clients (id, name, prenom, adresse, tel, mail, id_produit) FROM stdin;
1	Abram	McGilroy	1596 Meadow Ridge Plaza	32276968	amcgilroy0@prnewswire.com	3
2	Montague	Cummins	08494 Roxbury Trail	40240130	mcummins1@narod.ru	17
3	Hugh	Areles	159 Katie Avenue	6007461	hareles2@freewebs.com	9
4	Orin	Crabb	0380 Hoard Avenue	30382647	ocrabb3@umich.edu	16
5	Noll	Morcomb	6762 Jenna Road	25955141	nmorcomb4@geocities.com	17
6	Edeline	Snasel	4689 Northfield Trail	41483037	esnasel5@mozilla.com	16
7	Theressa	O'Fergus	6071 Golf Parkway	19527610	tofergus6@amazon.com	18
8	Sonia	Kaes	94 Reindahl Terrace	3790269	skaes7@digg.com	11
9	Valida	Burder	79 Algoma Court	32223188	vburder8@pbs.org	7
10	Dugald	Olliff	13 Old Gate Road	23793987	dolliff9@pagesperso-orange.fr	6
11	Cyrille	Orneblow	45989 Schurz Court	24902800	corneblowa@google.pl	15
12	Paxon	Silverstone	921 Caliangt Street	12709759	psilverstoneb@japanpost.jp	8
13	Perrine	Zealander	73139 Beilfuss Terrace	13050759	pzealanderc@creativecommons.org	14
14	Catie	Bourchier	33 Merry Way	8859414	cbourchierd@timesonline.co.uk	6
15	Roarke	Skittrall	73 Melby Park	38982687	rskittralle@geocities.jp	13
16	Briano	Connow	7948 Lakeland Hill	47976515	bconnowf@bravesites.com	11
17	Broddy	Scole	071 Messerschmidt Point	37498875	bscoleg@bbb.org	8
18	Alard	Commings	7 Mandrake Terrace	20148794	acommingsh@google.com.hk	10
19	Eb	Shedd	0 Colorado Drive	34300663	esheddi@slashdot.org	17
20	William	Semerad	5145 Morning Point	37482110	wsemeradj@gizmodo.com	19
21	Patrice	Walsh	38 6th Point	7074065	pwalshk@ebay.co.uk	1
22	Fanny	Drayn	644 Ramsey Alley	8298900	fdraynl@cdc.gov	18
23	Branden	Bodd	85877 Carberry Trail	44964112	bboddm@ucoz.com	2
24	Linnea	Kezourec	984 Buell Point	49384154	lkezourecn@macromedia.com	3
25	Vilhelmina	Muffitt	2 Carberry Trail	33214967	vmuffitto@imdb.com	17
26	Mervin	Jeness	245 Jackson Place	31951589	mjenessp@shutterfly.com	7
27	Albertina	Mullard	23 Warbler Street	9141883	amullardq@netvibes.com	14
28	Margery	Weild	3699 Mosinee Plaza	3737554	mweildr@nyu.edu	3
29	Amalia	Etridge	4129 Waxwing Court	2888834	aetridges@hp.com	18
30	Orion	McCrum	291 Badeau Crossing	42203656	omccrumt@umn.edu	17
31	Jan	Boddice	4 Scott Alley	10385191	jboddiceu@youtu.be	19
32	Milena	Meatyard	4073 Raven Road	13404070	mmeatyardv@hubpages.com	6
33	Al	Burtonshaw	14252 Corben Pass	19068251	aburtonshaww@elegantthemes.com	17
34	Hilly	Rutley	32656 Duke Plaza	12748498	hrutleyx@dion.ne.jp	11
35	Hortensia	Trench	816 Village Green Point	40942060	htrenchy@umn.edu	6
36	Gretna	Bortol	51683 Nelson Center	2153262	gbortolz@stumbleupon.com	19
37	Bari	Chastaing	2 Cambridge Trail	14676636	bchastaing10@smh.com.au	7
38	Joe	Pellamonuten	358 Pine View Road	38708734	jpellamonuten11@indiatimes.com	15
39	Jerrome	Inglis	0021 Dapin Hill	10130612	jinglis12@cbslocal.com	16
40	Gwenette	Reihill	70 Dorton Court	15288505	greihill13@answers.com	8
41	Romeo	Bastone	73 Toban Hill	16381387	rbastone14@dyndns.org	10
42	Danya	Stubbin	99217 Sunnyside Crossing	6270982	dstubbin15@canalblog.com	10
43	Keslie	Morillas	18 Homewood Hill	44835882	kmorillas16@slate.com	3
44	Rupert	Cornish	74 Walton Drive	16313403	rcornish17@squarespace.com	7
45	Magnum	Stables	1832 Northridge Center	32910095	mstables18@ycombinator.com	11
46	Hermie	Fernan	769 Union Terrace	12727106	hfernan19@google.es	13
47	Skye	Barhem	069 Declaration Way	2690922	sbarhem1a@washingtonpost.com	9
48	Katerina	Josefs	821 Walton Lane	44374122	kjosefs1b@bluehost.com	16
49	Jilli	Leon	933 Oakridge Hill	28177654	jleon1c@nationalgeographic.com	14
50	Marijo	Nellen	808 Butternut Trail	22869307	mnellen1d@dailymotion.com	6
51	Hynda	Cockaday	1191 Scoville Point	7418854	hcockaday1e@angelfire.com	14
52	Ebonee	Charpling	54 Lake View Junction	38672617	echarpling1f@woothemes.com	16
53	Goldy	Lawful	42641 Hovde Parkway	15708027	glawful1g@google.it	6
54	Rance	Applewhite	8 New Castle Terrace	3722323	rapplewhite1h@redcross.org	10
55	Morgun	Archell	82 Dapin Court	28303415	marchell1i@sakura.ne.jp	9
56	Page	Twyford	2123 Morning Street	25864163	ptwyford1j@home.pl	16
57	Felipa	Gaynsford	4551 Manley Point	23970536	fgaynsford1k@angelfire.com	16
58	Elvina	Fruser	4353 Judy Point	30091872	efruser1l@dedecms.com	7
59	Anthony	Byway	93940 Fuller Street	31952343	abyway1m@acquirethisname.com	10
60	Theadora	Skipton	99 Kingsford Way	48781850	tskipton1n@freewebs.com	8
61	Michele	Eglin	381 Hudson Way	46450998	meglin1o@berkeley.edu	8
62	Dulcea	Sabban	8807 Brown Pass	44115918	dsabban1p@dedecms.com	20
63	Hildy	Wagstaff	5 Hovde Junction	26893663	hwagstaff1q@about.com	3
64	Judy	Fawson	9479 Summerview Parkway	42461634	jfawson1r@ucla.edu	15
65	Raquela	Harteley	1511 Harbort Drive	21358423	rharteley1s@gizmodo.com	1
66	Shelly	Yerill	1112 Westerfield Lane	13876213	syerill1t@ovh.net	16
67	Standford	Riguard	495 Fair Oaks Drive	38833123	sriguard1u@google.es	4
68	Caryn	Motten	53 Marquette Way	27276995	cmotten1v@typepad.com	16
69	Gerri	Teenan	28 Farwell Terrace	49398386	gteenan1w@buzzfeed.com	13
70	Toddy	Apark	19006 Warrior Drive	27431567	tapark1x@w3.org	1
71	Zachery	Richt	05240 Hanover Court	50694567	zricht1y@home.pl	15
72	Dede	Beaven	48 Blaine Park	40690631	dbeaven1z@sbwire.com	20
73	Correy	Evert	2858 Farwell Circle	20903991	cevert20@slideshare.net	16
74	Duffy	Hinchshaw	3 Clarendon Avenue	18844977	dhinchshaw21@mayoclinic.com	19
75	Forrester	Guinery	1 Corben Trail	21175276	fguinery22@studiopress.com	19
76	Halli	Dooley	213 Killdeer Point	17808146	hdooley23@mail.ru	18
77	Alfy	Sloan	88 Pawling Point	19688919	asloan24@wordpress.org	12
78	Lovell	Joselson	95768 Porter Street	16626091	ljoselson25@apache.org	18
79	Garnette	Naish	37 Warner Court	1718065	gnaish26@hugedomains.com	11
80	Willamina	Headingham	37 Oak Valley Way	29818172	wheadingham27@google.de	1
81	Judye	Maben	92 Schurz Court	35456210	jmaben28@liveinternet.ru	4
82	Delia	Gopsell	43066 8th Park	32736211	dgopsell29@redcross.org	8
83	Shela	Penke	95 Glacier Hill Pass	18853755	spenke2a@facebook.com	13
84	Fifine	Kilmartin	5 Kings Drive	14266088	fkilmartin2b@hatena.ne.jp	18
85	Chloris	Durran	433 Arrowood Lane	5892863	cdurran2c@wikimedia.org	9
86	Tarra	Jenken	88 2nd Way	42913501	tjenken2d@posterous.com	12
87	Sammie	Dooher	4 Randy Parkway	41111469	sdooher2e@yellowpages.com	9
88	Doretta	Tieraney	42345 Mockingbird Lane	8473021	dtieraney2f@weibo.com	2
89	Tootsie	Blannin	35 Ridge Oak Point	6405006	tblannin2g@amazon.co.uk	2
90	Quinlan	Juzek	21320 Darwin Plaza	42892194	qjuzek2h@typepad.com	8
91	Margi	Joderli	588 Vidon Junction	18041140	mjoderli2i@printfriendly.com	7
92	Izaak	Caunter	8811 Surrey Road	33004216	icaunter2j@unesco.org	5
93	Abraham	Giacomuzzi	3 Hansons Circle	16481343	agiacomuzzi2k@simplemachines.org	19
94	Jobye	Oxe	4 Sachs Trail	1829445	joxe2l@state.tx.us	13
95	Kariotta	Drage	6767 Summer Ridge Junction	50275707	kdrage2m@theatlantic.com	20
96	Karrah	Proffer	3 Arkansas Alley	10497349	kproffer2n@geocities.jp	16
97	Marieann	Cabble	02 Little Fleur Center	44161530	mcabble2o@comsenz.com	9
98	Sarene	Hegg	73132 Mallard Lane	28144588	shegg2p@amazon.com	3
99	Nanette	Bottomer	3737 Gerald Court	1591201	nbottomer2q@so-net.ne.jp	10
100	Terrell	McGowran	708 Montana Way	19503787	tmcgowran2r@e-recht24.de	5
101	Heather	Tottem	87 Waubesa Point	29534261	htottem2s@friendfeed.com	13
102	Abigale	Rushman	6 Cherokee Park	30715830	arushman2t@mapy.cz	1
103	Madelle	Choat	53 Maple Wood Center	12292865	mchoat2u@ow.ly	20
104	Aeriel	Donaghie	0445 Rockefeller Street	5491998	adonaghie2v@gravatar.com	19
105	Melinde	Fairpool	303 Cody Terrace	33522621	mfairpool2w@vkontakte.ru	18
106	La verne	Thickpenny	8621 Dakota Way	19753429	lthickpenny2x@google.com.au	2
107	Shandee	Grabbam	0 Graedel Alley	12525913	sgrabbam2y@goo.gl	11
108	Arri	Quested	6 Onsgard Road	37344174	aquested2z@imdb.com	3
109	Zsa zsa	Paroni	478 Ridgeway Center	50467162	zparoni30@tamu.edu	15
110	Harbert	Avard	92924 Mayfield Drive	9846610	havard31@surveymonkey.com	15
111	Jennine	Cristofori	971 Northport Crossing	12704268	jcristofori32@discovery.com	11
112	Dew	Lynthal	66 Brickson Park Crossing	14208758	dlynthal33@state.gov	6
113	Cori	Vasyukhin	88940 Mcguire Center	13341790	cvasyukhin34@nbcnews.com	2
114	Wyn	Spillett	528 Blue Bill Park Place	37972172	wspillett35@army.mil	1
115	Patrice	Ableson	54198 Arapahoe Park	7067265	pableson36@icq.com	5
116	Walt	Ghidoni	8 Hermina Road	27328805	wghidoni37@storify.com	15
117	Brandtr	Sedgeworth	951 Almo Parkway	35367584	bsedgeworth38@amazon.co.uk	7
118	Shay	McCaughren	5865 Pawling Center	12549944	smccaughren39@sitemeter.com	20
119	Crosby	Newing	416 Stephen Avenue	3324419	cnewing3a@virginia.edu	20
120	Ainslie	Brammer	84857 Pearson Court	25147892	abrammer3b@ocn.ne.jp	15
121	Korie	Sturch	0083 Redwing Trail	33827783	ksturch3c@tamu.edu	14
122	Bryan	Sharper	6291 Victoria Street	1395943	bsharper3d@tripod.com	1
123	Aubree	Shoutt	91168 Farragut Center	19607732	ashoutt3e@angelfire.com	19
124	Marcela	Janicki	323 Mifflin Hill	16929774	mjanicki3f@wikimedia.org	9
125	Trista	Acutt	57 Ridge Oak Pass	7757762	tacutt3g@usa.gov	5
126	Nancee	Dangl	5 Grasskamp Drive	45088944	ndangl3h@cisco.com	10
127	Lurlene	Meriott	9 Morrow Junction	3177495	lmeriott3i@mayoclinic.com	15
128	Sybila	Singyard	72 Veith Center	35107900	ssingyard3j@dagondesign.com	1
129	Agata	Gorsse	1595 Hazelcrest Center	25721778	agorsse3k@blogspot.com	12
130	Bronnie	Arnell	89401 Mayer Plaza	9640081	barnell3l@ed.gov	15
131	Constantin	Burstow	40 Northridge Junction	22906286	cburstow3m@java.com	8
132	Murial	Everix	30 Longview Crossing	46278921	meverix3n@csmonitor.com	10
133	Elsinore	Norsister	0864 Meadow Valley Pass	38812345	enorsister3o@intel.com	6
134	Richard	Boat	631 Acker Street	15336841	rboat3p@msu.edu	17
135	Olive	Lilywhite	2829 Brentwood Junction	6349289	olilywhite3q@360.cn	11
136	Christel	Glyn	904 Oneill Avenue	34972820	cglyn3r@ovh.net	17
137	Simeon	Hamfleet	8 Washington Street	44132071	shamfleet3s@lulu.com	2
138	Margalit	Piddick	50837 Arizona Point	44422549	mpiddick3t@google.nl	17
139	Benedikta	Lehrahan	51398 Fairview Place	19723745	blehrahan3u@reuters.com	1
140	Penny	Billingham	65507 Rusk Road	13832644	pbillingham3v@blogspot.com	1
141	Vladamir	Gulberg	019 Reindahl Road	35419454	vgulberg3w@house.gov	12
142	Nelie	Eastup	108 Lindbergh Drive	50927356	neastup3x@accuweather.com	12
143	Lilllie	Haswall	97667 Arizona Way	20890546	lhaswall3y@ucoz.com	19
144	Melodee	de Villier	53506 Forest Center	12045660	mdevillier3z@intel.com	17
145	Jade	Wanklin	50 Burning Wood Park	6262288	jwanklin40@sitemeter.com	19
146	Wainwright	Vanin	199 3rd Center	25388831	wvanin41@technorati.com	9
147	Nissie	Patience	797 Rigney Hill	25533334	npatience42@flickr.com	18
148	Blinni	Lemin	6 Florence Crossing	6265916	blemin43@artisteer.com	10
149	Ariana	Suddards	6694 Lyons Street	24408735	asuddards44@mashable.com	5
150	Madelene	Gruczka	0110 Village Avenue	40188632	mgruczka45@tuttocitta.it	2
151	Alexandre	Weblin	998 Burning Wood Junction	27842321	aweblin46@mashable.com	3
152	Rosalind	Cocci	967 Sycamore Circle	19294312	rcocci47@nsw.gov.au	20
153	Emmott	Barrington	73987 Graedel Road	40544283	ebarrington48@homestead.com	14
154	Garry	Plett	348 Birchwood Park	37517526	gplett49@bluehost.com	6
155	Izzy	Klug	6 Jenna Crossing	17993217	iklug4a@imageshack.us	14
156	Anet	Cancott	88 Riverside Lane	47790941	acancott4b@biblegateway.com	8
157	Caroline	Tear	1126 Crownhardt Alley	24390958	ctear4c@slideshare.net	9
158	Hillard	Dockery	92892 Ridgeway Hill	16132918	hdockery4d@wikia.com	20
159	Brant	Kerley	4 Fieldstone Street	15994870	bkerley4e@about.com	8
160	Basilio	Lampett	6175 Prairieview Court	34907415	blampett4f@uiuc.edu	1
161	Abba	Edinboro	8285 Rusk Terrace	36034248	aedinboro4g@webeden.co.uk	11
162	Jaquith	Bigham	712 American Circle	12641712	jbigham4h@google.com.br	5
163	Ambrose	Hostan	2 Claremont Way	43718457	ahostan4i@smh.com.au	9
164	Walden	Maleney	6 Old Shore Park	45181566	wmaleney4j@homestead.com	11
165	Trixie	Huggan	7073 Summer Ridge Park	43488268	thuggan4k@skyrock.com	7
166	Leoline	Weatherup	72358 Brown Junction	24135856	lweatherup4l@skype.com	17
167	Joelle	Crossfeld	400 Thompson Junction	2914347	jcrossfeld4m@netscape.com	10
168	Berti	Kneeshaw	4808 Cordelia Court	44825942	bkneeshaw4n@soup.io	10
169	Morgana	Blagbrough	70 Fairfield Road	21336067	mblagbrough4o@sbwire.com	7
170	Lora	Pierce	238 Becker Circle	29356717	lpierce4p@facebook.com	8
171	Maxie	Espinosa	7120 Loomis Pass	43689850	mespinosa4q@tumblr.com	3
172	Lyndsay	Trask	3852 Emmet Avenue	20972762	ltrask4r@businessweek.com	8
173	Dew	Barkley	88 Grover Hill	21175698	dbarkley4s@dagondesign.com	6
174	Sidonia	Braunfeld	71 Crownhardt Plaza	29527394	sbraunfeld4t@stumbleupon.com	12
175	Berne	Philbin	78 Clyde Gallagher Court	25861608	bphilbin4u@multiply.com	12
176	Augustus	Andras	04619 Hermina Pass	46329429	aandras4v@fema.gov	5
177	Rosemonde	Flockhart	07141 Becker Circle	8611173	rflockhart4w@twitpic.com	7
178	Marlon	Hatrick	8 Susan Crossing	17371666	mhatrick4x@springer.com	17
179	Denis	Cozzi	278 Park Meadow Road	46301153	dcozzi4y@businesswire.com	9
180	Ardelia	Secombe	2574 Spohn Court	17263027	asecombe4z@jugem.jp	9
181	Keefer	Breagan	7 Arizona Avenue	11300248	kbreagan50@unc.edu	12
182	Elvyn	Do Rosario	0 Thompson Plaza	9860965	edorosario51@ebay.com	11
183	Allis	Pail	997 Daystar Crossing	45453449	apail52@huffingtonpost.com	7
184	Allayne	Nezey	14 Lunder Crossing	6495964	anezey53@scientificamerican.com	1
185	Humphrey	Abbots	969 Lake View Drive	4313024	habbots54@dailymail.co.uk	9
186	Kaycee	Gaitung	497 Susan Street	14496244	kgaitung55@state.gov	17
187	Mal	Phidgin	74 Bay Trail	31335684	mphidgin56@go.com	14
188	Desdemona	Keilloh	67337 Lillian Point	21416939	dkeilloh57@a8.net	13
189	Aurore	Barkaway	1 Holmberg Court	7918281	abarkaway58@wordpress.com	8
190	Pierson	Geekin	9 Erie Parkway	45596013	pgeekin59@networksolutions.com	8
191	Nil	Vase	66 Charing Cross Court	38679247	nvase5a@macromedia.com	3
192	Lacie	Schinetti	5 Graceland Parkway	15539325	lschinetti5b@cbsnews.com	19
193	Vassili	Antonias	5 Mallard Trail	31166527	vantonias5c@patch.com	5
194	Jonis	Yellep	328 Katie Drive	38722380	jyellep5d@cpanel.net	3
195	Silvio	Brotherheed	67 Sheridan Point	5037611	sbrotherheed5e@liveinternet.ru	11
196	Annnora	Pembery	0 Cambridge Street	7597004	apembery5f@chronoengine.com	16
197	Phineas	Bonny	7642 Straubel Park	47615634	pbonny5g@marketwatch.com	6
198	Max	Devers	1440 Randy Drive	30432986	mdevers5h@opensource.org	13
199	Marquita	Puttock	6 Arapahoe Park	11825677	mputtock5i@baidu.com	10
200	Elvyn	Going	457 Gale Terrace	19996201	egoing5j@ebay.com	7
201	Nathanil	Oxburgh	86 Dexter Circle	25833912	noxburgh5k@walmart.com	6
202	Othelia	Wonfor	77071 Ramsey Hill	39805279	owonfor5l@redcross.org	11
203	Maisey	Salvin	42 Milwaukee Court	44492898	msalvin5m@shinystat.com	4
204	Elaine	Maleby	85188 Sunnyside Terrace	26432551	emaleby5n@virginia.edu	14
205	Say	Breedy	5 Springs Lane	29175573	sbreedy5o@surveymonkey.com	13
206	Raynor	Edmundson	70942 Derek Lane	18619981	redmundson5p@howstuffworks.com	19
207	Miller	Ventham	7520 Nova Plaza	31080007	mventham5q@businesswire.com	10
208	Don	Teresa	3903 Mcguire Crossing	20273524	dteresa5r@about.me	1
209	Seth	Teaser	38032 Dawn Avenue	26465254	steaser5s@wikia.com	7
210	Arlee	Atherley	6428 Summer Ridge Point	49593624	aatherley5t@liveinternet.ru	4
211	Milton	Gunston	46704 Rockefeller Way	38192917	mgunston5u@bandcamp.com	14
212	Julio	Grunwall	895 Sutherland Avenue	28358907	jgrunwall5v@xrea.com	10
213	Rois	Clawson	857 Farragut Trail	12749191	rclawson5w@auda.org.au	5
214	Trudy	Bergstrand	10950 Doe Crossing Drive	17198102	tbergstrand5x@phoca.cz	5
215	Kary	Gadeaux	6378 Chive Drive	47161736	kgadeaux5y@mapquest.com	20
216	Nikos	Blasoni	68 Shoshone Hill	5272368	nblasoni5z@typepad.com	5
217	Stirling	Garnall	2464 Ridge Oak Terrace	554261	sgarnall60@cdc.gov	11
218	Alisa	Featherby	544 Basil Street	2456472	afeatherby61@chron.com	9
219	Edithe	Delyth	178 Fieldstone Center	7934036	edelyth62@arizona.edu	17
220	Haskell	Dilon	2459 3rd Way	47723074	hdilon63@webs.com	17
221	Ewen	Jovicevic	519 Shelley Lane	10270483	ejovicevic64@hibu.com	13
222	Merrill	Plumstead	7386 Lunder Junction	22536007	mplumstead65@hostgator.com	13
223	Hyacinthe	Syddon	0770 Pierstorff Plaza	22921914	hsyddon66@alibaba.com	1
224	Kirstyn	Padwick	6195 Merry Parkway	15689616	kpadwick67@dedecms.com	17
225	Moise	Hanlin	8 Maywood Point	5607002	mhanlin68@bluehost.com	11
226	Etti	Vasilischev	0981 Caliangt Center	2831012	evasilischev69@go.com	6
227	Farlee	Samart	864 Burning Wood Point	11203831	fsamart6a@yale.edu	18
228	Kingston	Tatters	0 Erie Terrace	35006474	ktatters6b@last.fm	4
229	Marcie	Bernaldo	94745 Westridge Lane	2821647	mbernaldo6c@seattletimes.com	2
230	Ruperto	Childerhouse	321 Express Pass	30904538	rchilderhouse6d@latimes.com	13
231	Micheline	Jerok	0 Hazelcrest Plaza	33730002	mjerok6e@wikispaces.com	20
232	Virge	Jerram	8 Fallview Way	5314831	vjerram6f@cocolog-nifty.com	17
233	Bradan	Lawtey	4790 Michigan Plaza	30258234	blawtey6g@sciencedirect.com	5
234	Orsa	Niset	2173 4th Plaza	35431901	oniset6h@netscape.com	13
235	Lilllie	Winton	65 Myrtle Way	47967574	lwinton6i@jimdo.com	12
236	Mattie	Schapero	2 Sutteridge Place	6084268	mschapero6j@xrea.com	5
237	Antone	Darrigrand	10 Clove Place	14304568	adarrigrand6k@craigslist.org	5
238	Lorrie	Sagerson	690 Loftsgordon Plaza	49207062	lsagerson6l@livejournal.com	8
239	Doll	Barwis	0455 Ramsey Crossing	33729627	dbarwis6m@mac.com	17
240	Muhammad	Argente	74 Fuller Junction	16733556	margente6n@bravesites.com	20
241	Yovonnda	Buckleigh	76915 Clove Park	43535912	ybuckleigh6o@fda.gov	8
242	Alexi	Hacking	44703 School Alley	12585918	ahacking6p@jiathis.com	6
243	Glyn	Grigsby	14 Sage Alley	12711658	ggrigsby6q@ca.gov	13
244	Erin	Raftery	1 Brown Avenue	38450696	eraftery6r@techcrunch.com	13
245	Warren	Melsome	5 Saint Paul Circle	18070813	wmelsome6s@woothemes.com	5
246	Jennilee	Grishagin	3237 Kropf Hill	35128481	jgrishagin6t@typepad.com	7
247	Dyna	Darlasson	34 Fairfield Drive	27652305	ddarlasson6u@baidu.com	14
248	Charis	Andresen	4 Cardinal Court	29008340	candresen6v@earthlink.net	14
249	Rodge	Goulbourne	766 Barnett Alley	30247708	rgoulbourne6w@washingtonpost.com	1
250	Adrien	Matyukon	66919 Mcbride Park	31873739	amatyukon6x@lulu.com	20
251	Sharlene	Gaythorpe	1774 Surrey Street	30423058	sgaythorpe6y@vkontakte.ru	9
252	Celestia	Scurrer	47 Acker Way	45629006	cscurrer6z@360.cn	16
253	Reinaldo	Johnes	558 Sunnyside Center	3478095	rjohnes70@topsy.com	12
254	Lenci	Brignall	882 Mendota Junction	37997479	lbrignall71@dedecms.com	2
255	Nicolea	Eckart	753 Victoria Center	17366660	neckart72@cbc.ca	2
256	Jed	Coiley	08414 Doe Crossing Point	19922193	jcoiley73@privacy.gov.au	10
257	Adeline	Tearle	5279 Westport Place	421956	atearle74@purevolume.com	8
258	Caralie	Lewcock	043 Sauthoff Street	24835787	clewcock75@answers.com	1
259	Cosetta	McCaighey	1 Marcy Center	1736186	cmccaighey76@google.pl	17
260	Jobey	Lory	74 Jenifer Alley	43611224	jlory77@meetup.com	5
261	Rayna	Balmadier	2810 Derek Pass	11097341	rbalmadier78@epa.gov	6
262	Horton	Macrae	52780 Dakota Circle	40400870	hmacrae79@huffingtonpost.com	16
263	Robbie	Richten	17225 Clemons Street	31911727	rrichten7a@auda.org.au	20
264	Emiline	Jephson	74 Bartelt Plaza	28116683	ejephson7b@aboutads.info	13
265	Ellie	Esmond	51950 Utah Point	40578553	eesmond7c@craigslist.org	7
266	Willis	Lattos	50811 Eagle Crest Terrace	14040921	wlattos7d@51.la	8
267	Rebecca	Gimblet	1640 Oak Valley Plaza	14687596	rgimblet7e@globo.com	1
268	Tyrus	Wilber	87169 Spenser Place	8408225	twilber7f@ucoz.com	4
269	Dacie	Simper	34222 Muir Road	4201645	dsimper7g@nsw.gov.au	10
270	Cleve	Archibald	6315 Eastwood Point	3314868	carchibald7h@utexas.edu	3
271	Stevie	Mosen	665 Karstens Place	49294217	smosen7i@utexas.edu	6
272	Kelsy	Happert	90 Talmadge Hill	26799871	khappert7j@ovh.net	5
273	Corabel	Brayley	38 Gina Lane	31611810	cbrayley7k@about.me	18
274	Danny	Sutworth	03890 Eastwood Center	16063428	dsutworth7l@nbcnews.com	6
275	Sloan	Runcie	90150 Iowa Center	10864728	sruncie7m@china.com.cn	4
276	Pietra	Losano	2 Dennis Alley	44168724	plosano7n@nasa.gov	19
277	Shay	De Castri	0 Rockefeller Lane	9041317	sdecastri7o@sakura.ne.jp	17
278	Christina	Churchouse	67 Sutherland Park	49917985	cchurchouse7p@multiply.com	9
279	Flor	Gilphillan	3902 Ryan Way	38172750	fgilphillan7q@yale.edu	11
280	Elwin	Redmain	8916 Center Terrace	15900825	eredmain7r@berkeley.edu	17
281	Gates	Greensides	6390 Kedzie Park	22677655	ggreensides7s@abc.net.au	20
282	Penrod	Domerque	2360 Cottonwood Pass	42487601	pdomerque7t@loc.gov	10
283	Robyn	Hellens	86779 Golf Circle	22513526	rhellens7u@ucoz.com	7
284	Lorene	Edgerton	886 Melrose Place	16517736	ledgerton7v@stanford.edu	16
285	Seline	Marchello	921 Drewry Drive	43081495	smarchello7w@bravesites.com	2
286	Norine	Belvin	2 Loftsgordon Lane	20290897	nbelvin7x@about.me	2
287	Robby	Bertomier	79802 Eggendart Trail	20370667	rbertomier7y@theguardian.com	17
288	Reid	Peverell	95 Melby Pass	12368930	rpeverell7z@answers.com	19
289	Ogden	Plows	23 Arapahoe Road	29773606	oplows80@csmonitor.com	20
290	Iago	Give	9697 Clarendon Parkway	49385723	igive81@alibaba.com	11
291	Lenora	Quinnelly	765 Florence Pass	25782313	lquinnelly82@unblog.fr	12
292	Neely	Tschierse	1 Larry Road	14346316	ntschierse83@virginia.edu	20
293	Artemis	Bortolotti	97251 Dexter Drive	8135686	abortolotti84@soup.io	13
294	Casper	Wyard	251 Fallview Way	27143268	cwyard85@google.pl	2
295	Hart	Keirle	24661 Eagle Crest Way	36965004	hkeirle86@arstechnica.com	7
296	Shurlock	Kimbell	58998 Hoard Lane	1928693	skimbell87@samsung.com	2
297	Estell	Tunnah	60859 Maywood Way	11510746	etunnah88@hao123.com	14
298	Glyn	Eagland	19721 Valley Edge Parkway	7117505	geagland89@ox.ac.uk	7
299	Ashly	Dana	69 Declaration Junction	41409111	adana8a@nydailynews.com	6
300	Haywood	Plummer	7 Jana Place	10593729	hplummer8b@surveymonkey.com	17
301	Freddi	Crosi	73581 Farwell Lane	43841956	fcrosi8c@yellowbook.com	7
302	Pieter	Giacomazzo	7 Rigney Avenue	7134373	pgiacomazzo8d@census.gov	15
303	Gamaliel	Carnilian	5 Lien Street	13908609	gcarnilian8e@miitbeian.gov.cn	1
304	Yolane	Flannery	351 Nancy Circle	43407685	yflannery8f@homestead.com	7
305	Nita	Berdale	489 Ridge Oak Terrace	34980183	nberdale8g@mac.com	15
306	Pauly	Samber	3278 North Hill	20130439	psamber8h@bing.com	4
307	Fifine	Grzelak	0875 Hermina Parkway	35812428	fgrzelak8i@umich.edu	15
308	Clim	Elmes	7895 Emmet Avenue	16206731	celmes8j@zimbio.com	11
309	Bryce	Prujean	045 Nobel Street	30017672	bprujean8k@clickbank.net	1
310	Venita	Riseborough	57 Shelley Center	15782870	vriseborough8l@dyndns.org	7
311	Augustine	Annesley	35728 Swallow Road	41116077	aannesley8m@delicious.com	20
312	Lay	Reason	46 Atwood Point	41935372	lreason8n@businesswire.com	10
313	Clarabelle	Amps	77281 Ilene Avenue	20171139	camps8o@guardian.co.uk	1
314	Pris	Fonzo	4 Burning Wood Court	46123925	pfonzo8p@pinterest.com	9
315	Matthias	Queripel	727 Comanche Drive	39268053	mqueripel8q@noaa.gov	19
316	Sharon	Walshaw	3 Rutledge Court	39310933	swalshaw8r@zdnet.com	2
317	Aldis	Burford	2201 Canary Court	6808326	aburford8s@free.fr	18
318	Patrizio	Wishart	00048 Calypso Parkway	46352049	pwishart8t@friendfeed.com	7
319	Jeane	Chilles	903 Marcy Plaza	48850583	jchilles8u@china.com.cn	20
320	Candide	Schulkins	96162 Novick Terrace	11073887	cschulkins8v@aol.com	16
321	Wini	Dubois	4776 Killdeer Drive	48312783	wdubois8w@ask.com	15
322	Felicio	Mattersley	21 Golf Course Drive	28602058	fmattersley8x@weather.com	18
323	Teddy	Ludewig	10885 Alpine Point	49358009	tludewig8y@ted.com	12
324	Konstantin	Enrique	67 Fuller Place	755261	kenrique8z@examiner.com	6
325	Fax	Hatliff	116 Park Meadow Terrace	20646425	fhatliff90@ezinearticles.com	9
326	Gunther	Jolin	7 Lakewood Parkway	21540654	gjolin91@squidoo.com	16
327	Gail	Nuttall	4293 Boyd Circle	36559923	gnuttall92@wsj.com	17
328	Penelopa	Maple	8 West Center	3815726	pmaple93@hugedomains.com	13
329	Leonie	Kiezler	5 School Circle	38573743	lkiezler94@w3.org	15
330	Elbertina	Carass	970 Schiller Alley	42969368	ecarass95@mail.ru	18
331	Donny	Runsey	06 Dixon Pass	20071136	drunsey96@army.mil	7
332	Goldie	Gittins	34 Schmedeman Avenue	18929615	ggittins97@wisc.edu	18
333	Lindsey	Loxley	3 Declaration Place	24661839	lloxley98@apache.org	16
334	Jeanne	Shippam	51679 Aberg Place	23131119	jshippam99@yandex.ru	13
335	Bonita	Lesslie	2352 Gerald Plaza	23661993	blesslie9a@auda.org.au	8
336	Merry	Huxton	80681 Messerschmidt Way	18016720	mhuxton9b@army.mil	13
337	Doralyn	Wedlock	6 Hallows Hill	19913903	dwedlock9c@skype.com	4
338	Minnie	Heindrich	1270 Fair Oaks Junction	42707627	mheindrich9d@thetimes.co.uk	20
339	Sophronia	Butler-Bowdon	113 Schiller Center	24291692	sbutlerbowdon9e@webeden.co.uk	13
340	Cesya	McDougall	3 Columbus Road	48876676	cmcdougall9f@twitter.com	14
341	Barbabas	Badrick	4 Maple Wood Point	46671174	bbadrick9g@i2i.jp	7
342	Tim	Abrahmovici	96441 Red Cloud Road	27055040	tabrahmovici9h@yellowbook.com	2
343	Cammy	Dugan	2 Troy Center	4909610	cdugan9i@businessweek.com	17
344	Ingaborg	Verralls	4138 Stuart Plaza	19896504	iverralls9j@hhs.gov	14
345	Therine	Englishby	9206 West Court	5941644	tenglishby9k@oakley.com	16
346	Milli	Millgate	5 David Parkway	25171323	mmillgate9l@cloudflare.com	9
347	Salomo	Aizlewood	07 Kenwood Court	22985676	saizlewood9m@amazon.co.jp	6
348	Madelene	Baversor	21 Helena Lane	11692645	mbaversor9n@comcast.net	2
349	Trudy	Elderfield	61 Bobwhite Park	29204758	telderfield9o@dagondesign.com	9
350	Egon	Gunby	0 Annamark Junction	45751882	egunby9p@fda.gov	12
351	Thatcher	Sugars	46807 Darwin Way	6492257	tsugars9q@live.com	13
352	Evy	Espinas	6 Texas Point	11022623	eespinas9r@vkontakte.ru	1
353	Merrel	Armes	8383 Mariners Cove Place	25926123	marmes9s@arstechnica.com	14
354	Teador	Stuchburie	770 Ilene Way	5577794	tstuchburie9t@istockphoto.com	4
355	Etan	Yell	5291 Delaware Center	20749181	eyell9u@twitter.com	8
356	Stewart	Ansill	33800 Mitchell Crossing	31370242	sansill9v@mtv.com	5
357	Jo-ann	Deble	6077 Hudson Avenue	14461609	jdeble9w@guardian.co.uk	19
358	Lyssa	Habercham	600 Truax Plaza	49347285	lhabercham9x@cisco.com	3
359	Annecorinne	Hearn	2 Springview Trail	49496589	ahearn9y@twitpic.com	2
360	Leonelle	Sawdon	15266 Petterle Crossing	33745080	lsawdon9z@shutterfly.com	2
361	Elwood	Girone	89 Luster Parkway	37377906	egironea0@ifeng.com	15
362	Carine	Daughton	62308 Homewood Hill	20615697	cdaughtona1@lycos.com	1
363	Vanda	Holt	6466 Haas Point	12175300	vholta2@bloomberg.com	12
364	Genny	Foye	8104 Cardinal Crossing	24694250	gfoyea3@e-recht24.de	7
365	Kelsi	Inggall	503 Badeau Court	36412729	kinggalla4@marketwatch.com	5
366	Steve	Draysay	7 Paget Court	3414112	sdraysaya5@unblog.fr	8
367	Justina	Cervantes	47801 Ilene Road	21859675	jcervantesa6@dion.ne.jp	13
368	Renelle	Christy	581 Spaight Avenue	9591270	rchristya7@cisco.com	12
369	Gabriell	Barca	8238 Lindbergh Trail	25065134	gbarcaa8@google.ru	5
370	Crosby	Menendes	02309 Sommers Crossing	34234565	cmenendesa9@elegantthemes.com	11
371	Sande	Espadate	08 Valley Edge Junction	40804109	sespadateaa@psu.edu	17
372	Basia	Duthie	9 Manley Place	40208966	bduthieab@epa.gov	13
373	Sherilyn	Dreamer	50 Anniversary Center	40806646	sdreamerac@infoseek.co.jp	15
374	Nye	Maddicks	4 Annamark Parkway	44781593	nmaddicksad@hc360.com	2
375	Corey	Blazevic	70 Fairfield Road	10628733	cblazevicae@pinterest.com	6
376	Caro	Gowman	0 Norway Maple Parkway	1429822	cgowmanaf@liveinternet.ru	20
377	Laurella	Koomar	6748 Comanche Avenue	39160161	lkoomarag@surveymonkey.com	20
378	Allyn	Caswall	989 Stuart Court	16478763	acaswallah@cdc.gov	7
379	Alvy	Test	4752 Waywood Place	23929484	atestai@rambler.ru	20
380	Grant	Dict	5217 Packers Road	23585843	gdictaj@exblog.jp	14
381	Immanuel	Belding	7193 Lighthouse Bay Pass	28652018	ibeldingak@mozilla.org	10
382	Issy	Geale	5841 International Place	38125485	igealeal@hc360.com	7
383	Claudelle	Chick	58 Brown Lane	50967463	cchickam@freewebs.com	15
384	Nolan	Fredi	1372 Oak Drive	18180454	nfredian@examiner.com	1
385	Boot	Scholfield	21 Eagan Pass	33112372	bscholfieldao@biglobe.ne.jp	20
386	Chev	Bellerby	06 Talisman Road	45099670	cbellerbyap@ox.ac.uk	1
387	Zena	Meiklejohn	3435 Birchwood Hill	3237528	zmeiklejohnaq@ezinearticles.com	13
388	Kessiah	Chamberlaine	727 Declaration Court	40765001	kchamberlainear@de.vu	2
389	Tanitansy	Freeland	7 North Avenue	21187310	tfreelandas@google.com.br	1
390	Ezmeralda	Cherry	069 Rigney Place	35917463	echerryat@chicagotribune.com	7
391	Abraham	Smail	5789 Butternut Junction	11419195	asmailau@blogspot.com	9
392	Almire	Toffler	382 Atwood Court	7032529	atofflerav@yale.edu	17
393	Joannes	Asher	202 Killdeer Junction	5975317	jasheraw@so-net.ne.jp	12
394	Joeann	Callery	187 Service Park	23439687	jcalleryax@mysql.com	13
395	Donnell	Pitcaithley	5 Autumn Leaf Plaza	47217112	dpitcaithleyay@discuz.net	7
396	Alvan	Newberry	5891 Meadow Ridge Trail	10120247	anewberryaz@mac.com	17
397	Antonino	Doull	19437 Butterfield Road	29701081	adoullb0@bloglines.com	15
398	Neall	Meach	6 Autumn Leaf Park	19479593	nmeachb1@t-online.de	16
399	Abner	Sorensen	8 Fair Oaks Trail	27199934	asorensenb2@wisc.edu	17
400	Bord	Ramsbotham	4 Arizona Center	19181612	bramsbothamb3@odnoklassniki.ru	19
401	Stanton	Tremblot	665 Dryden Alley	24035342	stremblotb4@nymag.com	6
402	Izabel	Caddens	81469 Thackeray Drive	13555355	icaddensb5@cdbaby.com	17
403	Freddy	Cettell	8197 Fair Oaks Way	29030466	fcettellb6@buzzfeed.com	7
404	Jules	MacNair	7 Sachs Trail	22434742	jmacnairb7@1und1.de	13
405	Zared	Burnie	8 Twin Pines Alley	46715416	zburnieb8@tmall.com	10
406	Benedetta	Duding	99 Moose Road	19219029	bdudingb9@technorati.com	19
407	Chaim	Fernandez	2 Pond Point	35705794	cfernandezba@dmoz.org	2
408	Carolina	Ivel	755 Sheridan Alley	38878783	civelbb@trellian.com	20
409	Devina	Brimblecomb	66 Scoville Trail	7926604	dbrimblecombbc@google.de	17
410	Gwendolyn	Fursey	00 Anhalt Avenue	3338479	gfurseybd@blinklist.com	13
411	Jobey	Wilbud	98106 Coleman Trail	39828996	jwilbudbe@fotki.com	10
412	Shep	Janik	812 Armistice Lane	11840727	sjanikbf@go.com	4
413	Finley	Pincott	963 Roth Place	8624598	fpincottbg@springer.com	13
414	Petronilla	Veltmann	894 Erie Street	30089718	pveltmannbh@apache.org	18
415	Jourdain	Rubel	207 Red Cloud Junction	46517085	jrubelbi@csmonitor.com	7
416	Addison	Shipp	370 Lighthouse Bay Crossing	1078733	ashippbj@sakura.ne.jp	14
417	Amie	Rosingdall	9 Grayhawk Alley	37014238	arosingdallbk@geocities.jp	9
418	Holt	Titman	51 1st Road	48010991	htitmanbl@nature.com	6
419	Vanessa	Pamplin	08 Butterfield Place	33366778	vpamplinbm@marriott.com	3
420	Julia	McGonigal	738 Corscot Parkway	33749766	jmcgonigalbn@taobao.com	15
421	Natalina	Dendon	2538 Montana Alley	26330770	ndendonbo@clickbank.net	8
422	Berti	Mcall	5 Main Trail	32803925	bmcallbp@ustream.tv	3
423	Aloysia	Cobson	83 Comanche Parkway	45113909	acobsonbq@woothemes.com	2
424	Aubrey	Behr	78224 Kings Hill	30128084	abehrbr@aboutads.info	9
425	Eran	Fries	153 Main Point	42614208	efriesbs@toplist.cz	12
426	Lynnett	Backman	86613 Warner Lane	19728949	lbackmanbt@usgs.gov	12
427	Aimil	Ewer	76948 Brown Crossing	35793881	aewerbu@vimeo.com	10
428	Meghann	Vasyagin	437 Fuller Avenue	28338957	mvasyaginbv@diigo.com	10
429	Gigi	Brychan	28 Delladonna Circle	39504144	gbrychanbw@w3.org	3
430	Inger	Janiak	2 Holy Cross Junction	42279647	ijaniakbx@fastcompany.com	6
431	Lynna	Garfoot	87919 Prairie Rose Lane	11770305	lgarfootby@sakura.ne.jp	11
432	Adamo	Christofor	3 2nd Crossing	39126919	achristoforbz@cnbc.com	4
433	Cherye	Strognell	6274 Alpine Alley	33010296	cstrognellc0@umich.edu	4
434	Blinny	Longmire	0930 Kinsman Parkway	36731545	blongmirec1@netvibes.com	8
435	Glendon	Staley	3 Havey Center	9894075	gstaleyc2@youtube.com	18
436	Ulrika	Signe	35454 Pleasure Alley	12619122	usignec3@reddit.com	9
437	Neely	Bannard	419 Waywood Alley	48316445	nbannardc4@ask.com	14
438	Giffard	Mansell	98 Northport Hill	15347162	gmansellc5@indiegogo.com	19
439	Falito	McInerney	12 Dakota Way	4255695	fmcinerneyc6@indiegogo.com	14
440	Anabal	Prine	27 Waubesa Way	11090498	aprinec7@ebay.co.uk	4
441	Rosette	Ulyatt	0086 Nevada Hill	10270223	rulyattc8@ox.ac.uk	6
442	Ira	Simpkiss	9 Ramsey Way	23126742	isimpkissc9@linkedin.com	7
443	Katharine	Wicklen	759 Crowley Center	26315919	kwicklenca@salon.com	10
444	Hartwell	Ashwin	23 Moose Place	21324129	hashwincb@google.nl	15
445	Ashlie	Sushams	2 Clarendon Way	31184987	asushamscc@disqus.com	9
446	Royal	Andrey	2073 Michigan Center	44688202	randreycd@sohu.com	20
447	Giacobo	Pittem	83 Bonner Court	24101549	gpittemce@webeden.co.uk	18
448	Claudette	Gaisford	2 Knutson Center	43931968	cgaisfordcf@latimes.com	16
449	Bartolemo	Escoffrey	546 Monica Circle	50089444	bescoffreycg@weibo.com	9
450	Vivianna	Gebhardt	86936 Garrison Terrace	30490758	vgebhardtch@mac.com	9
451	Ode	Ross	35512 Michigan Junction	15715566	orossci@lycos.com	4
452	Stacee	Mattschas	06267 Southridge Junction	42135341	smattschascj@salon.com	4
453	Lauritz	Kunzel	6 Reinke Park	486312	lkunzelck@skyrock.com	17
454	Pren	Eburah	58917 Tomscot Road	43492747	peburahcl@oaic.gov.au	17
455	Benn	Boutellier	492 Spohn Way	28476487	bboutelliercm@google.de	7
456	Forrester	Balffye	439 Grasskamp Court	23170087	fbalffyecn@mayoclinic.com	8
457	Indira	Greenan	6 Melvin Court	23709180	igreenanco@wsj.com	20
458	Wright	Eastmond	31 Saint Paul Junction	3390996	weastmondcp@t-online.de	9
459	Rina	Kiefer	9096 Hansons Avenue	30197467	rkiefercq@apache.org	10
460	Wildon	Williams	2 Kinsman Place	23094963	wwilliamscr@gravatar.com	1
461	Anatola	Petruk	430 Lien Pass	30814318	apetrukcs@bravesites.com	18
462	Tobit	Mant	107 Warbler Park	46564450	tmantct@fema.gov	5
463	Jeffry	Bockmann	0061 Moulton Street	15562677	jbockmanncu@addthis.com	8
464	Gilberto	Aggs	26569 7th Point	147493	gaggscv@nymag.com	18
465	Sibley	Heeney	430 Raven Junction	30783991	sheeneycw@freewebs.com	3
466	Ivie	Hovee	26 Briar Crest Park	42664871	ihoveecx@apache.org	5
467	Dore	Mufford	61819 Debs Place	13620348	dmuffordcy@theatlantic.com	19
468	Ranique	Legh	11432 Bayside Lane	48369067	rleghcz@ebay.co.uk	6
469	Karen	Tuison	863 Loftsgordon Circle	49731130	ktuisond0@seesaa.net	20
470	Merwin	Crowcher	7 Summerview Pass	27571418	mcrowcherd1@icio.us	3
471	Lorenza	Malshinger	2740 Dunning Avenue	50170801	lmalshingerd2@baidu.com	7
472	Daveta	Reddington	9 Declaration Road	974683	dreddingtond3@webeden.co.uk	11
473	Claudell	Diviney	3822 Anthes Avenue	30699041	cdivineyd4@github.com	4
474	Randy	Amott	22 Welch Terrace	32245022	ramottd5@ted.com	8
475	Tina	Vondruska	26 Delaware Lane	47785602	tvondruskad6@arizona.edu	18
476	Crysta	Gonnelly	4430 Talisman Terrace	30140967	cgonnellyd7@shareasale.com	7
477	Jedd	Stellin	6 Moland Street	40023056	jstellind8@addtoany.com	11
478	Alasdair	Hadaway	7 Granby Place	41269066	ahadawayd9@google.cn	19
479	Bernardine	Plane	98 Laurel Place	23246958	bplaneda@shop-pro.jp	3
480	Brock	Reckless	258 Prentice Crossing	27173819	brecklessdb@booking.com	19
481	Saloma	McCritichie	40794 South Center	35986170	smccritichiedc@washingtonpost.com	6
482	Warden	Jumeau	29403 Twin Pines Parkway	19275275	wjumeaudd@pcworld.com	19
483	Beniamino	Gioani	424 Truax Street	26449330	bgioanide@twitter.com	14
484	Lorettalorna	Casbolt	60 6th Trail	41925331	lcasboltdf@reverbnation.com	12
485	Keene	Symms	769 Jay Circle	36441381	ksymmsdg@t.co	7
486	Matteo	Winnard	7 Fuller Avenue	27719516	mwinnarddh@oakley.com	15
487	Daveen	Scottini	953 Alpine Drive	38167119	dscottinidi@imageshack.us	2
488	Babb	Piers	9 Lillian Hill	28768416	bpiersdj@howstuffworks.com	8
489	Dewitt	Ashbolt	6 Graedel Alley	33044324	dashboltdk@nasa.gov	14
490	Inna	Mackneis	8 Emmet Parkway	18161037	imackneisdl@delicious.com	16
491	Yolanda	Ranfield	4 Oak Trail	21275768	yranfielddm@simplemachines.org	18
492	Ursola	Spoure	16 Oneill Parkway	41568382	uspouredn@histats.com	15
493	Aigneis	Shalders	42677 Northwestern Way	30395319	ashaldersdo@ask.com	11
494	Vere	Kettlewell	6 Ludington Center	41513174	vkettlewelldp@hp.com	4
495	Jesselyn	Wethers	5 Muir Trail	38840919	jwethersdq@about.com	17
496	Zedekiah	Daile	3288 Waxwing Junction	27255346	zdailedr@auda.org.au	2
497	Mehetabel	Proven	4917 Packers Way	31721408	mprovends@time.com	16
498	Emlynne	Martignon	11 Katie Avenue	21385778	emartignondt@seattletimes.com	18
499	Korney	Schankelborg	6909 Cascade Court	1293662	kschankelborgdu@edublogs.org	14
500	Maia	Kupis	918 Melody Avenue	44130541	mkupisdv@behance.net	7
\.


--
-- TOC entry 2991 (class 0 OID 25038)
-- Dependencies: 203
-- Data for Name: fournisseur; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fournisseur (id_fournisseur, name, tel, adress) FROM stdin;
1	Amabel Biasotti	6976138	27 Badeau Park
2	Niki Kayne	2624919	8 Basil Center
3	Klemens Kastel	5043193	5 Park Meadow Circle
4	Giulio Gullivent	2193624	988 Mandrake Drive
5	Gary Lambden	3398879	64 Redwing Street
6	Quincy Kitcher	1938370	0588 Calypso Lane
7	Shantee Redman	3641344	0237 Dixon Circle
8	Rosanna Tomisch	7590869	3 Eggendart Terrace
9	Deni Saltwell	846544	39 Lien Crossing
10	Beauregard Ewestace	8640716	654 Loomis Parkway
11	Dex Gelland	4741838	3 Morning Center
12	Deloris Kinney	6261387	3159 East Place
13	Gareth Boteman	4851655	503 Lakewood Gardens Terrace
14	Ermanno Renton	5673992	87 Manitowish Park
15	Emilia Bote	2626786	0 South Court
16	Rici Lundy	8988302	66875 Kingsford Way
17	Loraine Maykin	5770861	83 Dwight Lane
18	Salim Klesl	5433417	003 Surrey Court
19	Alecia Gallihawk	3334850	38 Macpherson Alley
20	Josiah Burdis	1781539	2622 Orin Place
\.


--
-- TOC entry 2993 (class 0 OID 25046)
-- Dependencies: 205
-- Data for Name: produit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produit (id_produit, name, description, price, id_fournisseur) FROM stdin;
1	Hydralazine Hydrochloride	tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque	3161	9
2	Ampicillin	duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor	7003	4
3	Simvastatin	pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu	5686	11
4	MODLINA PEPTIDE SOOTHING ESSENTIAL HYDROGEL MASK PACK	odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum	7013	11
5	Oxacillin	feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium	6889	17
6	HOLCUS LANATUS POLLEN	in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula	2172	7
7	MAX	erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum	4107	7
8	Artificial Tears	pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus	7905	18
9	Glyburide	turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante	6012	4
10	Doxepin Hydrochloride	pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy	425	3
11	Terazosin	donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla	9026	11
12	CANDIDA YEAST RELIEF	leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est	2344	17
13	Remodulin	nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit	1734	1
14	Bumetanide	ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci	7090	18
15	Primula Onopordon Stress Relief	nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing	7875	11
16	Perphenazine	elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus	6497	5
17	Senna Laxative	urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat	7064	2
18	Depakote	posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et	5008	13
19	Childrens Pepto	eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo	6855	16
20	Diltiazem Hydrochloride	nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum	3360	10
\.


--
-- TOC entry 3004 (class 0 OID 0)
-- Dependencies: 206
-- Name: clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clients_id_seq', 1, false);


--
-- TOC entry 3005 (class 0 OID 0)
-- Dependencies: 202
-- Name: fournisseur_id_fournisseur_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fournisseur_id_fournisseur_seq', 1, false);


--
-- TOC entry 3006 (class 0 OID 0)
-- Dependencies: 204
-- Name: produit_id_produit_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produit_id_produit_seq', 1, false);


--
-- TOC entry 2861 (class 2606 OID 25067)
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);


--
-- TOC entry 2857 (class 2606 OID 25043)
-- Name: fournisseur fournisseur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fournisseur
    ADD CONSTRAINT fournisseur_pkey PRIMARY KEY (id_fournisseur);


--
-- TOC entry 2859 (class 2606 OID 25054)
-- Name: produit produit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit
    ADD CONSTRAINT produit_pkey PRIMARY KEY (id_produit);


--
-- TOC entry 2863 (class 2606 OID 25068)
-- Name: clients clients_id_produit_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_id_produit_fkey FOREIGN KEY (id_produit) REFERENCES public.produit(id_produit);


--
-- TOC entry 2862 (class 2606 OID 25055)
-- Name: produit produit_id_fournisseur_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit
    ADD CONSTRAINT produit_id_fournisseur_fkey FOREIGN KEY (id_fournisseur) REFERENCES public.fournisseur(id_fournisseur);


-- Completed on 2022-01-27 16:01:33 WAT

--
-- PostgreSQL database dump complete
--

