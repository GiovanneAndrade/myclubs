--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6 (Ubuntu 14.6-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.6 (Ubuntu 14.6-0ubuntu0.22.04.1)

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
-- Name: _ClubsToFans; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."_ClubsToFans" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


--
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


--
-- Name: championship; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.championship (
    id integer NOT NULL,
    name text NOT NULL,
    quality_clubs text NOT NULL,
    number_of_rounds integer NOT NULL,
    "createdAt" timestamp(3) without time zone
);


--
-- Name: championship_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.championship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: championship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.championship_id_seq OWNED BY public.championship.id;


--
-- Name: clubs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clubs (
    id integer NOT NULL,
    name text NOT NULL,
    city text NOT NULL,
    country text NOT NULL,
    colors text NOT NULL,
    "championshipId" integer,
    "createdAt" timestamp(3) without time zone,
    "stadiumId" integer
);


--
-- Name: clubs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clubs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clubs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clubs_id_seq OWNED BY public.clubs.id;


--
-- Name: fans; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fans (
    id integer NOT NULL,
    name text,
    "createdAt" timestamp(3) without time zone
);


--
-- Name: fans_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: fans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fans_id_seq OWNED BY public.fans.id;


--
-- Name: stadium; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stadium (
    id integer NOT NULL,
    name text NOT NULL,
    "createdAt" timestamp(3) without time zone
);


--
-- Name: stadium_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.stadium_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: stadium_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.stadium_id_seq OWNED BY public.stadium.id;


--
-- Name: championship id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.championship ALTER COLUMN id SET DEFAULT nextval('public.championship_id_seq'::regclass);


--
-- Name: clubs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clubs ALTER COLUMN id SET DEFAULT nextval('public.clubs_id_seq'::regclass);


--
-- Name: fans id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fans ALTER COLUMN id SET DEFAULT nextval('public.fans_id_seq'::regclass);


--
-- Name: stadium id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stadium ALTER COLUMN id SET DEFAULT nextval('public.stadium_id_seq'::regclass);


--
-- Data for Name: _ClubsToFans; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public._prisma_migrations VALUES ('69727929-2a50-4d3a-8817-ef9bd571dd11', '920054f8ac27196d166f94e179a623a54a0558c7f5885620f50ede1fee0a9302', '2023-01-29 18:45:59.500625-03', '20230125194216_users', NULL, NULL, '2023-01-29 18:45:59.490598-03', 1);
INSERT INTO public._prisma_migrations VALUES ('03d84d79-4c73-4d3a-8003-410f4befeb83', '7dd0eac137222209e3bbfc74abf7818d1ba520d78a68571c3c6d06af459fd839', '2023-01-29 18:45:59.536703-03', '20230126123445_clubs_&_championship', NULL, NULL, '2023-01-29 18:45:59.50161-03', 1);
INSERT INTO public._prisma_migrations VALUES ('7e612ef7-acae-43f3-a2e2-9043ad4e3fd5', '3f6a19c96b596c2b3ea06d7b8653706d6d3cd3c6c712a3c9be3fe1141285e548', '2023-01-29 18:45:59.543467-03', '20230129185247_new_database', NULL, NULL, '2023-01-29 18:45:59.537731-03', 1);
INSERT INTO public._prisma_migrations VALUES ('79d5127f-60b7-427c-9f3e-a24d6e947282', 'e67717cfda61d72905cf3c6ae31bc282a32955ccdcef132b92ee623571d65f52', '2023-01-29 18:45:59.548029-03', '20230129190237_update_database', NULL, NULL, '2023-01-29 18:45:59.544538-03', 1);
INSERT INTO public._prisma_migrations VALUES ('4ef5e1ce-b370-4cfd-9ccf-f8363c26fdf1', '85a18a03a3ccf92c3008f4fde3bd97de4ecb6a86bd5098006ea771926905aac0', '2023-01-29 18:45:59.562305-03', '20230129211258_stadium', NULL, NULL, '2023-01-29 18:45:59.549068-03', 1);
INSERT INTO public._prisma_migrations VALUES ('f7631e6f-2242-4fd9-9650-dde1f3f55ebc', '39660f244db43a292a432ff79a08f02c8d9dbd58a84ec2c997e0e86da68f8947', '2023-01-29 18:45:59.566881-03', '20230129211409_new_database', NULL, NULL, '2023-01-29 18:45:59.563334-03', 1);
INSERT INTO public._prisma_migrations VALUES ('ef8b916c-7935-4940-b1e6-162590964f4c', 'a1c0b7cb86d8460ca0ad3fb41b493de77a33f1b1794e1ca75d4ec13fac6b429e', '2023-01-29 18:45:59.574345-03', '20230129213356_update', NULL, NULL, '2023-01-29 18:45:59.567852-03', 1);
INSERT INTO public._prisma_migrations VALUES ('a3649a94-6340-4a7a-9951-18915c99b5ba', '2eb517cb36fd9af6576c9d6cb09af08bf22e9941a61a85c303738fc913b33d0d', '2023-01-29 18:51:53.145257-03', '20230129215153_update', NULL, NULL, '2023-01-29 18:51:53.13993-03', 1);


--
-- Data for Name: championship; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.championship VALUES (1, 'Copa do Brasil', '60', 120, NULL);
INSERT INTO public.championship VALUES (3, 'Serie D', '60', 120, NULL);


--
-- Data for Name: clubs; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.clubs VALUES (3, 'Flamengo', 'Rio', 'Brasil', 'Vermelhoe Preto', 1, NULL, NULL);
INSERT INTO public.clubs VALUES (4, 'Paysandu', 'Rio', 'Brasil', 'Vermelhoe Preto', 1, NULL, 2);
INSERT INTO public.clubs VALUES (6, 'Remo', 'Rio', 'Brasil', 'Vermelhoe Preto', 1, NULL, NULL);


--
-- Data for Name: fans; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: stadium; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.stadium VALUES (1, 'Mangueirao', NULL);
INSERT INTO public.stadium VALUES (2, 'Palestra', NULL);


--
-- Name: championship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.championship_id_seq', 6, true);


--
-- Name: clubs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.clubs_id_seq', 6, true);


--
-- Name: fans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.fans_id_seq', 1, false);


--
-- Name: stadium_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.stadium_id_seq', 2, true);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: championship championship_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.championship
    ADD CONSTRAINT championship_pkey PRIMARY KEY (id);


--
-- Name: clubs clubs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clubs
    ADD CONSTRAINT clubs_pkey PRIMARY KEY (id);


--
-- Name: fans fans_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fans
    ADD CONSTRAINT fans_pkey PRIMARY KEY (id);


--
-- Name: stadium stadium_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stadium
    ADD CONSTRAINT stadium_pkey PRIMARY KEY (id);


--
-- Name: _ClubsToFans_AB_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "_ClubsToFans_AB_unique" ON public."_ClubsToFans" USING btree ("A", "B");


--
-- Name: _ClubsToFans_B_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_ClubsToFans_B_index" ON public."_ClubsToFans" USING btree ("B");


--
-- Name: championship_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX championship_name_key ON public.championship USING btree (name);


--
-- Name: clubs_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX clubs_name_key ON public.clubs USING btree (name);


--
-- Name: clubs_stadiumId_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "clubs_stadiumId_key" ON public.clubs USING btree ("stadiumId");


--
-- Name: stadium_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX stadium_name_key ON public.stadium USING btree (name);


--
-- Name: _ClubsToFans _ClubsToFans_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."_ClubsToFans"
    ADD CONSTRAINT "_ClubsToFans_A_fkey" FOREIGN KEY ("A") REFERENCES public.clubs(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _ClubsToFans _ClubsToFans_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."_ClubsToFans"
    ADD CONSTRAINT "_ClubsToFans_B_fkey" FOREIGN KEY ("B") REFERENCES public.fans(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: clubs clubs_championshipId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clubs
    ADD CONSTRAINT "clubs_championshipId_fkey" FOREIGN KEY ("championshipId") REFERENCES public.championship(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: clubs clubs_stadiumId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clubs
    ADD CONSTRAINT "clubs_stadiumId_fkey" FOREIGN KEY ("stadiumId") REFERENCES public.stadium(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

