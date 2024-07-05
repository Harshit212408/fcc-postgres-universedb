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
-- Name: galaxies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxies (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    type character varying(50),
    distance double precision
);


ALTER TABLE public.galaxies OWNER TO freecodecamp;

--
-- Name: galaxies_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxies_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxies_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxies_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxies_galaxy_id_seq OWNED BY public.galaxies.galaxy_id;


--
-- Name: moons; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moons (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    mass double precision,
    diameter double precision,
    orbital_period double precision,
    planet_id integer
);


ALTER TABLE public.moons OWNER TO freecodecamp;

--
-- Name: moons_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moons_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moons_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moons_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moons_moon_id_seq OWNED BY public.moons.moon_id;


--
-- Name: planets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planets (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    mass double precision,
    diameter double precision,
    orbital_period double precision,
    distance_from_sun double precision
);


ALTER TABLE public.planets OWNER TO freecodecamp;

--
-- Name: planets_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planets_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planets_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planets_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planets_planet_id_seq OWNED BY public.planets.planet_id;


--
-- Name: stars; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.stars (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    mass double precision,
    diameter double precision,
    spectral_type character varying(10)
);


ALTER TABLE public.stars OWNER TO freecodecamp;

--
-- Name: stars_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.stars_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stars_star_id_seq OWNER TO freecodecamp;

--
-- Name: stars_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.stars_star_id_seq OWNED BY public.stars.star_id;


--
-- Name: galaxies galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxies ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxies_galaxy_id_seq'::regclass);


--
-- Name: moons moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moons ALTER COLUMN moon_id SET DEFAULT nextval('public.moons_moon_id_seq'::regclass);


--
-- Name: planets planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets ALTER COLUMN planet_id SET DEFAULT nextval('public.planets_planet_id_seq'::regclass);


--
-- Name: stars star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stars ALTER COLUMN star_id SET DEFAULT nextval('public.stars_star_id_seq'::regclass);


--
-- Data for Name: galaxies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxies VALUES (1, 'Milky Way', 'Spiral', 0);
INSERT INTO public.galaxies VALUES (2, 'Andromeda', 'Spiral', 2537000);


--
-- Data for Name: moons; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moons VALUES (1, 'Moon', 7.346e+22, 3474.2, 27.3, 1);


--
-- Data for Name: planets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planets VALUES (1, 'Earth', 5.97237e+24, 12742, 365.25, 1);
INSERT INTO public.planets VALUES (2, 'Mars', 6.4171e+23, 6779, 687, 1.524);


--
-- Data for Name: stars; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.stars VALUES (1, 'Sun', 1.989e+30, 1391016, 'G2V');


--
-- Name: galaxies_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxies_galaxy_id_seq', 2, true);


--
-- Name: moons_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moons_moon_id_seq', 1, true);


--
-- Name: planets_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planets_planet_id_seq', 2, true);


--
-- Name: stars_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.stars_star_id_seq', 1, true);


--
-- Name: galaxies galaxies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxies
    ADD CONSTRAINT galaxies_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moons moons_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moons
    ADD CONSTRAINT moons_pkey PRIMARY KEY (moon_id);


--
-- Name: planets planets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets
    ADD CONSTRAINT planets_pkey PRIMARY KEY (planet_id);


--
-- Name: stars stars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stars
    ADD CONSTRAINT stars_pkey PRIMARY KEY (star_id);


--
-- Name: moons moons_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moons
    ADD CONSTRAINT moons_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planets(planet_id);


--
-- PostgreSQL database dump complete
--

