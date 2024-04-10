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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_stars integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    distance_from_earth_in_millions_of_light_years integer,
    class character varying(30),
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    discovery_year numeric,
    planet_id integer,
    days_to_orbit integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    star_id integer,
    number_of_moons integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    type character varying(45),
    constellation character varying(30),
    light_years_from_earth integer,
    age_in_millions_of_years double precision,
    name character varying(30) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 3);
INSERT INTO public.constellation VALUES (2, 'Cancer', 7);
INSERT INTO public.constellation VALUES (3, 'Scorpio', 9);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 'Our home galaxy.', 0, 'Barred Spiral', true);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 'The nearest major galaxy to our own.', 3, 'Barred Spiral', false);
INSERT INTO public.galaxy VALUES ('Cartwheel', 3, 'A distance galaxy discovered in 1941.', 500, 'Lenticular Ring', false);
INSERT INTO public.galaxy VALUES ('Messier 81', 4, 'Galaxy harboring a supermassive black hole.', 12, 'Grand Design Spiral', false);
INSERT INTO public.galaxy VALUES ('Triangulum', 5, 'Thought to be a satellite of Andromeda.', 3, 'Spiral', false);
INSERT INTO public.galaxy VALUES ('Black Eye', 6, 'Named for a dark band of dust obscuring its brilliant center.', 17, 'Spiral', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('The Moon', 1, 0, 1, 1);
INSERT INTO public.moon VALUES ('1', 2, 2000, 1, 3);
INSERT INTO public.moon VALUES ('3', 3, 2000, 1, 3);
INSERT INTO public.moon VALUES ('4', 4, 2000, 1, 3);
INSERT INTO public.moon VALUES ('5', 5, 2000, 1, 3);
INSERT INTO public.moon VALUES ('6', 6, 2000, 1, 3);
INSERT INTO public.moon VALUES ('7', 7, 2000, 1, 3);
INSERT INTO public.moon VALUES ('8', 8, 2000, 1, 3);
INSERT INTO public.moon VALUES ('9', 9, 2000, 1, 3);
INSERT INTO public.moon VALUES ('10', 10, 2000, 1, 3);
INSERT INTO public.moon VALUES ('11', 11, 2000, 1, 3);
INSERT INTO public.moon VALUES ('12', 12, 2000, 1, 3);
INSERT INTO public.moon VALUES ('13', 13, 2000, 1, 3);
INSERT INTO public.moon VALUES ('14', 14, 2000, 1, 3);
INSERT INTO public.moon VALUES ('15', 15, 2000, 1, 3);
INSERT INTO public.moon VALUES ('16', 16, 2000, 1, 3);
INSERT INTO public.moon VALUES ('17', 17, 2000, 1, 3);
INSERT INTO public.moon VALUES ('18', 18, 2000, 1, 3);
INSERT INTO public.moon VALUES ('19', 19, 2000, 1, 3);
INSERT INTO public.moon VALUES ('20', 20, 2000, 1, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 1, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', false, 1, 3);
INSERT INTO public.planet VALUES (3, 'Venus', false, 1, 3);
INSERT INTO public.planet VALUES (4, 'Mars', false, 1, 3);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 1, 3);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 1, 3);
INSERT INTO public.planet VALUES (7, 'Neptune', false, 1, 3);
INSERT INTO public.planet VALUES (8, 'Pluto', false, 1, 3);
INSERT INTO public.planet VALUES (9, 'Pop Star', false, 1, 3);
INSERT INTO public.planet VALUES (10, 'Rock Star', false, 1, 3);
INSERT INTO public.planet VALUES (11, 'Aqua Star', false, 1, 3);
INSERT INTO public.planet VALUES (12, 'Neo Star);
', false, 1, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Yellow Dwarf', 'None', 1, 4600, 'Sun', 1);
INSERT INTO public.star VALUES (2, 'Red Supergiant', 'Orion', 400, 8, 'Betelgeuse', 1);
INSERT INTO public.star VALUES (3, 'Blue Giant', 'Orion', 250, 25, 'Bellatrix', 1);
INSERT INTO public.star VALUES (4, 'White Dwarf', 'Canis Major', 9, 228, 'Sirius', 1);
INSERT INTO public.star VALUES (5, 'Bright Giant', 'None', 500, 7, 'Gamma Andromadae', 2);
INSERT INTO public.star VALUES (6, 'Orange Giant', 'Cancer', 4, 5, 'Beta Cancri', 1);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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

