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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (204, 2018, 'Final', 4, 2, 610, 609);
INSERT INTO public.games VALUES (205, 2018, 'Third Place', 2, 0, 612, 611);
INSERT INTO public.games VALUES (206, 2018, 'Semi-Final', 2, 1, 609, 611);
INSERT INTO public.games VALUES (207, 2018, 'Semi-Final', 1, 0, 610, 612);
INSERT INTO public.games VALUES (208, 2018, 'Quarter-Final', 3, 2, 609, 613);
INSERT INTO public.games VALUES (209, 2018, 'Quarter-Final', 2, 0, 611, 614);
INSERT INTO public.games VALUES (210, 2018, 'Quarter-Final', 2, 1, 612, 615);
INSERT INTO public.games VALUES (211, 2018, 'Quarter-Final', 2, 0, 610, 616);
INSERT INTO public.games VALUES (212, 2018, 'Eighth-Final', 2, 1, 611, 617);
INSERT INTO public.games VALUES (213, 2018, 'Eighth-Final', 1, 0, 614, 618);
INSERT INTO public.games VALUES (214, 2018, 'Eighth-Final', 3, 2, 612, 619);
INSERT INTO public.games VALUES (215, 2018, 'Eighth-Final', 2, 0, 615, 620);
INSERT INTO public.games VALUES (216, 2018, 'Eighth-Final', 2, 1, 609, 621);
INSERT INTO public.games VALUES (217, 2018, 'Eighth-Final', 2, 1, 613, 622);
INSERT INTO public.games VALUES (218, 2018, 'Eighth-Final', 2, 1, 616, 623);
INSERT INTO public.games VALUES (219, 2018, 'Eighth-Final', 4, 3, 610, 624);
INSERT INTO public.games VALUES (220, 2014, 'Final', 1, 0, 625, 624);
INSERT INTO public.games VALUES (221, 2014, 'Third Place', 3, 0, 626, 615);
INSERT INTO public.games VALUES (222, 2014, 'Semi-Final', 1, 0, 624, 626);
INSERT INTO public.games VALUES (223, 2014, 'Semi-Final', 7, 1, 625, 615);
INSERT INTO public.games VALUES (224, 2014, 'Quarter-Final', 1, 0, 626, 627);
INSERT INTO public.games VALUES (225, 2014, 'Quarter-Final', 1, 0, 624, 612);
INSERT INTO public.games VALUES (226, 2014, 'Quarter-Final', 2, 1, 615, 617);
INSERT INTO public.games VALUES (227, 2014, 'Quarter-Final', 1, 0, 625, 610);
INSERT INTO public.games VALUES (228, 2014, 'Eighth-Final', 2, 1, 615, 628);
INSERT INTO public.games VALUES (229, 2014, 'Eighth-Final', 2, 0, 617, 616);
INSERT INTO public.games VALUES (230, 2014, 'Eighth-Final', 2, 0, 610, 629);
INSERT INTO public.games VALUES (231, 2014, 'Eighth-Final', 2, 1, 625, 630);
INSERT INTO public.games VALUES (232, 2014, 'Eighth-Final', 2, 1, 626, 620);
INSERT INTO public.games VALUES (233, 2014, 'Eighth-Final', 2, 1, 627, 631);
INSERT INTO public.games VALUES (234, 2014, 'Eighth-Final', 1, 0, 624, 618);
INSERT INTO public.games VALUES (235, 2014, 'Eighth-Final', 2, 1, 612, 632);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (609, 'Croatia');
INSERT INTO public.teams VALUES (610, 'France');
INSERT INTO public.teams VALUES (611, 'England');
INSERT INTO public.teams VALUES (612, 'Belgium');
INSERT INTO public.teams VALUES (613, 'Russia');
INSERT INTO public.teams VALUES (614, 'Sweden');
INSERT INTO public.teams VALUES (615, 'Brazil');
INSERT INTO public.teams VALUES (616, 'Uruguay');
INSERT INTO public.teams VALUES (617, 'Colombia');
INSERT INTO public.teams VALUES (618, 'Switzerland');
INSERT INTO public.teams VALUES (619, 'Japan');
INSERT INTO public.teams VALUES (620, 'Mexico');
INSERT INTO public.teams VALUES (621, 'Denmark');
INSERT INTO public.teams VALUES (622, 'Spain');
INSERT INTO public.teams VALUES (623, 'Portugal');
INSERT INTO public.teams VALUES (624, 'Argentina');
INSERT INTO public.teams VALUES (625, 'Germany');
INSERT INTO public.teams VALUES (626, 'Netherlands');
INSERT INTO public.teams VALUES (627, 'Costa Rica');
INSERT INTO public.teams VALUES (628, 'Chile');
INSERT INTO public.teams VALUES (629, 'Nigeria');
INSERT INTO public.teams VALUES (630, 'Algeria');
INSERT INTO public.teams VALUES (631, 'Greece');
INSERT INTO public.teams VALUES (632, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 235, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 32, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 632, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

