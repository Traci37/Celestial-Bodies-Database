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
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    age integer,
    distance_from_earth numeric(3,1),
    description text,
    is_spherical boolean
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
    name character varying(20) NOT NULL,
    moon_id integer NOT NULL,
    age integer,
    planet_id integer,
    moon_type character varying(20)
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
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    age integer,
    description text,
    star_id integer,
    is_spherical boolean
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
-- Name: satellites; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellites (
    satellites_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean
);


ALTER TABLE public.satellites OWNER TO freecodecamp;

--
-- Name: satellites_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellites_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellites_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellites_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellites_satellite_id_seq OWNED BY public.satellites.satellites_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20),
    star_id integer NOT NULL,
    age integer,
    distance_from_earth numeric(3,1),
    description text,
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
-- Name: satellites satellites_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites ALTER COLUMN satellites_id SET DEFAULT nextval('public.satellites_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 14, 0.0, 'MW is the galaxy we live.It has a shape of a barred spiral.', false);
INSERT INTO public.galaxy VALUES ('Black Eye', 2, 3, 17.0, 'The Black Eye Galaxy, known for its distinctive dark dust lane, is a spiral glaxy located in the constellation Coma.', false);
INSERT INTO public.galaxy VALUES ('Butterfly', 3, 6, 27.0, 'The Butterfly Galaxy, also known as M63, is a spiral galaxy that resembles a butterfly due its bright star regions and dustlane.', false);
INSERT INTO public.galaxy VALUES ('Messier 87', 4, 13, 53.5, 'Messier 87 is a giant elliptical galaxy in the Virgo Cluster and is known for housing supermassive black hole at its center.', true);
INSERT INTO public.galaxy VALUES ('Andromeda', 5, 10, 25.3, 'The Andromeda Galaxy is the nearest galaxy to Milky Way galaxy.', false);
INSERT INTO public.galaxy VALUES ('Sombrero', 6, 10, 28.0, 'The Sombrero galaxy is known for its bright nucleus and prominent dust lane.', false);
INSERT INTO public.galaxy VALUES ('Triangulum', 7, 3, 24.6, 'Triangulumgalaxy is part of local group, along milky way galaxy.', true);
INSERT INTO public.galaxy VALUES ('Whirlpool', 8, 500, 21.3, 'The whirlpool galaxy is known for its classic structure.', true);
INSERT INTO public.galaxy VALUES ('Large Magellanic', 9, 19, 43.4, 'LM galaxy a satellite galaxy', false);
INSERT INTO public.galaxy VALUES ('Small Magellanic', 10, 23, 12.3, 'SM galaxy features a prominent dust lane.', false);
INSERT INTO public.galaxy VALUES ('Centaurus A', 11, 100, 13.2, 'Centaurus A is known for its active nucleus and peculiar shape.', false);
INSERT INTO public.galaxy VALUES ('Silver Dollar', 12, 14, 11.4, 'Silver Dollar is a stardust galaxy.', false);
INSERT INTO public.galaxy VALUES ('NGC 4314', 13, 15, 30.8, 'This galaxy is located in the constellation Ursa Major.', true);
INSERT INTO public.galaxy VALUES ('Cigar', 14, 109, 12.5, 'Cigar is known for its enlongated shape.', false);
INSERT INTO public.galaxy VALUES ('M82', 15, 11, 34.5, 'M82 is a large spiral galaxy.', false);
INSERT INTO public.galaxy VALUES ('M77', 16, 16, 47.6, 'M77 is a seyfert galaxy.', true);
INSERT INTO public.galaxy VALUES ('IC 342', 17, 17, 10.7, 'IC 342 is a spiral galaxy.', false);
INSERT INTO public.galaxy VALUES ('NGC 300', 18, 26, 60.0, 'NGC 300 is a spiral galaxy located in the Sculptor constellation.', false);
INSERT INTO public.galaxy VALUES ('Needle', 19, 19, 40.0, 'Needle is an edge-on galaxy.', false);
INSERT INTO public.galaxy VALUES ('M64', 20, 22, 17.8, 'M64 is famous for its dark band of dust.', true);
INSERT INTO public.galaxy VALUES ('Decimal', 21, 35, 24.6, 'Decimal is a well-studied galaxy.', false);
INSERT INTO public.galaxy VALUES ('Silicon', 22, 32, 14.8, 'Silicon is located in the Eridus consellation.', false);
INSERT INTO public.galaxy VALUES ('Proximum', 23, 28, 70.9, 'Proximum is known for its distinct structure.', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Vega I', 1, 13, 1, 'rocky');
INSERT INTO public.moon VALUES ('M63 I', 2, 6, 2, 'rocky');
INSERT INTO public.moon VALUES ('M87 I', 3, 13, 3, 'gas giant');
INSERT INTO public.moon VALUES ('NGC 4826', 4, 3, 4, 'icy');
INSERT INTO public.moon VALUES ('Andromeda I', 23, 13, 7, 'rocky');
INSERT INTO public.moon VALUES ('Andromeda II', 24, 6, 8, 'icy');
INSERT INTO public.moon VALUES ('M104 I', 25, 14, 32, 'gas giant');
INSERT INTO public.moon VALUES ('M104 II', 26, 3, 33, 'rocky');
INSERT INTO public.moon VALUES ('Sirius I', 27, 23, 34, 'rocky');
INSERT INTO public.moon VALUES ('Betelgeuse I', 28, 34, 35, 'icy');
INSERT INTO public.moon VALUES ('Polaris I', 29, 21, 36, 'rocky');
INSERT INTO public.moon VALUES ('Polaris II', 30, 29, 37, 'icy');
INSERT INTO public.moon VALUES ('Alpha Centauri I', 31, 18, 38, 'gas giant');
INSERT INTO public.moon VALUES ('Proxima I', 32, 35, 39, 'rocky');
INSERT INTO public.moon VALUES ('Kepler-22 I', 33, 16, 40, 'icy');
INSERT INTO public.moon VALUES ('HD 209458 I', 34, 26, 41, 'gas giant');
INSERT INTO public.moon VALUES ('WASP-121 I', 35, 19, 42, 'rocky');
INSERT INTO public.moon VALUES ('Vega II', 37, 32, 43, 'icy');
INSERT INTO public.moon VALUES ('NGC 4826 II', 38, 38, 44, 'rocky');
INSERT INTO public.moon VALUES ('M63 II', 39, 30, 45, 'gas giant');
INSERT INTO public.moon VALUES ('M87 I', 40, 20, 46, 'rocky');
INSERT INTO public.moon VALUES ('Proxima II', 41, 8, 47, 'rocky');
INSERT INTO public.moon VALUES ('Demo', 42, 41, 48, 'icy');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Vega b', 1, NULL, 'Vegan b is exoplanent discovered orbiting the star Vega, located in the Milky Way galaxy', 1, false);
INSERT INTO public.planet VALUES ('M63 b', 2, NULL, 'M63 B is an exoplanet hypothesized to orbit a star in the Butterfly Galaxy', 2, false);
INSERT INTO public.planet VALUES ('M87', 3, NULL, 'M87 is a potential exoplanet in the vicinity of the supermassive black hole Messier 87', 3, true);
INSERT INTO public.planet VALUES ('NGC 4826', 4, NULL, 'NGC 4826 is an exoplanet hypothesized to orbit a star in the blabk eye galaxy.', 4, false);
INSERT INTO public.planet VALUES ('Andromena b', 7, NULL, 'Andromena b is a theorized planet in the Andromeda', 6, false);
INSERT INTO public.planet VALUES ('M104 b', 8, NULL, 'M104 b is a potential gas giant in the Sombrero galaxy', 7, false);
INSERT INTO public.planet VALUES ('Sepal', 32, 37, 'Sepal is a cold planet', 8, false);
INSERT INTO public.planet VALUES ('Andromena c', 33, 11, 'Andromena c is a hypothetical icy planet', 9, false);
INSERT INTO public.planet VALUES ('M104 C', 34, 12, 'M104 C is a theorized rocky planet', 10, false);
INSERT INTO public.planet VALUES ('Sirius', 35, 13, 'Sirius is a planet that maybe orbit the Siri', 11, true);
INSERT INTO public.planet VALUES ('Betelgeuse b', 36, 23, 'Betelgeus b is a planet orbiting Betelgeus', 12, false);
INSERT INTO public.planet VALUES ('Polaris b', 37, 16, 'Polaris b is a planetin the Polaris system', 13, false);
INSERT INTO public.planet VALUES ('Alpha Centauri', 38, 17, 'AC is exoplanet orbiting the star Alpha', 14, false);
INSERT INTO public.planet VALUES ('Proxima Centauri', 39, 18, 'PC is an exoplanet in the habitable zone', 15, true);
INSERT INTO public.planet VALUES ('Triangulum c', 40, 25, 'Triangulum c is part the local group', 16, false);
INSERT INTO public.planet VALUES ('Pool', 41, 26, 'The Pool planet is known for itsclassic structure', 17, true);
INSERT INTO public.planet VALUES ('Magellanic', 42, 34, 'Magellanic planet is the coldest', 18, false);
INSERT INTO public.planet VALUES ('Small Magellanic', 43, 32, 'SM planet features a prominent dust lane', 19, false);
INSERT INTO public.planet VALUES ('Centric A', 44, 29, 'Centric A is known for its active necleus and peculiar shape', 20, false);
INSERT INTO public.planet VALUES ('Silly', 45, 37, 'Silly is a stardust planet', 21, false);
INSERT INTO public.planet VALUES ('Venus', 46, 45, 'Venus located in constellation Ursa', 22, true);
INSERT INTO public.planet VALUES ('Cine', 47, 32, 'Cine is known for its enlongated shape', 23, false);
INSERT INTO public.planet VALUES ('Matte', 48, 31, 'Matte is large spiral planet', 24, false);


--
-- Data for Name: satellites; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellites VALUES (1, 'Communications', false);
INSERT INTO public.satellites VALUES (2, 'Sun Synchronous', true);
INSERT INTO public.satellites VALUES (3, 'Weather', false);
INSERT INTO public.satellites VALUES (4, 'Lagrange Point', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Vega', 1, 455, 25.0, 'Vegan is bright star in the Constellation Lyra and is part of the Milky Way galaxy', 1);
INSERT INTO public.star VALUES ('M63', 2, 6, 27.0, 'This star is part of the Butterfly Galaxy and contributes to its overall luminosity', 3);
INSERT INTO public.star VALUES ('M87', 3, 13, 53.5, 'This star is located within the giant elliptical galaxy Messier 87 and is part of its expensive stellar population.', 4);
INSERT INTO public.star VALUES ('NGC 4826', 4, 3, 17.0, 'This star is located in the Black Eye galaxy.', 2);
INSERT INTO public.star VALUES ('M31', 6, 10, 25.4, 'This star is part of Andromeda', 5);
INSERT INTO public.star VALUES ('M104', 7, 10, 28.0, 'This star is part of the Sombrero and is part of its rich stellar environment', 6);
INSERT INTO public.star VALUES ('Triangulum b', 8, 3, 24.6, 'Triangulum b is part of local group, along milky way galaxy.', 7);
INSERT INTO public.star VALUES ('Whirlpool b', 9, 500, 21.3, 'The whirlpool b is known for its classic structure.', 8);
INSERT INTO public.star VALUES ('Large Magellanic b', 10, 19, 43.4, 'LM b a large star', 9);
INSERT INTO public.star VALUES ('Small Magellanic b', 11, 23, 12.3, 'SM b features a prominent star.', 10);
INSERT INTO public.star VALUES ('Centaurus b', 12, 100, 13.2, 'Centaurus b is known for its active nucleus and peculiar shape.', 11);
INSERT INTO public.star VALUES ('Silver b', 13, 14, 11.4, 'Silver b is a stardust star.', 12);
INSERT INTO public.star VALUES ('Dollar', 14, 15, 30.8, 'This star is located in the constellation Ursa Major.', 13);
INSERT INTO public.star VALUES ('Cigar b', 15, 109, 12.5, 'Cigar b is known for its shiny shape.', 14);
INSERT INTO public.star VALUES ('Magnet', 16, 11, 34.5, 'M82 is a large spiral star.', 15);
INSERT INTO public.star VALUES ('Malik b', 17, 16, 47.6, 'M77 is a seyfert star.', 16);
INSERT INTO public.star VALUES ('IC b', 18, 17, 10.7, 'IC 342 is a spiral galaxy.', 17);
INSERT INTO public.star VALUES ('Nigo', 19, 26, 60.0, 'NGC 300 is a spiral star located in the Sculptor constellation.', 18);
INSERT INTO public.star VALUES ('Needle b', 20, 19, 40.0, 'Needle is an edge-on galaxy.', 19);
INSERT INTO public.star VALUES ('Meta b', 21, 22, 17.8, 'M64 is famous for its dark band of dust.', 20);
INSERT INTO public.star VALUES ('Decimal b', 22, 35, 24.6, 'Decimal is a well-studied galaxy.', 21);
INSERT INTO public.star VALUES ('Silicon b', 23, 32, 14.8, 'Silicon is located in the Eridus consellation.', 22);
INSERT INTO public.star VALUES ('Proximum a', 24, 28, 70.9, 'Proximum a is known for its distinct structure.', 23);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 23, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 42, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 48, true);


--
-- Name: satellites_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellites_satellite_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 24, true);


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
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_key UNIQUE (planet_id);


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
-- Name: satellites satellites_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites
    ADD CONSTRAINT satellites_name_key UNIQUE (name);


--
-- Name: satellites satellites_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites
    ADD CONSTRAINT satellites_pkey PRIMARY KEY (satellites_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


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

