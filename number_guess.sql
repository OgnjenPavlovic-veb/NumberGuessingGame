--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2, 2);
INSERT INTO public.games VALUES (2, 2, 3);
INSERT INTO public.games VALUES (3, 4, 171);
INSERT INTO public.games VALUES (4, 4, 932);
INSERT INTO public.games VALUES (5, 5, 964);
INSERT INTO public.games VALUES (6, 5, 363);
INSERT INTO public.games VALUES (7, 4, 460);
INSERT INTO public.games VALUES (8, 4, 1);
INSERT INTO public.games VALUES (9, 4, 196);
INSERT INTO public.games VALUES (10, 6, 63);
INSERT INTO public.games VALUES (11, 6, 262);
INSERT INTO public.games VALUES (12, 7, 20);
INSERT INTO public.games VALUES (13, 7, 478);
INSERT INTO public.games VALUES (14, 6, 678);
INSERT INTO public.games VALUES (15, 6, 1);
INSERT INTO public.games VALUES (16, 6, 375);
INSERT INTO public.games VALUES (17, 8, 425);
INSERT INTO public.games VALUES (18, 8, 284);
INSERT INTO public.games VALUES (19, 9, 980);
INSERT INTO public.games VALUES (20, 9, 576);
INSERT INTO public.games VALUES (21, 8, 163);
INSERT INTO public.games VALUES (22, 8, 844);
INSERT INTO public.games VALUES (23, 8, 882);
INSERT INTO public.games VALUES (24, 10, 742);
INSERT INTO public.games VALUES (25, 10, 785);
INSERT INTO public.games VALUES (26, 11, 137);
INSERT INTO public.games VALUES (27, 11, 166);
INSERT INTO public.games VALUES (28, 10, 952);
INSERT INTO public.games VALUES (29, 10, 759);
INSERT INTO public.games VALUES (30, 10, 199);
INSERT INTO public.games VALUES (31, 12, 799);
INSERT INTO public.games VALUES (32, 12, 355);
INSERT INTO public.games VALUES (33, 13, 756);
INSERT INTO public.games VALUES (34, 13, 366);
INSERT INTO public.games VALUES (35, 12, 977);
INSERT INTO public.games VALUES (36, 12, 178);
INSERT INTO public.games VALUES (37, 12, 874);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Landon');
INSERT INTO public.users VALUES (2, 'mudja');
INSERT INTO public.users VALUES (3, 'cigan');
INSERT INTO public.users VALUES (4, 'user_1758284940578');
INSERT INTO public.users VALUES (5, 'user_1758284940577');
INSERT INTO public.users VALUES (6, 'user_1758285185229');
INSERT INTO public.users VALUES (7, 'user_1758285185228');
INSERT INTO public.users VALUES (8, 'user_1758286341456');
INSERT INTO public.users VALUES (9, 'user_1758286341455');
INSERT INTO public.users VALUES (10, 'user_1758286578953');
INSERT INTO public.users VALUES (11, 'user_1758286578952');
INSERT INTO public.users VALUES (12, 'user_1758286720696');
INSERT INTO public.users VALUES (13, 'user_1758286720695');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 37, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 13, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

