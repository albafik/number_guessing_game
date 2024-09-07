--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    guesses integer NOT NULL,
    player_id integer NOT NULL
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2, 1);
INSERT INTO public.games VALUES (2, 4, 1);
INSERT INTO public.games VALUES (3, 6, 1);
INSERT INTO public.games VALUES (4, 1, 1);
INSERT INTO public.games VALUES (5, 2, 1);
INSERT INTO public.games VALUES (6, 770, 6);
INSERT INTO public.games VALUES (7, 674, 6);
INSERT INTO public.games VALUES (8, 372, 8);
INSERT INTO public.games VALUES (9, 488, 8);
INSERT INTO public.games VALUES (10, 599, 6);
INSERT INTO public.games VALUES (11, 462, 6);
INSERT INTO public.games VALUES (12, 212, 6);
INSERT INTO public.games VALUES (13, 744, 13);
INSERT INTO public.games VALUES (14, 535, 14);
INSERT INTO public.games VALUES (15, 265, 15);
INSERT INTO public.games VALUES (16, 462, 16);
INSERT INTO public.games VALUES (17, 287, 17);
INSERT INTO public.games VALUES (18, 619, 18);
INSERT INTO public.games VALUES (19, 84, 19);
INSERT INTO public.games VALUES (20, 975, 20);
INSERT INTO public.games VALUES (21, 3, 21);
INSERT INTO public.games VALUES (22, 187, 22);
INSERT INTO public.games VALUES (23, 177, 23);
INSERT INTO public.games VALUES (24, 3, 24);
INSERT INTO public.games VALUES (25, 650, 25);
INSERT INTO public.games VALUES (26, 766, 26);
INSERT INTO public.games VALUES (27, 517, 27);
INSERT INTO public.games VALUES (28, 125, 27);
INSERT INTO public.games VALUES (29, 890, 29);
INSERT INTO public.games VALUES (30, 634, 29);
INSERT INTO public.games VALUES (31, 112, 27);
INSERT INTO public.games VALUES (32, 679, 27);
INSERT INTO public.games VALUES (33, 835, 27);
INSERT INTO public.games VALUES (34, 102, 34);
INSERT INTO public.games VALUES (35, 566, 34);
INSERT INTO public.games VALUES (36, 747, 36);
INSERT INTO public.games VALUES (37, 754, 36);
INSERT INTO public.games VALUES (38, 525, 34);
INSERT INTO public.games VALUES (39, 586, 34);
INSERT INTO public.games VALUES (40, 1000, 34);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'bod');
INSERT INTO public.players VALUES (6, 'user_1725696458772');
INSERT INTO public.players VALUES (8, 'user_1725696458771');
INSERT INTO public.players VALUES (13, 'user_1725696916191');
INSERT INTO public.players VALUES (14, 'user_1725696916190');
INSERT INTO public.players VALUES (15, 'user_1725696935531');
INSERT INTO public.players VALUES (16, 'user_1725696935530');
INSERT INTO public.players VALUES (17, 'user_1725696957107');
INSERT INTO public.players VALUES (18, 'user_1725696957106');
INSERT INTO public.players VALUES (19, 'user_1725696989811');
INSERT INTO public.players VALUES (20, 'user_1725696989810');
INSERT INTO public.players VALUES (21, 'body');
INSERT INTO public.players VALUES (22, 'user_1725697083149');
INSERT INTO public.players VALUES (23, 'user_1725697083148');
INSERT INTO public.players VALUES (24, 'cacho');
INSERT INTO public.players VALUES (25, 'user_1725697352562');
INSERT INTO public.players VALUES (26, 'user_1725697352561');
INSERT INTO public.players VALUES (27, 'user_1725697385204');
INSERT INTO public.players VALUES (29, 'user_1725697385203');
INSERT INTO public.players VALUES (34, 'user_1725697436578');
INSERT INTO public.players VALUES (36, 'user_1725697436577');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 40, true);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 40, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: players unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT unique_name UNIQUE (username);


--
-- Name: games games_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- PostgreSQL database dump complete
--

