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
-- Name: age_in_millions_of_years; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.age_in_millions_of_years (
);


ALTER TABLE public.age_in_millions_of_years OWNER TO freecodecamp;

--
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: distance_from_earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.distance_from_earth (
);


ALTER TABLE public.distance_from_earth OWNER TO freecodecamp;

--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: has_life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.has_life (
);


ALTER TABLE public.has_life OWNER TO freecodecamp;

--
-- Name: is_spherical; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.is_spherical (
);


ALTER TABLE public.is_spherical OWNER TO freecodecamp;

--
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Data for Name: age_in_millions_of_years; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: distance_from_earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: has_life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: is_spherical; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- PostgreSQL database dump complete
--

