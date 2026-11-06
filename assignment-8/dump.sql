--
-- PostgreSQL database dump
--

\restrict 46MiXms2FdE9nx3FBAZatDMZyEn64sri10zZ2SuxvDPLwSHshjFRxjSIhgaeAOj

-- Dumped from database version 18.6 (Debian 18.6-1.pgdg13+2)
-- Dumped by pg_dump version 18.6 (Debian 18.6-1.pgdg13+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: inventory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventory (
    id integer NOT NULL,
    invnumber bigint NOT NULL,
    kind text NOT NULL,
    model text NOT NULL,
    room numeric(2,0),
    purchasedate date NOT NULL
);


ALTER TABLE public.inventory OWNER TO postgres;

--
-- Name: inventory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inventory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.inventory_id_seq OWNER TO postgres;

--
-- Name: inventory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inventory_id_seq OWNED BY public.inventory.id;


--
-- Name: inventory id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory ALTER COLUMN id SET DEFAULT nextval('public.inventory_id_seq'::regclass);


--
-- Data for Name: inventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventory (id, invnumber, kind, model, room, purchasedate) FROM stdin;
1	9381744	laptop	Lenovo	1	2024-07-03
2	29386564	printer	Epson	5	2020-11-23
3	74639080	projector	Epson	1	2022-02-14
4	392816	desk	Oxford Furniture	2	2008-08-23
5	60321048	chair	Oxford Furniture	2	2008-08-23
6	37572319	laptop	ASUS	1	2023-06-25
7	12176290	desk	Oxford Furniture	3	2008-08-23
8	90127728	whiteboard	Oxford Furniture	11	2008-07-16
9	92371023	printer	Espon	\N	2022-03-28
10	12763518	projector	Espon	\N	2021-07-04
\.


--
-- Name: inventory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inventory_id_seq', 10, true);


--
-- Name: inventory inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict 46MiXms2FdE9nx3FBAZatDMZyEn64sri10zZ2SuxvDPLwSHshjFRxjSIhgaeAOj

