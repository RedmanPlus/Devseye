--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: vacancies_channel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vacancies_channel (
    id bigint NOT NULL,
    url character varying(50) NOT NULL
);


ALTER TABLE public.vacancies_channel OWNER TO postgres;

--
-- Name: vacancies_channel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vacancies_channel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vacancies_channel_id_seq OWNER TO postgres;

--
-- Name: vacancies_channel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vacancies_channel_id_seq OWNED BY public.vacancies_channel.id;


--
-- Name: vacancies_location; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vacancies_location (
    id bigint NOT NULL,
    country character varying(50) NOT NULL,
    city character varying(50) NOT NULL
);


ALTER TABLE public.vacancies_location OWNER TO postgres;

--
-- Name: vacancies_location_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vacancies_location_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vacancies_location_id_seq OWNER TO postgres;

--
-- Name: vacancies_location_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vacancies_location_id_seq OWNED BY public.vacancies_location.id;


--
-- Name: vacancies_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vacancies_role (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    group_id bigint NOT NULL
);


ALTER TABLE public.vacancies_role OWNER TO postgres;

--
-- Name: vacancies_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vacancies_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vacancies_role_id_seq OWNER TO postgres;

--
-- Name: vacancies_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vacancies_role_id_seq OWNED BY public.vacancies_role.id;


--
-- Name: vacancies_rolegroup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vacancies_rolegroup (
    id bigint NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.vacancies_rolegroup OWNER TO postgres;

--
-- Name: vacancies_rolegroup_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vacancies_rolegroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vacancies_rolegroup_id_seq OWNER TO postgres;

--
-- Name: vacancies_rolegroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vacancies_rolegroup_id_seq OWNED BY public.vacancies_rolegroup.id;


--
-- Name: vacancies_technology; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vacancies_technology (
    id bigint NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.vacancies_technology OWNER TO postgres;

--
-- Name: vacancies_technology_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vacancies_technology_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vacancies_technology_id_seq OWNER TO postgres;

--
-- Name: vacancies_technology_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vacancies_technology_id_seq OWNED BY public.vacancies_technology.id;


--
-- Name: vacancies_vacancy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vacancies_vacancy (
    id bigint NOT NULL,
    "desc" text NOT NULL,
    add_date timestamp with time zone NOT NULL,
    remote boolean NOT NULL,
    relocation boolean NOT NULL,
    employment character varying(7) NOT NULL,
    skill character varying(2) NOT NULL,
    tasks text NOT NULL,
    requirements text NOT NULL,
    contact character varying(200) NOT NULL,
    url character varying(50) NOT NULL,
    channel_id_id bigint NOT NULL,
    location_id bigint NOT NULL,
    role_id bigint NOT NULL,
    message_id integer,
    max_salary integer,
    min_salary integer NOT NULL,
    CONSTRAINT vacancies_vacancy_max_salary_check CHECK ((max_salary >= 0)),
    CONSTRAINT vacancies_vacancy_message_id_check CHECK ((message_id >= 0)),
    CONSTRAINT vacancies_vacancy_min_salary_check CHECK ((min_salary >= 0))
);


ALTER TABLE public.vacancies_vacancy OWNER TO postgres;

--
-- Name: vacancies_vacancy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vacancies_vacancy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vacancies_vacancy_id_seq OWNER TO postgres;

--
-- Name: vacancies_vacancy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vacancies_vacancy_id_seq OWNED BY public.vacancies_vacancy.id;


--
-- Name: vacancies_vacancy_technologies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vacancies_vacancy_technologies (
    id bigint NOT NULL,
    vacancy_id bigint NOT NULL,
    technology_id bigint NOT NULL
);


ALTER TABLE public.vacancies_vacancy_technologies OWNER TO postgres;

--
-- Name: vacancies_vacancy_technologies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vacancies_vacancy_technologies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vacancies_vacancy_technologies_id_seq OWNER TO postgres;

--
-- Name: vacancies_vacancy_technologies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vacancies_vacancy_technologies_id_seq OWNED BY public.vacancies_vacancy_technologies.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: vacancies_channel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_channel ALTER COLUMN id SET DEFAULT nextval('public.vacancies_channel_id_seq'::regclass);


--
-- Name: vacancies_location id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_location ALTER COLUMN id SET DEFAULT nextval('public.vacancies_location_id_seq'::regclass);


--
-- Name: vacancies_role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_role ALTER COLUMN id SET DEFAULT nextval('public.vacancies_role_id_seq'::regclass);


--
-- Name: vacancies_rolegroup id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_rolegroup ALTER COLUMN id SET DEFAULT nextval('public.vacancies_rolegroup_id_seq'::regclass);


--
-- Name: vacancies_technology id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_technology ALTER COLUMN id SET DEFAULT nextval('public.vacancies_technology_id_seq'::regclass);


--
-- Name: vacancies_vacancy id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_vacancy ALTER COLUMN id SET DEFAULT nextval('public.vacancies_vacancy_id_seq'::regclass);


--
-- Name: vacancies_vacancy_technologies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_vacancy_technologies ALTER COLUMN id SET DEFAULT nextval('public.vacancies_vacancy_technologies_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add channel	7	add_channel
26	Can change channel	7	change_channel
27	Can delete channel	7	delete_channel
28	Can view channel	7	view_channel
29	Can add ╨Ы╨╛╨║╨░╤Ж╨╕╤П	8	add_location
30	Can change ╨Ы╨╛╨║╨░╤Ж╨╕╤П	8	change_location
31	Can delete ╨Ы╨╛╨║╨░╤Ж╨╕╤П	8	delete_location
32	Can view ╨Ы╨╛╨║╨░╤Ж╨╕╤П	8	view_location
33	Can add role	9	add_role
34	Can change role	9	change_role
35	Can delete role	9	delete_role
36	Can view role	9	view_role
37	Can add role group	10	add_rolegroup
38	Can change role group	10	change_rolegroup
39	Can delete role group	10	delete_rolegroup
40	Can view role group	10	view_rolegroup
41	Can add ╨в╨╡╤Е╨╜╨╛╨╗╨╛╨│╨╕╤П	11	add_technology
42	Can change ╨в╨╡╤Е╨╜╨╛╨╗╨╛╨│╨╕╤П	11	change_technology
43	Can delete ╨в╨╡╤Е╨╜╨╛╨╗╨╛╨│╨╕╤П	11	delete_technology
44	Can view ╨в╨╡╤Е╨╜╨╛╨╗╨╛╨│╨╕╤П	11	view_technology
45	Can add ╨Т╨░╨║╨░╨╜╤Б╨╕╤П	12	add_vacancy
46	Can change ╨Т╨░╨║╨░╨╜╤Б╨╕╤П	12	change_vacancy
47	Can delete ╨Т╨░╨║╨░╨╜╤Б╨╕╤П	12	delete_vacancy
48	Can view ╨Т╨░╨║╨░╨╜╤Б╨╕╤П	12	view_vacancy
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$hm8MtJXUrYeaYfoHGhmwYv$E2EB9XK2O0WR0L8GMor5wZK7SSot1VL9QtjP7pYmhB4=	2022-06-05 17:18:35.550295+03	t	arsenychebyshev			arseny.chebyshev@gmail.com	t	t	2022-06-05 17:18:23.372148+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-06-05 18:25:40.96798+03	1	Channel object (1)	1	[{"added": {}}]	7	1
2	2022-06-05 18:25:44.028034+03	2	Channel object (2)	1	[{"added": {}}]	7	1
3	2022-06-05 18:25:46.150639+03	3	Channel object (3)	1	[{"added": {}}]	7	1
4	2022-06-05 18:46:52.431823+03	1	╨а╨░╨╖╤А╨░╨▒╨╛╤В╨║╨░ ╨┐╤А╨╛╨│╤А╨░╨╝╨╝╨╜╨╛╨│╨╛ ╨╛╨▒╨╡╤Б╨┐╨╡╤З╨╡╨╜╨╕╤П	1	[{"added": {}}]	10	1
5	2022-06-05 18:47:04.488174+03	2	╨Ъ╨╛╨╜╤В╤А╨╛╨╗╤М ╨║╨░╤З╨╡╤Б╤В╨▓╨░, ╤В╨╡╤Б╤В╨╕╤А╨╛╨▓╨░╨╜╨╕╨╡	1	[{"added": {}}]	10	1
6	2022-06-05 18:47:11.859597+03	3	╨Р╨┤╨╝╨╕╨╜╨╕╤Б╤В╤А╨╕╤А╨╛╨▓╨░╨╜╨╕╨╡	1	[{"added": {}}]	10	1
7	2022-06-05 18:47:25.497144+03	4	╨Ь╨╡╨╜╨╡╨┤╨╢╨╝╨╡╨╜╤В	1	[{"added": {}}]	10	1
8	2022-06-05 18:47:39.571785+03	5	╨Р╨╜╨░╨╗╨╕╤В╨╕╨║╨░	1	[{"added": {}}]	10	1
9	2022-06-05 18:47:55.111767+03	6	HR	1	[{"added": {}}]	10	1
10	2022-06-05 18:48:11.568631+03	7	╨Я╨╛╨┤╨┤╨╡╤А╨╢╨║╨░	1	[{"added": {}}]	10	1
11	2022-06-05 18:48:39.063936+03	8	╨Ш╨╜╤Д╨╛╤А╨╝╨░╤Ж╨╕╨╛╨╜╨╜╨░╤П ╨▒╨╡╨╖╨╛╨┐╨░╤Б╨╜╨╛╤Б╤В╤М	1	[{"added": {}}]	10	1
12	2022-06-05 18:49:14.873836+03	1	╨С╨╡╨║╨╡╨╜╨┤-╤А╨░╨╖╤А╨░╨▒╨╛╤В╤З╨╕╨║	1	[{"added": {}}]	9	1
13	2022-06-05 18:49:25.126775+03	2	╨д╤А╨╛╨╜╤В╨╡╨╜╨┤-╤А╨░╨╖╤А╨░╨▒╨╛╤В╤З╨╕╨║	1	[{"added": {}}]	9	1
14	2022-06-05 18:49:37.611709+03	3	╨д╤Г╨╗╤Б╤В╨╡╨║-╤А╨░╨╖╤А╨░╨▒╨╛╤В╤З╨╕╨║	1	[{"added": {}}]	9	1
15	2022-06-05 18:49:57.19968+03	4	╨Т╨╡╨▒-╤А╨░╨╖╤А╨░╨▒╨╛╤В╤З╨╕╨║	1	[{"added": {}}]	9	1
16	2022-06-05 18:50:09.533935+03	5	╨а╨░╨╖╤А╨░╨▒╨╛╤В╤З╨╕╨║ ╨╝╨╛╨▒╨╕╨╗╤М╨╜╤Л╤Е ╨┐╤А╨╕╨╗╨╛╨╢╨╡╨╜╨╕╨╣	1	[{"added": {}}]	9	1
17	2022-06-05 18:50:24.688664+03	6	╨а╨░╨╖╤А╨░╨▒╨╛╤В╤З╨╕╨║ ╨╕╨│╤А	1	[{"added": {}}]	9	1
18	2022-06-05 18:50:44.495556+03	7	╨а╨░╨╖╤А╨░╨▒╨╛╤В╤З╨╕╨║ ╨┤╨╡╤Б╨║╤В╨╛╨┐-╨┐╤А╨╕╨╗╨╛╨╢╨╡╨╜╨╕╨╣	1	[{"added": {}}]	9	1
19	2022-06-05 18:51:07.3007+03	8	QA-╨╕╨╜╨╢╨╡╨╜╨╡╤А	1	[{"added": {}}]	9	1
20	2022-06-05 18:51:43.151868+03	9	╨Ш╨╜╨╢╨╡╨╜╨╡╤А ╨┐╨╛ ╨░╨▓╤В╨╛╨╝╨░╤В╨╕╤З╨╡╤Б╨║╨╛╨╝╤Г ╤В╨╡╤Б╤В╨╕╤А╨╛╨▓╨░╨╜╨╕╤О	1	[{"added": {}}]	9	1
21	2022-06-05 18:52:03.119206+03	10	DevOps - ╨╕╨╜╨╢╨╡╨╜╨╡╤А	1	[{"added": {}}]	9	1
22	2022-06-05 18:52:12.812872+03	11	╨б╨╕╤Б╤В╨╡╨╝╨╜╤Л╨╣ ╨░╨┤╨╝╨╕╨╜╨╕╤Б╤В╤А╨░╤В╨╛╤А	1	[{"added": {}}]	9	1
23	2022-06-05 18:52:31.287633+03	12	Product Manager	1	[{"added": {}}]	9	1
24	2022-06-05 18:52:41.620818+03	13	Project Manager	1	[{"added": {}}]	9	1
25	2022-06-05 18:52:59.768599+03	14	Data-Scientist	1	[{"added": {}}]	9	1
26	2022-06-05 18:53:27.335398+03	15	Data Analyst	1	[{"added": {}}]	9	1
27	2022-06-05 18:53:44.615507+03	16	╨Ь╨╡╨╜╨╡╨┤╨╢╨╡╤А ╨┐╨╛ ╨┐╨╡╤А╤Б╨╛╨╜╨░╨╗╤Г	1	[{"added": {}}]	9	1
28	2022-06-05 18:54:00.794536+03	17	╨Ь╨╡╨╜╨╡╨┤╨╢╨╡╤А ╨┐╨╛ ╨╜╨░╨╣╨╝╤Г	1	[{"added": {}}]	9	1
29	2022-06-05 18:54:29.594016+03	18	╨б╨┐╨╡╤Ж╨╕╨░╨╗╨╕╤Б╤В ╤В╨╡╤Е╨╜╨╕╤З╨╡╤Б╨║╨╛╨╣ ╨┐╨╛╨┤╨┤╨╡╤А╨╢╨║╨╕	1	[{"added": {}}]	9	1
30	2022-06-05 18:54:51.009609+03	19	╨б╨┐╨╡╤Ж╨╕╨░╨╗╨╕╤Б╤В ╨┐╨╛ ╨╕╨╜╤Д╨╛╤А╨╝╨░╤Ж╨╕╨╛╨╜╨╜╨╛╨╣ ╨▒╨╡╨╖╨╛╨┐╨░╤Б╨╜╨╛╤Б╤В╨╕	1	[{"added": {}}]	9	1
31	2022-06-05 18:54:56.289139+03	20	╨Я╨╡╨╜╤В╨╡╤Б╤В╨╡╤А	1	[{"added": {}}]	9	1
32	2022-06-05 18:55:11.566554+03	1	╨Ь╨╛╤Б╨║╨▓╨░	1	[{"added": {}}]	8	1
33	2022-06-05 18:58:58.393365+03	2	╨б╨░╨╜╨║╤В-╨Я╨╡╤В╨╡╤А╨▒╤Г╤А╨│	1	[{"added": {}}]	8	1
34	2022-06-05 18:59:09.923543+03	3	╨Э╤М╤О-╨Щ╨╛╤А╨║	1	[{"added": {}}]	8	1
35	2022-06-05 18:59:17.799584+03	4	╨С╨╡╤А╨╗╨╕╨╜	1	[{"added": {}}]	8	1
36	2022-06-05 18:59:48.913086+03	1	Python	1	[{"added": {}}]	11	1
37	2022-06-05 19:00:02.218748+03	2	JavaScript	1	[{"added": {}}]	11	1
38	2022-06-05 19:00:05.562656+03	3	React	1	[{"added": {}}]	11	1
39	2022-06-05 19:00:20.995014+03	4	Java	1	[{"added": {}}]	11	1
40	2022-06-05 19:00:32.837516+03	5	C++	1	[{"added": {}}]	11	1
41	2022-06-05 19:00:35.937391+03	6	Django	1	[{"added": {}}]	11	1
42	2022-06-05 19:00:38.468229+03	7	Flask	1	[{"added": {}}]	11	1
43	2022-06-05 19:00:50.345744+03	8	SQL	1	[{"added": {}}]	11	1
44	2022-06-05 19:02:59.86154+03	9	Tornado	1	[{"added": {}}]	11	1
45	2022-06-05 19:09:26.875514+03	1	╨в╨╡╤В╤А╨╕╨║╨░ - ╤Н╤В╨╛ ╨╛╨╜╨╗╨░╨╣╨╜-╨┐╨╗╨░╤В╤Д╨╛╤А╨╝╨░, ╨╜╨░ ╨║╨╛╤В╨╛╤А╨╛╨╣ ╨╝╨╛╨╢╨╜╨╛ ╨┐╨╛╨┤╨│╨╛╤В╨╛╨▓╨╕╤В╤М╤Б╤П ╨║ ╤Н╨║╨╖╨░╨╝╨╡╨╜╨░╨╝, ╨╛╨╗╨╕╨╝╨┐╨╕╨░╨┤╨╡, ╨╕╨╖╤Г╤З╨╕╤В╤М ╨╕╨╜╨╛╤Б╤В╤А╨░╨╜╨╜╤Л╨╣ ╤П╨╖╤Л╨║ ╨╕╨╗╨╕ ╨┐╨╛╨┤╤В╤П╨╜╤Г╤В╤М ╨╖╨╜╨░╨╜╨╕╤П ╨▓╨╝╨╡╤Б╤В╨╡ ╤Б ╨┐╤А╨╛╤Д╨╡╤Б╤Б╨╕╨╛╨╜╨░╨╗╤М╨╜╤Л╨╝╨╕ ╤А╨╡╨┐╨╡╤В╨╕╤В╨╛╤А╨░╨╝╨╕	1	[{"added": {}}]	12	1
46	2022-06-05 19:10:33.297466+03	10	git	1	[{"added": {}}]	11	1
47	2022-06-05 19:12:22.916369+03	2	UAB Softeka	1	[{"added": {}}]	12	1
48	2022-06-05 19:13:39.431412+03	11	React Native	1	[{"added": {}}]	11	1
49	2022-06-05 19:20:19.068243+03	5	╨Э╨╡ ╤Г╨║╨░╨╖╨░╨╜╨░	1	[{"added": {}}]	8	1
50	2022-06-05 19:20:25.341133+03	5	GOGYM (https://www.gogym.fit/) тАУ ╤Н╤В╨╛ ╨╕╨╜╨╜╨╛╨▓╨░╤Ж╨╕╨╛╨╜╨╜╤Л╨╣ ╤Д╨╕╤В╨╜╨╡╤Б-╨╝╨░╤А╨║╨╡╤В╨┐╨╗╨╡╨╣╤Б ╤Б ╨▓╨╛╨╖╨╝╨╛╨╢╨╜╨╛╤Б╤В╤М╤О ╨┐╨╛╨╝╨╕╨╜╤Г╤В╨╜╨╛╨╣ ╨╛╨┐╨╗╨░╤В╤Л ╤В╤А╨╡╨╜╨╕╤А╨╛╨▓╨╛╨║. ╨Э╨░ ╨┤╨░╨╜╨╜╤Л╨╣ ╨╝╨╛╨╝╨╡╨╜╤В ╨║ ╤Б╨╡╤А╨▓╨╕╤Б╤Г ╨┐╨╛╨┤╨║╨╗╤О╤З╨╡╨╜╨╛ ╨▒╨╛╨╗╨╡╨╡ ╤З╨╡╨╝ 250 ╨┐╨░╤А╤В╨╜╨╡╤А╨╛╨▓ ╨▓ 27 ╨│╨╛╤А╨╛╨┤╨░╤Е ╨а╨╛╤Б╤Б╨╕╨╕	1	[{"added": {}}]	12	1
51	2022-06-05 19:26:15.086117+03	3	JAVA	3		7	1
52	2022-06-05 19:26:15.090115+03	2	REACT	3		7	1
53	2022-06-05 19:26:15.090115+03	1	PY	3		7	1
54	2022-06-05 19:26:19.240707+03	4	job_python	1	[{"added": {}}]	7	1
55	2022-06-05 19:26:21.580061+03	5	job_react	1	[{"added": {}}]	7	1
56	2022-06-05 19:26:23.364361+03	6	job_javadevs	1	[{"added": {}}]	7	1
57	2022-06-05 19:29:42.383871+03	6	╨Э╨╛╨▓╨╛╤Б╨╕╨▒╨╕╤А╤Б╨║	1	[{"added": {}}]	8	1
58	2022-06-05 19:30:31.559382+03	6	╨Я╤А╨╕╨▓╨╡╤В! ╨Ъ╨╛╨╝╨░╨╜╨┤╨░ Data Science ╨▓ 2╨У╨Ш╨б ╤А╨╡╤И╨░╨╡╤В ╨┐╤А╨╛╨┤╤Г╨║╤В╨╛╨▓╤Л╨╡ ╨╖╨░╨┤╨░╤З╨╕ ╤Б ╨┐╨╛╨╝╨╛╤Й╤М╤О ╨╝╨░╤И╨╕╨╜╨╜╨╛╨│╨╛ ╨╛╨▒╤Г╤З╨╡╨╜╨╕╤П. ╨Ь╤Л ╤А╨░╨╖╨▓╨╕╨▓╨░╨╡╨╝ ╨░╨║╤В╤Г╨░╨╗╨╕╨╖╨░╤Ж╨╕╤О ╨┤╨╛╤А╨╛╨╢╨╜╨╛╨╣ ╨╕╨╜╤Д╤А╨░╤Б╤В╤А╤Г╨║╤В╤Г╤А╤Л (╨╖╨╜╨░╨║╨╕, ╤Б╨▓╨╡╤В╨╛╤Д╨╛╤А╤Л, ╨┤╨╛╤А╨╛╨╢╨╜╨╛╨╡ ╨┐╨╛╨║╤А╤Л╤В╨╕╨╡), ╤А╨░╤Б╨┐╨╛╨╖╨╜╨░╨▓╨░╨╜╨╕╨╡ ╨╛╨▒╤К╨╡╨║	1	[{"added": {}}]	12	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	vacancies	channel
8	vacancies	location
9	vacancies	role
10	vacancies	rolegroup
11	vacancies	technology
12	vacancies	vacancy
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-06-05 16:43:27.245703+03
2	auth	0001_initial	2022-06-05 16:43:28.179284+03
3	admin	0001_initial	2022-06-05 16:43:28.702689+03
4	admin	0002_logentry_remove_auto_add	2022-06-05 16:43:28.738775+03
5	admin	0003_logentry_add_action_flag_choices	2022-06-05 16:43:28.757774+03
6	contenttypes	0002_remove_content_type_name	2022-06-05 16:43:28.843849+03
7	auth	0002_alter_permission_name_max_length	2022-06-05 16:43:28.86513+03
8	auth	0003_alter_user_email_max_length	2022-06-05 16:43:28.874128+03
9	auth	0004_alter_user_username_opts	2022-06-05 16:43:28.880125+03
10	auth	0005_alter_user_last_login_null	2022-06-05 16:43:28.887126+03
11	auth	0006_require_contenttypes_0002	2022-06-05 16:43:28.889127+03
12	auth	0007_alter_validators_add_error_messages	2022-06-05 16:43:28.896126+03
13	auth	0008_alter_user_username_max_length	2022-06-05 16:43:29.032546+03
14	auth	0009_alter_user_last_name_max_length	2022-06-05 16:43:29.051532+03
15	auth	0010_alter_group_name_max_length	2022-06-05 16:43:29.071323+03
16	auth	0011_update_proxy_permissions	2022-06-05 16:43:29.081769+03
17	auth	0012_alter_user_first_name_max_length	2022-06-05 16:43:29.10177+03
18	sessions	0001_initial	2022-06-05 16:43:29.242958+03
19	vacancies	0001_initial	2022-06-05 16:43:30.159747+03
20	vacancies	0002_alter_vacancy_message_id	2022-06-05 16:54:33.0268+03
21	vacancies	0002_remove_vacancy_message_id	2022-06-05 16:59:16.126484+03
22	vacancies	0003_vacancy_message_id	2022-06-05 17:43:59.930094+03
23	vacancies	0004_alter_role_options_alter_rolegroup_options_and_more	2022-06-05 18:10:58.967504+03
24	vacancies	0005_alter_channel_options_alter_channel_url	2022-06-05 18:14:08.935908+03
25	vacancies	0006_alter_vacancy_channel_id_alter_vacancy_url	2022-06-05 18:29:39.884072+03
26	vacancies	0007_alter_vacancy_role	2022-06-05 18:30:34.246758+03
27	vacancies	0008_alter_channel_url_alter_location_city_and_more	2022-06-05 18:45:31.381755+03
28	vacancies	0009_alter_location_country_and_more	2022-06-05 18:58:46.535924+03
29	vacancies	0010_alter_channel_url_alter_vacancy_employment_and_more	2022-06-05 19:23:35.567352+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
snzy0poa971iknywqbntijjfl6xju4r3	.eJxVjDkOwjAUBe_iGll2nO-Fkp4zWH-xcAA5UpxUiLtDpBTQvpl5L5VxW2veelnyJOqsrDr9boT8KG0Hcsd2mzXPbV0m0ruiD9r1dZbyvBzu30HFXr-1M2DJCYuP1hGMwQ4OMATgAJEp2pgIPKQC6IBHDtGDEUMY02C8QfX-ALgINrI:1nxr5P:6YuuOAM-KZoq5B7dbWfYVdO_Y1JdYwOVR_LT3hO0v9M	2022-06-19 17:18:35.559397+03
\.


--
-- Data for Name: vacancies_channel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vacancies_channel (id, url) FROM stdin;
4	job_python
5	job_react
6	job_javadevs
\.


--
-- Data for Name: vacancies_location; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vacancies_location (id, country, city) FROM stdin;
1	╨а╨╛╤Б╤Б╨╕╤П	╨Ь╨╛╤Б╨║╨▓╨░
2	╨а╨╛╤Б╤Б╨╕╤П	╨б╨░╨╜╨║╤В-╨Я╨╡╤В╨╡╤А╨▒╤Г╤А╨│
3	╨б╨и╨Р	╨Э╤М╤О-╨Щ╨╛╤А╨║
4	╨У╨╡╤А╨╝╨░╨╜╨╕╤П	╨С╨╡╤А╨╗╨╕╨╜
5	╨Э╨╡ ╤Г╨║╨░╨╖╨░╨╜╨░	╨Э╨╡ ╤Г╨║╨░╨╖╨░╨╜╨░
6	╨а╨╛╤Б╤Б╨╕╤П	╨Э╨╛╨▓╨╛╤Б╨╕╨▒╨╕╤А╤Б╨║
\.


--
-- Data for Name: vacancies_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vacancies_role (id, name, group_id) FROM stdin;
1	╨С╨╡╨║╨╡╨╜╨┤-╤А╨░╨╖╤А╨░╨▒╨╛╤В╤З╨╕╨║	1
2	╨д╤А╨╛╨╜╤В╨╡╨╜╨┤-╤А╨░╨╖╤А╨░╨▒╨╛╤В╤З╨╕╨║	1
3	╨д╤Г╨╗╤Б╤В╨╡╨║-╤А╨░╨╖╤А╨░╨▒╨╛╤В╤З╨╕╨║	1
4	╨Т╨╡╨▒-╤А╨░╨╖╤А╨░╨▒╨╛╤В╤З╨╕╨║	1
5	╨а╨░╨╖╤А╨░╨▒╨╛╤В╤З╨╕╨║ ╨╝╨╛╨▒╨╕╨╗╤М╨╜╤Л╤Е ╨┐╤А╨╕╨╗╨╛╨╢╨╡╨╜╨╕╨╣	1
6	╨а╨░╨╖╤А╨░╨▒╨╛╤В╤З╨╕╨║ ╨╕╨│╤А	1
7	╨а╨░╨╖╤А╨░╨▒╨╛╤В╤З╨╕╨║ ╨┤╨╡╤Б╨║╤В╨╛╨┐-╨┐╤А╨╕╨╗╨╛╨╢╨╡╨╜╨╕╨╣	1
8	QA-╨╕╨╜╨╢╨╡╨╜╨╡╤А	2
9	╨Ш╨╜╨╢╨╡╨╜╨╡╤А ╨┐╨╛ ╨░╨▓╤В╨╛╨╝╨░╤В╨╕╤З╨╡╤Б╨║╨╛╨╝╤Г ╤В╨╡╤Б╤В╨╕╤А╨╛╨▓╨░╨╜╨╕╤О	2
10	DevOps - ╨╕╨╜╨╢╨╡╨╜╨╡╤А	3
11	╨б╨╕╤Б╤В╨╡╨╝╨╜╤Л╨╣ ╨░╨┤╨╝╨╕╨╜╨╕╤Б╤В╤А╨░╤В╨╛╤А	3
12	Product Manager	4
13	Project Manager	4
14	Data-Scientist	5
15	Data Analyst	5
16	╨Ь╨╡╨╜╨╡╨┤╨╢╨╡╤А ╨┐╨╛ ╨┐╨╡╤А╤Б╨╛╨╜╨░╨╗╤Г	6
17	╨Ь╨╡╨╜╨╡╨┤╨╢╨╡╤А ╨┐╨╛ ╨╜╨░╨╣╨╝╤Г	6
18	╨б╨┐╨╡╤Ж╨╕╨░╨╗╨╕╤Б╤В ╤В╨╡╤Е╨╜╨╕╤З╨╡╤Б╨║╨╛╨╣ ╨┐╨╛╨┤╨┤╨╡╤А╨╢╨║╨╕	7
19	╨б╨┐╨╡╤Ж╨╕╨░╨╗╨╕╤Б╤В ╨┐╨╛ ╨╕╨╜╤Д╨╛╤А╨╝╨░╤Ж╨╕╨╛╨╜╨╜╨╛╨╣ ╨▒╨╡╨╖╨╛╨┐╨░╤Б╨╜╨╛╤Б╤В╨╕	8
20	╨Я╨╡╨╜╤В╨╡╤Б╤В╨╡╤А	8
\.


--
-- Data for Name: vacancies_rolegroup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vacancies_rolegroup (id, name) FROM stdin;
1	╨а╨░╨╖╤А╨░╨▒╨╛╤В╨║╨░ ╨┐╤А╨╛╨│╤А╨░╨╝╨╝╨╜╨╛╨│╨╛ ╨╛╨▒╨╡╤Б╨┐╨╡╤З╨╡╨╜╨╕╤П
2	╨Ъ╨╛╨╜╤В╤А╨╛╨╗╤М ╨║╨░╤З╨╡╤Б╤В╨▓╨░, ╤В╨╡╤Б╤В╨╕╤А╨╛╨▓╨░╨╜╨╕╨╡
3	╨Р╨┤╨╝╨╕╨╜╨╕╤Б╤В╤А╨╕╤А╨╛╨▓╨░╨╜╨╕╨╡
4	╨Ь╨╡╨╜╨╡╨┤╨╢╨╝╨╡╨╜╤В
5	╨Р╨╜╨░╨╗╨╕╤В╨╕╨║╨░
6	HR
7	╨Я╨╛╨┤╨┤╨╡╤А╨╢╨║╨░
8	╨Ш╨╜╤Д╨╛╤А╨╝╨░╤Ж╨╕╨╛╨╜╨╜╨░╤П ╨▒╨╡╨╖╨╛╨┐╨░╤Б╨╜╨╛╤Б╤В╤М
\.


--
-- Data for Name: vacancies_technology; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vacancies_technology (id, name) FROM stdin;
1	Python
2	JavaScript
3	React
4	Java
5	C++
6	Django
7	Flask
8	SQL
9	Tornado
10	git
11	React Native
\.


--
-- Data for Name: vacancies_vacancy; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vacancies_vacancy (id, "desc", add_date, remote, relocation, employment, skill, tasks, requirements, contact, url, channel_id_id, location_id, role_id, message_id, max_salary, min_salary) FROM stdin;
6	╨Я╤А╨╕╨▓╨╡╤В! ╨Ъ╨╛╨╝╨░╨╜╨┤╨░ Data Science ╨▓ 2╨У╨Ш╨б ╤А╨╡╤И╨░╨╡╤В ╨┐╤А╨╛╨┤╤Г╨║╤В╨╛╨▓╤Л╨╡ ╨╖╨░╨┤╨░╤З╨╕ ╤Б ╨┐╨╛╨╝╨╛╤Й╤М╤О ╨╝╨░╤И╨╕╨╜╨╜╨╛╨│╨╛ ╨╛╨▒╤Г╤З╨╡╨╜╨╕╤П. ╨Ь╤Л ╤А╨░╨╖╨▓╨╕╨▓╨░╨╡╨╝ ╨░╨║╤В╤Г╨░╨╗╨╕╨╖╨░╤Ж╨╕╤О ╨┤╨╛╤А╨╛╨╢╨╜╨╛╨╣ ╨╕╨╜╤Д╤А╨░╤Б╤В╤А╤Г╨║╤В╤Г╤А╤Л (╨╖╨╜╨░╨║╨╕, ╤Б╨▓╨╡╤В╨╛╤Д╨╛╤А╤Л, ╨┤╨╛╤А╨╛╨╢╨╜╨╛╨╡ ╨┐╨╛╨║╤А╤Л╤В╨╕╨╡), ╤А╨░╤Б╨┐╨╛╨╖╨╜╨░╨▓╨░╨╜╨╕╨╡ ╨╛╨▒╤К╨╡╨║╤В╨╛╨▓ ╤Б╨╛ ╤Б╨┐╤Г╤В╨╜╨╕╨║╨╛╨▓╤Л╤Е ╤Б╨╜╨╕╨╝╨║╨╛╨▓ ╨╕ ╨╝╨╜╨╛╨│╨╛ ╨╡╤Й╤С ╤З╨╡╨│╨╛ ╨┐╨╛╨╝╨╡╨╜╤М╤И╨╡	2022-06-05 19:30:31.554382+03	t	t	FULLDAY	MD	- ╨┐╨╕╤Б╨░╤В╤М ╨╜╨╛╨▓╤Л╨╡ ╨╕ ╨┐╨╛╨┤╨┤╨╡╤А╨╢╨╕╨▓╨░╤В╤М ╤Б╤Г╤Й╨╡╤Б╤В╨▓╤Г╤О╤Й╨╕╨╡ ╨▒╤Н╨║╨╡╨╜╨┤╤Л ╨╜╨░ Python\r\n- ╤А╨░╨╖╨▒╨╕╤А╨░╤В╤М╤Б╤П ╨▓ ╨┤╨░╨╜╨╜╤Л╤Е ╨╕ ╨┐╤А╨╛╤Ж╨╡╤Б╤Б╨░╤Е, ╨║╨╛╤В╨╛╤А╤Л╨╡ ╤Н╤В╨╕ ╨┤╨░╨╜╨╜╤Л╨╡ ╨│╨╡╨╜╨╡╤А╨╕╤А╤Г╤О╤В\r\n- ╨┐╨╕╤Б╨░╤В╤М ╨░╨▓╤В╨╛╤В╨╡╤Б╤В╤Л, ╨┤╨╡╨┐╨╗╨╛╨╕╤В╤М ╨╕ ╨╝╨╛╨╜╨╕╤В╨╛╤А╨╕╤В╤М ╤Б╨▓╨╛╨╣ ╨║╨╛╨┤	- ╤А╨░╨╖╨▒╨╕╤А╨░╨╡╤И╤М╤Б╤П ╨▓ ╨╝╨╡╤В╤А╨╕╨║╨░╤Е, ╨║╨╛╤В╨╛╤А╤Л╨╡ ╨╕╤Б╨┐╨╛╨╗╤М╨╖╤Г╤О╤В ╨▓ ML\r\n- ╤А╨░╨▒╨╛╤В╨░╨╗(╨░) ╤Б ╨╛╤З╨╡╤А╨╡╨┤╤П╨╝╨╕ RabbitMQ / Kafka\r\n- ╤А╨░╨▒╨╛╤В╨░╨╗(╨░) ╤Б ╤А╨░╨╖╨╜╤Л╨╝╨╕ ╨▒╨░╨╖╨░╨╝╨╕ ╨┤╨░╨╜╨╜╤Л╤Е ╨╕ ╨╝╨╛╨╢╨╡╤И╤М ╨▓╤Л╨▒╤А╨░╤В╤М ╨┐╨╛╨┤╤Е╨╛╨┤╤П╤Й╤Г╤О ╨┤╨╗╤П ╨╖╨░╨┤╨░╤З╨╕\r\n- ╨╕╤Б╨┐╨╛╨╗╤М╨╖╤Г╨╡╤И╤М Docker, K8s ╨╕ CI ╨┤╨╗╤П ╨┐╤А╨╛╨╡╨║╤В╨╛╨▓\r\n- ╨╗╤О╨▒╨╕╤И╤М ╨┐╨╕╤Б╨░╤В╤М ╨║╤А╨░╤Б╨╕╨▓╤Л╨╣ ╨║╨╛╨┤	https://idontknow.com	privet-komanda-data-science-v-2gis-reshaet-produkt	4	6	1	1470	150000	150000
\.


--
-- Data for Name: vacancies_vacancy_technologies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vacancies_vacancy_technologies (id, vacancy_id, technology_id) FROM stdin;
9	6	1
10	6	10
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 58, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 29, true);


--
-- Name: vacancies_channel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vacancies_channel_id_seq', 6, true);


--
-- Name: vacancies_location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vacancies_location_id_seq', 6, true);


--
-- Name: vacancies_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vacancies_role_id_seq', 20, true);


--
-- Name: vacancies_rolegroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vacancies_rolegroup_id_seq', 8, true);


--
-- Name: vacancies_technology_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vacancies_technology_id_seq', 11, true);


--
-- Name: vacancies_vacancy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vacancies_vacancy_id_seq', 6, true);


--
-- Name: vacancies_vacancy_technologies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vacancies_vacancy_technologies_id_seq', 10, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: vacancies_channel vacancies_channel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_channel
    ADD CONSTRAINT vacancies_channel_pkey PRIMARY KEY (id);


--
-- Name: vacancies_channel vacancies_channel_url_28e5502c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_channel
    ADD CONSTRAINT vacancies_channel_url_28e5502c_uniq UNIQUE (url);


--
-- Name: vacancies_location vacancies_location_city_3360c7b4_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_location
    ADD CONSTRAINT vacancies_location_city_3360c7b4_uniq UNIQUE (city);


--
-- Name: vacancies_location vacancies_location_country_city_d35e7a2f_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_location
    ADD CONSTRAINT vacancies_location_country_city_d35e7a2f_uniq UNIQUE (country, city);


--
-- Name: vacancies_location vacancies_location_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_location
    ADD CONSTRAINT vacancies_location_pkey PRIMARY KEY (id);


--
-- Name: vacancies_role vacancies_role_name_f9eb3c74_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_role
    ADD CONSTRAINT vacancies_role_name_f9eb3c74_uniq UNIQUE (name);


--
-- Name: vacancies_role vacancies_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_role
    ADD CONSTRAINT vacancies_role_pkey PRIMARY KEY (id);


--
-- Name: vacancies_rolegroup vacancies_rolegroup_name_db16f3dc_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_rolegroup
    ADD CONSTRAINT vacancies_rolegroup_name_db16f3dc_uniq UNIQUE (name);


--
-- Name: vacancies_rolegroup vacancies_rolegroup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_rolegroup
    ADD CONSTRAINT vacancies_rolegroup_pkey PRIMARY KEY (id);


--
-- Name: vacancies_technology vacancies_technology_name_89ede788_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_technology
    ADD CONSTRAINT vacancies_technology_name_89ede788_uniq UNIQUE (name);


--
-- Name: vacancies_technology vacancies_technology_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_technology
    ADD CONSTRAINT vacancies_technology_pkey PRIMARY KEY (id);


--
-- Name: vacancies_vacancy vacancies_vacancy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_vacancy
    ADD CONSTRAINT vacancies_vacancy_pkey PRIMARY KEY (id);


--
-- Name: vacancies_vacancy_technologies vacancies_vacancy_techno_vacancy_id_technology_id_434cb4c1_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_vacancy_technologies
    ADD CONSTRAINT vacancies_vacancy_techno_vacancy_id_technology_id_434cb4c1_uniq UNIQUE (vacancy_id, technology_id);


--
-- Name: vacancies_vacancy_technologies vacancies_vacancy_technologies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_vacancy_technologies
    ADD CONSTRAINT vacancies_vacancy_technologies_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: vacancies_channel_url_28e5502c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vacancies_channel_url_28e5502c_like ON public.vacancies_channel USING btree (url varchar_pattern_ops);


--
-- Name: vacancies_location_city_3360c7b4_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vacancies_location_city_3360c7b4_like ON public.vacancies_location USING btree (city varchar_pattern_ops);


--
-- Name: vacancies_role_group_id_3d1d6a3f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vacancies_role_group_id_3d1d6a3f ON public.vacancies_role USING btree (group_id);


--
-- Name: vacancies_role_name_f9eb3c74_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vacancies_role_name_f9eb3c74_like ON public.vacancies_role USING btree (name varchar_pattern_ops);


--
-- Name: vacancies_rolegroup_name_db16f3dc_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vacancies_rolegroup_name_db16f3dc_like ON public.vacancies_rolegroup USING btree (name varchar_pattern_ops);


--
-- Name: vacancies_technology_name_89ede788_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vacancies_technology_name_89ede788_like ON public.vacancies_technology USING btree (name varchar_pattern_ops);


--
-- Name: vacancies_vacancy_channel_id_id_97a8f345; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vacancies_vacancy_channel_id_id_97a8f345 ON public.vacancies_vacancy USING btree (channel_id_id);


--
-- Name: vacancies_vacancy_location_id_a3d4014a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vacancies_vacancy_location_id_a3d4014a ON public.vacancies_vacancy USING btree (location_id);


--
-- Name: vacancies_vacancy_role_id_b43fde8a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vacancies_vacancy_role_id_b43fde8a ON public.vacancies_vacancy USING btree (role_id);


--
-- Name: vacancies_vacancy_technologies_technology_id_a7ac37fd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vacancies_vacancy_technologies_technology_id_a7ac37fd ON public.vacancies_vacancy_technologies USING btree (technology_id);


--
-- Name: vacancies_vacancy_technologies_vacancy_id_74975f25; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vacancies_vacancy_technologies_vacancy_id_74975f25 ON public.vacancies_vacancy_technologies USING btree (vacancy_id);


--
-- Name: vacancies_vacancy_url_9a8fed55; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vacancies_vacancy_url_9a8fed55 ON public.vacancies_vacancy USING btree (url);


--
-- Name: vacancies_vacancy_url_9a8fed55_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vacancies_vacancy_url_9a8fed55_like ON public.vacancies_vacancy USING btree (url varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: vacancies_role vacancies_role_group_id_3d1d6a3f_fk_vacancies_rolegroup_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_role
    ADD CONSTRAINT vacancies_role_group_id_3d1d6a3f_fk_vacancies_rolegroup_id FOREIGN KEY (group_id) REFERENCES public.vacancies_rolegroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: vacancies_vacancy vacancies_vacancy_channel_id_id_97a8f345_fk_vacancies; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_vacancy
    ADD CONSTRAINT vacancies_vacancy_channel_id_id_97a8f345_fk_vacancies FOREIGN KEY (channel_id_id) REFERENCES public.vacancies_channel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: vacancies_vacancy vacancies_vacancy_location_id_a3d4014a_fk_vacancies_location_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_vacancy
    ADD CONSTRAINT vacancies_vacancy_location_id_a3d4014a_fk_vacancies_location_id FOREIGN KEY (location_id) REFERENCES public.vacancies_location(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: vacancies_vacancy vacancies_vacancy_role_id_b43fde8a_fk_vacancies_role_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_vacancy
    ADD CONSTRAINT vacancies_vacancy_role_id_b43fde8a_fk_vacancies_role_id FOREIGN KEY (role_id) REFERENCES public.vacancies_role(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: vacancies_vacancy_technologies vacancies_vacancy_te_technology_id_a7ac37fd_fk_vacancies; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_vacancy_technologies
    ADD CONSTRAINT vacancies_vacancy_te_technology_id_a7ac37fd_fk_vacancies FOREIGN KEY (technology_id) REFERENCES public.vacancies_technology(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: vacancies_vacancy_technologies vacancies_vacancy_te_vacancy_id_74975f25_fk_vacancies; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vacancies_vacancy_technologies
    ADD CONSTRAINT vacancies_vacancy_te_vacancy_id_74975f25_fk_vacancies FOREIGN KEY (vacancy_id) REFERENCES public.vacancies_vacancy(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

