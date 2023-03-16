--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    name character varying(22) NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    name character varying(22),
    name_id integer NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_name_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_name_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_name_id_seq OWNER TO freecodecamp;

--
-- Name: users_name_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_name_id_seq OWNED BY public.users.name_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users name_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN name_id SET DEFAULT nextval('public.users_name_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, '', 776);
INSERT INTO public.games VALUES (2, 'user_1678947357531', 98);
INSERT INTO public.games VALUES (3, '', 999);
INSERT INTO public.games VALUES (4, 'user_1678947357530', 657);
INSERT INTO public.games VALUES (5, 'user_1678947357531', 244);
INSERT INTO public.games VALUES (6, 'user_1678947357531', 744);
INSERT INTO public.games VALUES (7, 'user_1678947357531', 281);
INSERT INTO public.games VALUES (8, '', 616);
INSERT INTO public.games VALUES (9, 'user_1678947393719', 549);
INSERT INTO public.games VALUES (10, '', 686);
INSERT INTO public.games VALUES (11, 'user_1678947393718', 121);
INSERT INTO public.games VALUES (12, 'user_1678947393719', 854);
INSERT INTO public.games VALUES (13, 'user_1678947393719', 563);
INSERT INTO public.games VALUES (14, 'user_1678947393719', 235);
INSERT INTO public.games VALUES (15, '', 11);
INSERT INTO public.games VALUES (16, '', 1);
INSERT INTO public.games VALUES (17, '', 11);
INSERT INTO public.games VALUES (18, '', 67);
INSERT INTO public.games VALUES (19, 'user_1678947716556', 246);
INSERT INTO public.games VALUES (20, '', 589);
INSERT INTO public.games VALUES (21, 'user_1678947716555', 439);
INSERT INTO public.games VALUES (22, 'user_1678947716556', 553);
INSERT INTO public.games VALUES (23, 'user_1678947716556', 94);
INSERT INTO public.games VALUES (24, 'user_1678947716556', 153);
INSERT INTO public.games VALUES (25, '', 388);
INSERT INTO public.games VALUES (26, 'user_1678947782746', 224);
INSERT INTO public.games VALUES (27, '', 361);
INSERT INTO public.games VALUES (28, 'user_1678947782745', 52);
INSERT INTO public.games VALUES (29, 'user_1678947782746', 494);
INSERT INTO public.games VALUES (30, 'user_1678947782746', 781);
INSERT INTO public.games VALUES (31, 'user_1678947782746', 997);
INSERT INTO public.games VALUES (32, 'meemoo', 10);
INSERT INTO public.games VALUES (33, 'meemoo', 17);
INSERT INTO public.games VALUES (34, '', 324);
INSERT INTO public.games VALUES (35, 'user_1678947935980', 180);
INSERT INTO public.games VALUES (36, '', 315);
INSERT INTO public.games VALUES (37, 'user_1678947935979', 726);
INSERT INTO public.games VALUES (38, 'user_1678947935980', 544);
INSERT INTO public.games VALUES (39, 'user_1678947935980', 938);
INSERT INTO public.games VALUES (40, 'user_1678947935980', 506);
INSERT INTO public.games VALUES (41, 'meemoo', 9);
INSERT INTO public.games VALUES (42, '', 185);
INSERT INTO public.games VALUES (43, 'user_1678948059594', 838);
INSERT INTO public.games VALUES (44, '', 717);
INSERT INTO public.games VALUES (45, 'user_1678948059593', 746);
INSERT INTO public.games VALUES (46, 'user_1678948059594', 485);
INSERT INTO public.games VALUES (47, 'user_1678948059594', 851);
INSERT INTO public.games VALUES (48, 'user_1678948059594', 885);
INSERT INTO public.games VALUES (49, 'meemoo', 10);
INSERT INTO public.games VALUES (50, '', 7);
INSERT INTO public.games VALUES (51, 'peepoo', 14);
INSERT INTO public.games VALUES (52, '', 653);
INSERT INTO public.games VALUES (53, 'user_1678948721933', 52);
INSERT INTO public.games VALUES (54, '', 20);
INSERT INTO public.games VALUES (55, 'user_1678948721932', 908);
INSERT INTO public.games VALUES (56, 'user_1678948721933', 408);
INSERT INTO public.games VALUES (57, 'user_1678948721933', 180);
INSERT INTO public.games VALUES (58, 'user_1678948721933', 203);
INSERT INTO public.games VALUES (59, 'peepoo', 18);
INSERT INTO public.games VALUES (60, 'peepoo', 1);
INSERT INTO public.games VALUES (61, '', 24);
INSERT INTO public.games VALUES (62, 'user_1678949270884', 639);
INSERT INTO public.games VALUES (63, 'user_1678949270884', 372);
INSERT INTO public.games VALUES (64, 'user_1678949270883', 754);
INSERT INTO public.games VALUES (65, 'user_1678949270883', 134);
INSERT INTO public.games VALUES (66, 'user_1678949270884', 742);
INSERT INTO public.games VALUES (67, 'user_1678949270884', 735);
INSERT INTO public.games VALUES (68, 'user_1678949270884', 492);
INSERT INTO public.games VALUES (69, 'pipi', 16);
INSERT INTO public.games VALUES (70, 'pipi', 1);
INSERT INTO public.games VALUES (71, 'user_1678949510794', 442);
INSERT INTO public.games VALUES (72, 'user_1678949510794', 697);
INSERT INTO public.games VALUES (73, 'user_1678949510793', 554);
INSERT INTO public.games VALUES (74, 'user_1678949510793', 68);
INSERT INTO public.games VALUES (75, 'user_1678949510794', 887);
INSERT INTO public.games VALUES (76, 'user_1678949510794', 363);
INSERT INTO public.games VALUES (77, 'user_1678949510794', 640);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1678947137235', 1);
INSERT INTO public.users VALUES ('user_1678947137235', 2);
INSERT INTO public.users VALUES ('user_1678947137234', 3);
INSERT INTO public.users VALUES ('user_1678947137234', 4);
INSERT INTO public.users VALUES ('user_1678947137235', 5);
INSERT INTO public.users VALUES ('user_1678947137235', 6);
INSERT INTO public.users VALUES ('user_1678947137235', 7);
INSERT INTO public.users VALUES ('BIGPAPA', 8);
INSERT INTO public.users VALUES ('user_1678947357531', 9);
INSERT INTO public.users VALUES ('user_1678947357530', 10);
INSERT INTO public.users VALUES ('user_1678947393719', 11);
INSERT INTO public.users VALUES ('user_1678947393718', 12);
INSERT INTO public.users VALUES ('bobo', 13);
INSERT INTO public.users VALUES ('meemoo', 14);
INSERT INTO public.users VALUES ('user_1678947716556', 15);
INSERT INTO public.users VALUES ('user_1678947716555', 16);
INSERT INTO public.users VALUES ('user_1678947782746', 17);
INSERT INTO public.users VALUES ('user_1678947782745', 18);
INSERT INTO public.users VALUES ('user_1678947935980', 19);
INSERT INTO public.users VALUES ('user_1678947935979', 20);
INSERT INTO public.users VALUES ('user_1678948059594', 21);
INSERT INTO public.users VALUES ('user_1678948059593', 22);
INSERT INTO public.users VALUES ('peepoo', 23);
INSERT INTO public.users VALUES ('user_1678948721933', 24);
INSERT INTO public.users VALUES ('user_1678948721932', 25);
INSERT INTO public.users VALUES ('pipi', 26);
INSERT INTO public.users VALUES ('user_1678949270884', 27);
INSERT INTO public.users VALUES ('user_1678949270883', 28);
INSERT INTO public.users VALUES ('user_1678949510794', 29);
INSERT INTO public.users VALUES ('user_1678949510793', 30);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 77, true);


--
-- Name: users_name_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_name_id_seq', 30, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (name_id);


--
-- PostgreSQL database dump complete
--

