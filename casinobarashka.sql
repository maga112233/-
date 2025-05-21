--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2025-05-21 11:42:38

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
-- TOC entry 224 (class 1259 OID 64143)
-- Name: admins; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admins (
    id integer NOT NULL,
    username character varying(100) NOT NULL,
    password character varying(100) NOT NULL
);


ALTER TABLE public.admins OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 64142)
-- Name: admins_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admins_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admins_id_seq OWNER TO postgres;

--
-- TOC entry 3372 (class 0 OID 0)
-- Dependencies: 223
-- Name: admins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admins_id_seq OWNED BY public.admins.id;


--
-- TOC entry 215 (class 1259 OID 63971)
-- Name: clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients (
    "ID" integer NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    phone integer,
    pasport integer,
    visible boolean DEFAULT true NOT NULL
);


ALTER TABLE public.clients OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 63970)
-- Name: clients_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."clients_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."clients_ID_seq" OWNER TO postgres;

--
-- TOC entry 3373 (class 0 OID 0)
-- Dependencies: 214
-- Name: clients_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."clients_ID_seq" OWNED BY public.clients."ID";


--
-- TOC entry 222 (class 1259 OID 64037)
-- Name: clientse; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.clientse AS
 SELECT clients."ID",
    clients.first_name
   FROM public.clients
  WHERE (clients.visible IS TRUE);


ALTER TABLE public.clientse OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 63998)
-- Name: events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events (
    id integer NOT NULL,
    event_name character varying(255),
    event_date date,
    event_descriptioon character varying(255)
);


ALTER TABLE public.events OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 63997)
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_id_seq OWNER TO postgres;

--
-- TOC entry 3374 (class 0 OID 0)
-- Dependencies: 220
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- TOC entry 217 (class 1259 OID 63980)
-- Name: games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games (
    gami_id integer NOT NULL,
    name character varying(255),
    description character varying(255)
);


ALTER TABLE public.games OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 63979)
-- Name: games_gami_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_gami_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_gami_id_seq OWNER TO postgres;

--
-- TOC entry 3375 (class 0 OID 0)
-- Dependencies: 216
-- Name: games_gami_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.games_gami_id_seq OWNED BY public.games.gami_id;


--
-- TOC entry 219 (class 1259 OID 63989)
-- Name: sotrudniki; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sotrudniki (
    "ID" integer NOT NULL,
    name character varying(255),
    phone integer,
    "position" character varying(255)
);


ALTER TABLE public.sotrudniki OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 63988)
-- Name: sotrudniki_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."sotrudniki_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."sotrudniki_ID_seq" OWNER TO postgres;

--
-- TOC entry 3376 (class 0 OID 0)
-- Dependencies: 218
-- Name: sotrudniki_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."sotrudniki_ID_seq" OWNED BY public.sotrudniki."ID";


--
-- TOC entry 3202 (class 2604 OID 64146)
-- Name: admins id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admins ALTER COLUMN id SET DEFAULT nextval('public.admins_id_seq'::regclass);


--
-- TOC entry 3197 (class 2604 OID 63974)
-- Name: clients ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients ALTER COLUMN "ID" SET DEFAULT nextval('public."clients_ID_seq"'::regclass);


--
-- TOC entry 3201 (class 2604 OID 64001)
-- Name: events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- TOC entry 3199 (class 2604 OID 63983)
-- Name: games gami_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games ALTER COLUMN gami_id SET DEFAULT nextval('public.games_gami_id_seq'::regclass);


--
-- TOC entry 3200 (class 2604 OID 63992)
-- Name: sotrudniki ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sotrudniki ALTER COLUMN "ID" SET DEFAULT nextval('public."sotrudniki_ID_seq"'::regclass);


--
-- TOC entry 3366 (class 0 OID 64143)
-- Dependencies: 224
-- Data for Name: admins; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admins (id, username, password) FROM stdin;
1	admin	0000
\.


--
-- TOC entry 3358 (class 0 OID 63971)
-- Dependencies: 215
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clients ("ID", first_name, last_name, phone, pasport, visible) FROM stdin;
2	Denis	Kazakov	4555	7777	t
3	oleg	olegov	2525	4444	t
4	yura	ignatiev	8552	1111	t
5	sergei	simonyako	4535	5555	t
6	maksim	efimenok	4252	2222	t
\.


--
-- TOC entry 3364 (class 0 OID 63998)
-- Dependencies: 221
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events (id, event_name, event_date, event_descriptioon) FROM stdin;
2	zimniiy	2025-12-12	snowboll
3	letniy	2005-01-30	swimm
4	oseniy	2002-04-01	uborka
5	vesna	2004-11-30	haos
6	smert	2000-12-30	smert
\.


--
-- TOC entry 3360 (class 0 OID 63980)
-- Dependencies: 217
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games (gami_id, name, description) FROM stdin;
1	rosskay_ruletka	smert_ili_zhizn
2	sloti	xz
3	poker	tuz tacheni
4	durak	xz
5	black_jack	xz
\.


--
-- TOC entry 3362 (class 0 OID 63989)
-- Dependencies: 219
-- Data for Name: sotrudniki; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sotrudniki ("ID", name, phone, "position") FROM stdin;
1	artem	2255	1
2	david	5522	2
3	maga	5	05
4	sanya	7777	7
5	denis	2001	1109
\.


--
-- TOC entry 3377 (class 0 OID 0)
-- Dependencies: 223
-- Name: admins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admins_id_seq', 1, true);


--
-- TOC entry 3378 (class 0 OID 0)
-- Dependencies: 214
-- Name: clients_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."clients_ID_seq"', 6, true);


--
-- TOC entry 3379 (class 0 OID 0)
-- Dependencies: 220
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.events_id_seq', 6, true);


--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 216
-- Name: games_gami_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_gami_id_seq', 5, true);


--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 218
-- Name: sotrudniki_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."sotrudniki_ID_seq"', 5, true);


--
-- TOC entry 3212 (class 2606 OID 64148)
-- Name: admins admins_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admins
    ADD CONSTRAINT admins_pkey PRIMARY KEY (id);


--
-- TOC entry 3204 (class 2606 OID 63978)
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY ("ID");


--
-- TOC entry 3210 (class 2606 OID 64005)
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- TOC entry 3206 (class 2606 OID 63987)
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (gami_id);


--
-- TOC entry 3208 (class 2606 OID 63996)
-- Name: sotrudniki sotrudniki_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sotrudniki
    ADD CONSTRAINT sotrudniki_pkey PRIMARY KEY ("ID");


--
-- TOC entry 3356 (class 2618 OID 64041)
-- Name: clientse delete_clients; Type: RULE; Schema: public; Owner: postgres
--

CREATE RULE delete_clients AS
    ON DELETE TO public.clientse DO INSTEAD  UPDATE public.clients SET visible = false
  WHERE ((clients.first_name)::text = (old.first_name)::text);


-- Completed on 2025-05-21 11:42:39

--
-- PostgreSQL database dump complete
--

