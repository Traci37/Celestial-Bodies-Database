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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer NOT NULL,
    description text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    is_spherical boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    planet_type character varying(20),
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: satelite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satelite (
    satelite_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    has_life boolean,
    distance_to_orbit numeric(2,1)
);


ALTER TABLE public.satelite OWNER TO freecodecamp;

--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satelite_satelite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satelite_satelite_id_seq OWNER TO freecodecamp;

--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satelite_satelite_id_seq OWNED BY public.satelite.satelite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    age integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: satelite satelite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite ALTER COLUMN satelite_id SET DEFAULT nextval('public.satelite_satelite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13, 'A barred spiral galaxy containing billions of stars including our solar system', true);
INSERT INTO public.galaxy VALUES (2, 'Triangulum', 3, 'A member of the local group, it is a spiral known for its rich star formation region', true);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 10, 'The spiral galaxy to the milky way', true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 100, 'A classical spiral galaxy interacting with smaller galaxy', true);
INSERT INTO public.galaxy VALUES (5, 'Sombreno', 10, 'A spiral galaxy with a bright nucleus resembling a sombrero hat', true);
INSERT INTO public.galaxy VALUES (6, 'Needle', 10, 'A spiral galaxy known for its high rate of star formation and bright central', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'M31-LK1_m', 10, true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 5, false, 2);
INSERT INTO public.moon VALUES (3, 'Luna', 5, true, 1);
INSERT INTO public.moon VALUES (4, 'Deimos', 5, false, 2);
INSERT INTO public.moon VALUES (5, 'M31-LK2_m', 10, true, 5);
INSERT INTO public.moon VALUES (6, 'Lo', 5, true, 7);
INSERT INTO public.moon VALUES (7, 'Europa', 5, true, 7);
INSERT INTO public.moon VALUES (8, 'M33-UDK-m', 2, false, 4);
INSERT INTO public.moon VALUES (9, 'Titan', 5, true, 9);
INSERT INTO public.moon VALUES (10, 'M51-m', 1, false, 8);
INSERT INTO public.moon VALUES (11, 'Rhea', 5, true, 9);
INSERT INTO public.moon VALUES (12, 'M31-LK3-m', 10, true, 6);
INSERT INTO public.moon VALUES (13, 'Enceladus', 5, true, 9);
INSERT INTO public.moon VALUES (14, 'M104-P1-m', 3, false, 10);
INSERT INTO public.moon VALUES (15, 'Ganymede', 5, true, 7);
INSERT INTO public.moon VALUES (16, 'M104-P2-m', 3, false, 11);
INSERT INTO public.moon VALUES (17, 'Callisto', 5, true, 7);
INSERT INTO public.moon VALUES (18, 'Tethys', 5, true, 9);
INSERT INTO public.moon VALUES (19, 'Dione', 5, true, 9);
INSERT INTO public.moon VALUES (20, 'NGC-m', 1, false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 5, 'inner planet', 1);
INSERT INTO public.planet VALUES (2, 'Mars', 5, 'inner planet', 1);
INSERT INTO public.planet VALUES (3, 'M31-LK1', 10, 'exoplanet', 3);
INSERT INTO public.planet VALUES (4, 'M33-UDK-1', 4, 'extragalactic planet', 2);
INSERT INTO public.planet VALUES (5, 'M31-LK2', 10, 'extragalactic planet', 3);
INSERT INTO public.planet VALUES (6, 'M31-LK3', 10, 'extragalactic planet', 3);
INSERT INTO public.planet VALUES (7, 'Jupiter', 5, 'outer planet', 1);
INSERT INTO public.planet VALUES (8, 'M51-1', 1, 'extragalactic planet', 4);
INSERT INTO public.planet VALUES (9, 'Saturn', 5, 'outer planet', 1);
INSERT INTO public.planet VALUES (10, 'M104_P1', 3, 'extragalactic planet', 5);
INSERT INTO public.planet VALUES (11, 'M104-P2', 3, 'extragalactic', 5);
INSERT INTO public.planet VALUES (12, 'NGC 4565', 1, 'exoplanet', 6);


--
-- Data for Name: satelite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satelite VALUES (1, 'M31-LK1-m', 10, false, 2.8);
INSERT INTO public.satelite VALUES (2, 'Phobos', 5, false, 6.0);
INSERT INTO public.satelite VALUES (3, 'Luna', 5, false, 3.8);
INSERT INTO public.satelite VALUES (4, 'Deimos', 5, false, 2.4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The central of our solar system, providing light and heat essential for life on Earth', 5, 1);
INSERT INTO public.star VALUES (2, 'NGC 604', 'A bright star forming regoin with numerous young star', 3, 2);
INSERT INTO public.star VALUES (3, 'Mirach', 'A bright red giant star marking the head of the constellation Pegasus', 1, 3);
INSERT INTO public.star VALUES (4, 'whirl b', 'The companion galaxy that is interacting with M51, featuring a mix of old and young stars', 3, 4);
INSERT INTO public.star VALUES (5, 'NGC 4594', 'The central region containing many old', 4, 5);
INSERT INTO public.star VALUES (6, 'needle b', 'The main star forming region, rich in young stars', 2, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satelite_satelite_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satelite satelite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT satelite_name_key UNIQUE (name);


--
-- Name: satelite satelite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT satelite_pkey PRIMARY KEY (satelite_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

