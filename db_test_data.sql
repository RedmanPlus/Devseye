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
    name character varying(50) NOT NULL
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
    skill character varying(4) NOT NULL,
    tasks text NOT NULL,
    requirements text NOT NULL,
    url character varying(50) NOT NULL,
    channel_id_id bigint NOT NULL,
    location_id bigint NOT NULL,
    role_id bigint NOT NULL,
    message_id integer,
    max_salary numeric(12,2),
    min_salary numeric(12,2) NOT NULL,
    max_salary_currency character varying(3) NOT NULL,
    min_salary_currency character varying(3) NOT NULL,
    CONSTRAINT vacancies_vacancy_message_id_check CHECK ((message_id >= 0))
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
59	2022-06-08 15:14:39.051534+03	12	╨н╤В╨░ ╨▓╨░╨║╨░╨╜╤Б╨╕╤П ╤Б╨╛╨╖╨┤╨░╨╜╨░ ╤З╨╡╤А╨╡╨╖ ╨░╨┤╨╝╨╕╨╜╨║╤Г	1	[{"added": {}}]	12	1
60	2022-06-08 15:14:52.876489+03	12	╨н╤В╨░ ╨▓╨░╨║╨░╨╜╤Б╨╕╤П ╤Б╨╛╨╖╨┤╨░╨╜╨░ ╤З╨╡╤А╨╡╨╖ ╨░╨┤╨╝╨╕╨╜╨║╤Г	3		12	1
61	2022-06-08 15:17:41.034159+03	13	╨д╤А╨╛╨╜╤В╨╡╨╜╨┤╨╡╤А ╨╕╨╖ ╨░╨┤╨╝╨╕╨╜╨║╨╕, ╨┐╨╛╨┐╤А╨╛╨▒╤Г╨╡╨╝ ╤Б╨┤╨╡╨╗╨░╤В╤М ╨╛╨┐╨╕╤Б╨░╨╜╨╕╨╡ ╨┐╨╛╨┤╨╗╨╕╨╜╨╜╨╡╨╡	1	[{"added": {}}]	12	1
62	2022-06-08 16:36:10.459143+03	14	╨Ъ╤А╤Г╤В╨╛╨╣ ╤В╨╕╨╝╨╗╨╕╨┤	1	[{"added": {}}]	12	1
63	2022-06-08 16:36:38.331291+03	14	╨Ъ╤А╤Г╤В╨╛╨╣ ╤В╨╕╨╝╨╗╨╕╨┤	3		12	1
64	2022-06-08 16:39:03.070947+03	15	╨Ш╤Й╨╡╨╝ C# ╨┐╤А╨╛╨│╤А╨░╨╝╨╝╨╕╤Б╤В╨░ ╨╜╨░ ╨║╨░╨╜╨░╨╗╨╡ Python. ╨Ф╨░, ╨╝╤Л - ╤В╤Г╨┐╤Л╨╡.	1	[{"added": {}}]	12	1
65	2022-06-08 16:40:42.068468+03	15	╨Ш╤Й╨╡╨╝ C# ╨┐╤А╨╛╨│╤А╨░╨╝╨╝╨╕╤Б╤В╨░ ╨╜╨░ ╨║╨░╨╜╨░╨╗╨╡ Python. ╨Ф╨░, ╨╝╤Л - ╤В╤Г╨┐╤Л╨╡.	3		12	1
66	2022-06-08 16:41:32.443244+03	16	╨Ъ╨░╨║╨╛╨╣-╤В╨╛ ╨▒╨╡╨║╨╡╨╜╨┤╨╡╤А	1	[{"added": {}}]	12	1
67	2022-06-08 16:41:42.449913+03	16	╨Ъ╨░╨║╨╛╨╣-╤В╨╛ ╨▒╨╡╨║╨╡╨╜╨┤╨╡╤А	3		12	1
68	2022-06-08 16:42:34.539195+03	17	arharjkvnuhbrlnvkafnbwrabradvafbrwbafsf	1	[{"added": {}}]	12	1
69	2022-06-08 16:42:47.489914+03	17	arharjkvnuhbrlnvkafnbwrabradvafbrwbafsf	3		12	1
70	2022-06-08 16:43:50.663803+03	18	╨Я╨╕╤И╨╡╨╝ ╨╜╨░ Unity ╤Г╤А╨░	1	[{"added": {}}]	12	1
71	2022-06-08 16:45:53.047096+03	18	╨Я╨╕╤И╨╡╨╝ ╨╜╨░ Unity ╤Г╤А╨░	3		12	1
72	2022-06-08 16:46:50.198706+03	19	Python developer (junior)\r\n#╨╛╤Д╨╕╤Б #╨┐╨╛╨╗╨╜╤Л╨╣╨┤╨╡╨╜╤М \r\n╨Ы╨╛╨║╨░╤Ж╨╕╤П: ╨б╨░╨╜╨║╤В-╨Я╨╡╤В╨╡╤А╨▒╤Г╤А╨│\r\n \r\n╨в╤Л ╨┐╨╛╨╗╤Г╤З╨╕╨╗ ╨┐╤А╨╛╤Д╨╕╨╗╤М╨╜╨╛╨╡ ╨▓╤Л╤Б╤И╨╡╨╡ ╨╛╨▒╤А╨░╨╖╨╛╨▓╨░╨╜╨╕╨╡ ╨▓ ╤Б╤Д╨╡╤А╨╡ ╨Ш╨в ╨╕ ╤Е╨╛╤З╨╡╤И╤М ╨╜╨░╤З╨░╤В╤М ╨║╨░╤А╤М╨╡╤А╤Г ╨▓ it ╨╜╨░╨┐╤А╨░╨▓╨╗╨╡╨╜╨╕╨╕? ╨Ш╨╗╨╕ ╤Б╨░╨╝╨╛╤Б╤В╨╛╤П╤В╨╡╨╗╤М╨╜╨╛ ╨╕╨╖╤Г╤З╨╕╨╗ Pyto	1	[{"added": {}}]	12	1
73	2022-06-08 16:47:06.914883+03	19	Python developer (junior)\r\n#╨╛╤Д╨╕╤Б #╨┐╨╛╨╗╨╜╤Л╨╣╨┤╨╡╨╜╤М \r\n╨Ы╨╛╨║╨░╤Ж╨╕╤П: ╨б╨░╨╜╨║╤В-╨Я╨╡╤В╨╡╤А╨▒╤Г╤А╨│\r\n \r\n╨в╤Л ╨┐╨╛╨╗╤Г╤З╨╕╨╗ ╨┐╤А╨╛╤Д╨╕╨╗╤М╨╜╨╛╨╡ ╨▓╤Л╤Б╤И╨╡╨╡ ╨╛╨▒╤А╨░╨╖╨╛╨▓╨░╨╜╨╕╨╡ ╨▓ ╤Б╤Д╨╡╤А╨╡ ╨Ш╨в ╨╕ ╤Е╨╛╤З╨╡╤И╤М ╨╜╨░╤З╨░╤В╤М ╨║╨░╤А╤М╨╡╤А╤Г ╨▓ it ╨╜╨░╨┐╤А╨░╨▓╨╗╨╡╨╜╨╕╨╕? ╨Ш╨╗╨╕ ╤Б╨░╨╝╨╛╤Б╤В╨╛╤П╤В╨╡╨╗╤М╨╜╨╛ ╨╕╨╖╤Г╤З╨╕╨╗ Pyto	3		12	1
74	2022-06-08 16:51:05.797976+03	20	Python developer (junior)\r\n#╨╛╤Д╨╕╤Б #╨┐╨╛╨╗╨╜╤Л╨╣╨┤╨╡╨╜╤М \r\n╨Ы╨╛╨║╨░╤Ж╨╕╤П: ╨б╨░╨╜╨║╤В-╨Я╨╡╤В╨╡╤А╨▒╤Г╤А╨│\r\n \r\n╨в╤Л ╨┐╨╛╨╗╤Г╤З╨╕╨╗ ╨┐╤А╨╛╤Д╨╕╨╗╤М╨╜╨╛╨╡ ╨▓╤Л╤Б╤И╨╡╨╡ ╨╛╨▒╤А╨░╨╖╨╛╨▓╨░╨╜╨╕╨╡ ╨▓ ╤Б╤Д╨╡╤А╨╡ ╨Ш╨в ╨╕ ╤Е╨╛╤З╨╡╤И╤М ╨╜╨░╤З╨░╤В╤М ╨║╨░╤А╤М╨╡╤А╤Г ╨▓ it ╨╜╨░╨┐╤А╨░╨▓╨╗╨╡╨╜╨╕╨╕? ╨Ш╨╗╨╕ ╤Б╨░╨╝╨╛╤Б╤В╨╛╤П╤В╨╡╨╗╤М╨╜╨╛ ╨╕╨╖╤Г╤З╨╕╨╗ Pyto	1	[{"added": {}}]	12	1
75	2022-06-08 16:59:22.325951+03	20	Python developer (junior)\r\n#╨╛╤Д╨╕╤Б #╨┐╨╛╨╗╨╜╤Л╨╣╨┤╨╡╨╜╤М \r\n╨Ы╨╛╨║╨░╤Ж╨╕╤П: ╨б╨░╨╜╨║╤В-╨Я╨╡╤В╨╡╤А╨▒╤Г╤А╨│\r\n \r\n╨в╤Л ╨┐╨╛╨╗╤Г╤З╨╕╨╗ ╨┐╤А╨╛╤Д╨╕╨╗╤М╨╜╨╛╨╡ ╨▓╤Л╤Б╤И╨╡╨╡ ╨╛╨▒╤А╨░╨╖╨╛╨▓╨░╨╜╨╕╨╡ ╨▓ ╤Б╤Д╨╡╤А╨╡ ╨Ш╨в ╨╕ ╤Е╨╛╤З╨╡╤И╤М ╨╜╨░╤З╨░╤В╤М ╨║╨░╤А╤М╨╡╤А╤Г ╨▓ it ╨╜╨░╨┐╤А╨░╨▓╨╗╨╡╨╜╨╕╨╕? ╨Ш╨╗╨╕ ╤Б╨░╨╝╨╛╤Б╤В╨╛╤П╤В╨╡╨╗╤М╨╜╨╛ ╨╕╨╖╤Г╤З╨╕╨╗ Pyto	3		12	1
76	2022-06-08 17:32:14.368776+03	21	Python developer (junior)\r\n#╨╛╤Д╨╕╤Б #╨┐╨╛╨╗╨╜╤Л╨╣╨┤╨╡╨╜╤М \r\n╨Ы╨╛╨║╨░╤Ж╨╕╤П: ╨б╨░╨╜╨║╤В-╨Я╨╡╤В╨╡╤А╨▒╤Г╤А╨│\r\n \r\n╨в╤Л ╨┐╨╛╨╗╤Г╤З╨╕╨╗ ╨┐╤А╨╛╤Д╨╕╨╗╤М╨╜╨╛╨╡ ╨▓╤Л╤Б╤И╨╡╨╡ ╨╛╨▒╤А╨░╨╖╨╛╨▓╨░╨╜╨╕╨╡ ╨▓ ╤Б╤Д╨╡╤А╨╡ ╨Ш╨в ╨╕ ╤Е╨╛╤З╨╡╤И╤М ╨╜╨░╤З╨░╤В╤М ╨║╨░╤А╤М╨╡╤А╤Г ╨▓ it ╨╜╨░╨┐╤А╨░╨▓╨╗╨╡╨╜╨╕╨╕? ╨Ш╨╗╨╕ ╤Б╨░╨╝╨╛╤Б╤В╨╛╤П╤В╨╡╨╗╤М╨╜╨╛ ╨╕╨╖╤Г╤З╨╕╨╗ Pyto	1	[{"added": {}}]	12	1
77	2022-06-08 17:32:38.420613+03	21	Python developer (junior)\r\n#╨╛╤Д╨╕╤Б #╨┐╨╛╨╗╨╜╤Л╨╣╨┤╨╡╨╜╤М \r\n╨Ы╨╛╨║╨░╤Ж╨╕╤П: ╨б╨░╨╜╨║╤В-╨Я╨╡╤В╨╡╤А╨▒╤Г╤А╨│\r\n \r\n╨в╤Л ╨┐╨╛╨╗╤Г╤З╨╕╨╗ ╨┐╤А╨╛╤Д╨╕╨╗╤М╨╜╨╛╨╡ ╨▓╤Л╤Б╤И╨╡╨╡ ╨╛╨▒╤А╨░╨╖╨╛╨▓╨░╨╜╨╕╨╡ ╨▓ ╤Б╤Д╨╡╤А╨╡ ╨Ш╨в ╨╕ ╤Е╨╛╤З╨╡╤И╤М ╨╜╨░╤З╨░╤В╤М ╨║╨░╤А╤М╨╡╤А╤Г ╨▓ it ╨╜╨░╨┐╤А╨░╨▓╨╗╨╡╨╜╨╕╨╕? ╨Ш╨╗╨╕ ╤Б╨░╨╝╨╛╤Б╤В╨╛╤П╤В╨╡╨╗╤М╨╜╨╛ ╨╕╨╖╤Г╤З╨╕╨╗ Pyto	3		12	1
78	2022-06-08 17:33:24.518812+03	22	Python developer (junior)\r\n#╨╛╤Д╨╕╤Б #╨┐╨╛╨╗╨╜╤Л╨╣╨┤╨╡╨╜╤М \r\n╨Ы╨╛╨║╨░╤Ж╨╕╤П: ╨б╨░╨╜╨║╤В-╨Я╨╡╤В╨╡╤А╨▒╤Г╤А╨│\r\n \r\n╨в╤Л ╨┐╨╛╨╗╤Г╤З╨╕╨╗ ╨┐╤А╨╛╤Д╨╕╨╗╤М╨╜╨╛╨╡ ╨▓╤Л╤Б╤И╨╡╨╡ ╨╛╨▒╤А╨░╨╖╨╛╨▓╨░╨╜╨╕╨╡ ╨▓ ╤Б╤Д╨╡╤А╨╡ ╨Ш╨в ╨╕ ╤Е╨╛╤З╨╡╤И╤М ╨╜╨░╤З╨░╤В╤М ╨║╨░╤А╤М╨╡╤А╤Г ╨▓ it ╨╜╨░╨┐╤А╨░╨▓╨╗╨╡╨╜╨╕╨╕? ╨Ш╨╗╨╕ ╤Б╨░╨╝╨╛╤Б╤В╨╛╤П╤В╨╡╨╗╤М╨╜╨╛ ╨╕╨╖╤Г╤З╨╕╨╗ Pyto	1	[{"added": {}}]	12	1
79	2022-06-08 18:43:34.60077+03	22	Python developer (junior)\r\n#╨╛╤Д╨╕╤Б #╨┐╨╛╨╗╨╜╤Л╨╣╨┤╨╡╨╜╤М \r\n╨Ы╨╛╨║╨░╤Ж╨╕╤П: ╨б╨░╨╜╨║╤В-╨Я╨╡╤В╨╡╤А╨▒╤Г╤А╨│\r\n \r\n╨в╤Л ╨┐╨╛╨╗╤Г╤З╨╕╨╗ ╨┐╤А╨╛╤Д╨╕╨╗╤М╨╜╨╛╨╡ ╨▓╤Л╤Б╤И╨╡╨╡ ╨╛╨▒╤А╨░╨╖╨╛╨▓╨░╨╜╨╕╨╡ ╨▓ ╤Б╤Д╨╡╤А╨╡ ╨Ш╨в ╨╕ ╤Е╨╛╤З╨╡╤И╤М ╨╜╨░╤З╨░╤В╤М ╨║╨░╤А╤М╨╡╤А╤Г ╨▓ it ╨╜╨░╨┐╤А╨░╨▓╨╗╨╡╨╜╨╕╨╕? ╨Ш╨╗╨╕ ╤Б╨░╨╝╨╛╤Б╤В╨╛╤П╤В╨╡╨╗╤М╨╜╨╛ ╨╕╨╖╤Г╤З╨╕╨╗ Pyto	3		12	1
80	2022-06-08 19:15:40.124841+03	27	unique_slug = slug\r\n        num = 1\r\n        while Vacancy.objects.filter(url=unique_slug).exists():\r\n            unique_slug = f'{slug}-{num}'\r\n            num += 1\r\n        return unique_slug	1	[{"added": {}}]	12	1
81	2022-06-08 19:15:57.099386+03	27	unique_slug = slug\r\n        num = 1\r\n        while Vacancy.objects.filter(url=unique_slug).exists():\r\n            unique_slug = f'{slug}-{num}'\r\n            num += 1\r\n        return unique_slug	3		12	1
82	2022-06-08 19:16:17.445499+03	28	unique_slug = slug\r\n        num = 1\r\n        while Vacancy.objects.filter(url=unique_slug).exists():\r\n            unique_slug = f'{slug}-{num}'\r\n            num += 1\r\n        instance.url = unique_slu	1	[{"added": {}}]	12	1
83	2022-06-08 19:16:40.371543+03	28	unique_slug = slug\r\n        num = 1\r\n        while Vacancy.objects.filter(url=unique_slug).exists():\r\n            unique_slug = f'{slug}-{num}'\r\n            num += 1\r\n        instance.url = unique_slu	3		12	1
84	2022-06-08 19:16:58.274729+03	29	sbbdsfgb	1	[{"added": {}}]	12	1
85	2022-06-08 19:17:42.185538+03	29	sbbdsfgb	3		12	1
86	2022-06-08 19:17:58.897597+03	30	bvrgngv gb	1	[{"added": {}}]	12	1
87	2022-06-08 19:19:17.039885+03	30	bvrgngv gb	3		12	1
88	2022-06-08 19:19:35.56024+03	31	vttbvtgntvtnbtrvtgrvt	1	[{"added": {}}]	12	1
89	2022-06-08 19:21:02.419029+03	31	vttbvtgntvtnbtrvtgrvt	3		12	1
90	2022-06-08 19:23:24.620949+03	32	vrbtbttbttbttbt	1	[{"added": {}}]	12	1
91	2022-06-08 19:23:41.514189+03	32	vrbtbttbttbttbt	3		12	1
92	2022-06-08 19:23:57.24277+03	33	weebtbervtrbr	1	[{"added": {}}]	12	1
93	2022-06-08 19:24:24.624688+03	33	weebtbervtrbr	3		12	1
94	2022-06-08 19:24:46.80808+03	34	vrtnesgntwrb	1	[{"added": {}}]	12	1
95	2022-06-08 19:28:46.186813+03	34	vrtnesgntwrb	3		12	1
96	2022-06-08 19:29:03.537471+03	35	gthtnbryn	1	[{"added": {}}]	12	1
97	2022-06-08 19:29:34.478609+03	35	gthtnbryn	3		12	1
98	2022-06-08 19:29:52.564323+03	36	erbtbrvtbtv	1	[{"added": {}}]	12	1
99	2022-06-08 19:30:31.758535+03	36	erbtbrvtbtv	3		12	1
100	2022-06-08 19:32:09.712562+03	37	dvdbtebvf gntf	1	[{"added": {}}]	12	1
101	2022-06-08 19:32:59.39437+03	37	dvdbtebvf gntf	3		12	1
102	2022-06-08 19:33:20.039562+03	38	unique_slug = slug\r\n        num = 1\r\n        while Vacancy.objects.filter(url=unique_slug).exists():\r\n            unique_slug = f'{slug}-{num}'\r\n            num += 1\r\n        instance.url = unique_slu	1	[{"added": {}}]	12	1
103	2022-06-08 19:34:10.079879+03	38	unique_slug = slug\r\n        num = 1\r\n        while Vacancy.objects.filter(url=unique_slug).exists():\r\n            unique_slug = f'{slug}-{num}'\r\n            num += 1\r\n        instance.url = unique_slu	3		12	1
104	2022-06-08 19:34:34.714569+03	39	vrervrv	1	[{"added": {}}]	12	1
105	2022-06-08 21:08:02.930609+03	39	vrervrv	3		12	1
106	2022-06-08 21:08:51.260773+03	40	╨а╨░╨╖╤А╨░╨▒╨░╤В╤Л╨▓╨░╤В╤М ╨╜╨╛╨▓╨╕╨╜╨║╨╕ ╨▓ ╨╛╨▒╨╗╨░╤Б╤В╨╕ Web ╨╕ ╨┤╨╡╨╗╨╕╤В╤М╤Б╤П ╨╕╤Б╤Е╨╛╨┤╨╜╤Л╨╝ ╨║╨╛╨┤╨╛╨╝ ╤Б ╨╢╨░╨┤╨╜╨╛╨╣ ╨║╨╛╨╝╨┐╨░╨╜╨╕╨╡╨╣	1	[{"added": {}}]	12	1
107	2022-06-08 21:08:59.141712+03	40	╨а╨░╨╖╤А╨░╨▒╨░╤В╤Л╨▓╨░╤В╤М ╨╜╨╛╨▓╨╕╨╜╨║╨╕ ╨▓ ╨╛╨▒╨╗╨░╤Б╤В╨╕ Web ╨╕ ╨┤╨╡╨╗╨╕╤В╤М╤Б╤П ╨╕╤Б╤Е╨╛╨┤╨╜╤Л╨╝ ╨║╨╛╨┤╨╛╨╝ ╤Б ╨╢╨░╨┤╨╜╨╛╨╣ ╨║╨╛╨╝╨┐╨░╨╜╨╕╨╡╨╣	3		12	1
108	2022-06-08 21:10:05.080704+03	41	setbstebny	1	[{"added": {}}]	12	1
109	2022-06-08 21:10:29.510221+03	41	setbstebny	2	[]	12	1
110	2022-06-08 21:10:52.187712+03	41	setbstebny	3		12	1
111	2022-06-08 21:15:15.287483+03	42	vfbtvfbtrvtbr	1	[{"added": {}}]	12	1
112	2022-06-08 21:15:23.259928+03	42	vfbtvfbtrvtbr	3		12	1
113	2022-06-08 21:28:18.879979+03	44	╨а╨░╨╖╤А╨░╨▒╨░╤В╤Л╨▓╨░╤В╤М ╨┐╤А╨╕╨╗╨╛╨╢╨╡╨╜╨╕╤П ╨╜╨░ Django ╨╕ React	1	[{"added": {}}]	12	1
114	2022-06-08 21:28:26.202211+03	44	╨а╨░╨╖╤А╨░╨▒╨░╤В╤Л╨▓╨░╤В╤М ╨┐╤А╨╕╨╗╨╛╨╢╨╡╨╜╨╕╤П ╨╜╨░ Django ╨╕ React	2	[]	12	1
115	2022-06-08 21:29:57.971532+03	44	╨а╨░╨╖╤А╨░╨▒╨░╤В╤Л╨▓╨░╤В╤М ╨┐╤А╨╕╨╗╨╛╨╢╨╡╨╜╨╕╤П ╨╜╨░ Django ╨╕ React	2	[{"changed": {"fields": ["\\u041c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0437\\u0430\\u0440\\u0430\\u0431\\u043e\\u0442\\u043d\\u0430\\u044f \\u043f\\u043b\\u0430\\u0442\\u0430"]}}]	12	1
116	2022-06-08 21:31:14.774497+03	44	╨а╨░╨╖╤А╨░╨▒╨░╤В╤Л╨▓╨░╤В╤М ╨┐╤А╨╕╨╗╨╛╨╢╨╡╨╜╨╕╤П ╨╜╨░ Django ╨╕ React	2	[{"changed": {"fields": ["\\u0410\\u0434\\u0440\\u0435\\u0441 \\u0434\\u043b\\u044f \\u0432\\u0430\\u043a\\u0430\\u043d\\u0441\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u0430\\u0439\\u0442\\u0435"]}}]	12	1
117	2022-06-08 21:31:25.37307+03	44	╨а╨░╨╖╤А╨░╨▒╨░╤В╤Л╨▓╨░╤В╤М ╨┐╤А╨╕╨╗╨╛╨╢╨╡╨╜╨╕╤П ╨╜╨░ Django ╨╕ React	2	[]	12	1
118	2022-06-08 21:32:06.147235+03	45	╨Х╤Й╨╡ ╨╛╨┤╨╕╨╜ ╤Д╤Г╨╗╤Б╤В╨╡╨║ ╨▒╨╡╨╖ ╨╖╨░╤А╨┐╨╗╨░╤В╤Л	1	[{"added": {}}]	12	1
119	2022-06-08 21:56:14.998379+03	45	╨Х╤Й╨╡ ╨╛╨┤╨╕╨╜ ╤Д╤Г╨╗╤Б╤В╨╡╨║ ╨▒╨╡╨╖ ╨╖╨░╤А╨┐╨╗╨░╤В╤Л	2	[]	12	1
120	2022-06-08 22:03:52.79789+03	47	╨Т╨░╨║╨░╨╜╤Б╨╕╤П ╨┤╨╗╤П ╤А╨░╨╖╤А╨░╨▒╨╛╤В╤З╨╕╨║╨░ ╨╛╨▒╨╕╨╗╤М╨╜╤Л╤Е ╨┐╤А╨╕╨╗╨╛╨╢╨╡╨╜╨╕╨╣, ╨╜╨╛ ╨╜╨╡ ╤Г╨║╨░╨╖╨░╨╜╨░ ╨╖╨░╤А╨┐╨╗╨░╤В╨░.	1	[{"added": {}}]	12	1
121	2022-06-08 22:05:11.761676+03	47	╨Т╨░╨║╨░╨╜╤Б╨╕╤П ╨┤╨╗╤П ╤А╨░╨╖╤А╨░╨▒╨╛╤В╤З╨╕╨║╨░ ╨╛╨▒╨╕╨╗╤М╨╜╤Л╤Е ╨┐╤А╨╕╨╗╨╛╨╢╨╡╨╜╨╕╨╣, ╨╜╨╛ ╨╜╨╡ ╤Г╨║╨░╨╖╨░╨╜╨░ ╨╖╨░╤А╨┐╨╗╨░╤В╨░.	2	[]	12	1
122	2022-06-08 22:05:18.174798+03	47	╨Т╨░╨║╨░╨╜╤Б╨╕╤П ╨┤╨╗╤П ╤А╨░╨╖╤А╨░╨▒╨╛╤В╤З╨╕╨║╨░ ╨╛╨▒╨╕╨╗╤М╨╜╤Л╤Е ╨┐╤А╨╕╨╗╨╛╨╢╨╡╨╜╨╕╨╣, ╨╜╨╛ ╨╜╨╡ ╤Г╨║╨░╨╖╨░╨╜╨░ ╨╖╨░╤А╨┐╨╗╨░╤В╨░.	3		12	1
123	2022-06-08 22:05:40.931243+03	48	betnyrntefbg	1	[{"added": {}}]	12	1
124	2022-06-08 22:06:30.940606+03	48	betnyrntefbg	3		12	1
125	2022-06-08 22:34:40.393018+03	45	╨Х╤Й╨╡ ╨╛╨┤╨╕╨╜ ╤Д╤Г╨╗╤Б╤В╨╡╨║ ╨▒╨╡╨╖ ╨╖╨░╤А╨┐╨╗╨░╤В╤Л	2	[]	12	1
126	2022-06-08 22:35:00.13305+03	45	╨Х╤Й╨╡ ╨╛╨┤╨╕╨╜ ╤Д╤Г╨╗╤Б╤В╨╡╨║ ╨▒╨╡╨╖ ╨╖╨░╤А╨┐╨╗╨░╤В╤Л	2	[{"changed": {"fields": ["\\u041c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0437\\u0430\\u0440\\u0430\\u0431\\u043e\\u0442\\u043d\\u0430\\u044f \\u043f\\u043b\\u0430\\u0442\\u0430"]}}]	12	1
127	2022-06-08 22:35:13.776857+03	44	╨а╨░╨╖╤А╨░╨▒╨░╤В╤Л╨▓╨░╤В╤М ╨┐╤А╨╕╨╗╨╛╨╢╨╡╨╜╨╕╤П ╨╜╨░ Django ╨╕ React	2	[]	12	1
128	2022-06-09 18:04:01.165744+03	9	╨У╨░╨▓╨░╨╣╨╕, ╨У╨╛╨╜╨╛╨╗╤Г╨╗╤Г	3		8	1
129	2022-06-09 18:04:43.197256+03	10	╨У╨░╨▓╨░╨╣╨╕, ╨У╨╛╨╜╨╛╨╗╤Г╨╗╤Г	3		8	1
130	2022-06-09 20:57:01.258042+03	53	╨Я╨╛╨┐╤А╨╛╨▒╤Г╨╡╨╝ ╨┤╨╛╨▒╨░╨▓╨╕╤В╤М ╨╡╤Й╤С ╨╛╨┤╨╜╤Г ╨╜╨╛╨▓╤Г╤О ╨╗╨╛╨║╨░╤Ж╨╕╤О ╨╕ ╤В╨╡╤Е╨╜╨╛╨╗╨╛╨│╨╕╤О ╤З╨╡╤А╨╡╨╖ POST	3		12	1
131	2022-06-09 20:57:06.379457+03	51	╨Я╨╛╨┐╤А╨╛╨▒╤Г╨╡╨╝ ╨┤╨╛╨▒╨░╨▓╨╕╤В╤М ╨╜╨╛╨▓╤Г╤О ╨╗╨╛╨║╨░╤Ж╨╕╤О ╨╕ ╤В╨╡╤Е╨╜╨╛╨╗╨╛╨│╨╕╤О ╤З╨╡╤А╨╡╨╖ POST	3		12	1
132	2022-06-09 20:57:13.562163+03	49	╨а╨░╨╖╤А╨░╨▒╨░╤В╤Л╨▓╨░╤В╤М ╨┐╤А╨╕╨╗╨╛╨╢╨╡╨╜╨╕╤П ╨╜╨░ Django ╨╕ React	3		12	1
133	2022-06-11 18:06:35.453521+03	13	╨Ь╨╛╤Б╨║╨▓╨░	1	[{"added": {}}]	8	1
134	2022-06-11 18:12:45.818123+03	56	╨д╤А╨╛╨╜╤В ╤Б ╨╗╨╛╨║╨░╤Ж╨╕╨╡╨╣	1	[{"added": {}}]	12	1
135	2022-06-11 18:19:33.822806+03	56	╨д╤А╨╛╨╜╤В ╤Б ╨╗╨╛╨║╨░╤Ж╨╕╨╡╨╣	3		12	1
136	2022-06-11 18:37:18.037301+03	14	╨Э╨╡ ╤Г╨║╨░╨╖╨░╨╜╨░	1	[{"added": {}}]	8	1
137	2022-06-11 19:22:33.840085+03	14	╨Э╨╡ ╤Г╨║╨░╨╖╨░╨╜╨░	3		8	1
138	2022-06-11 19:28:13.601727+03	15	╨Э╨╡ ╤Г╨║╨░╨╖╨░╨╜╨░	3		8	1
139	2022-06-11 19:28:43.784654+03	13	╨Ь╨╛╤Б╨║╨▓╨░	3		8	1
140	2022-06-11 19:29:12.826757+03	17	╨Ь╨╛╤Б╨║╨▓╨░	1	[{"added": {}}]	8	1
141	2022-06-11 19:30:08.206107+03	58	╨Я╤А╨╛╨▒╨╜╨░╤П ╨▓╨░╨║╨░╨╜╤Б╨╕╤П ╤З╨╡╤А╨╡╨╖ ╨░╨┤╨╝╨╕╨╜╨║╤Г	1	[{"added": {}}]	12	1
142	2022-06-11 19:36:35.754267+03	59	╨Я╤А╨╛╨▓╨╡╤А╤П╨╡╨╝ url ╤З╨╡╤А╨╡╨╖ ╨░╨┤╨╝╨╕╨╜╨║╤Г	1	[{"added": {}}]	12	1
143	2022-06-11 20:31:57.965454+03	59	╨Я╤А╨╛╨▓╨╡╤А╤П╨╡╨╝ url ╤З╨╡╤А╨╡╨╖ ╨░╨┤╨╝╨╕╨╜╨║╤Г	2	[{"changed": {"fields": ["\\u0417\\u0430\\u0434\\u0430\\u0447\\u0438"]}}]	12	1
144	2022-06-11 20:45:11.343508+03	59	╨Я╤А╨╛╨▓╨╡╤А╤П╨╡╨╝ url ╤З╨╡╤А╨╡╨╖ ╨░╨┤╨╝╨╕╨╜╨║╤Г	2	[{"changed": {"fields": ["\\u0422\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f"]}}]	12	1
145	2022-06-11 20:50:15.680866+03	60	╨Я╨╛╤Б╨╗╨╡╨┤╨╜╨╕╨╣ ╤А╨░╨╖ - ╤З╨╡╤А╨╡╨╖ ╨░╨┤╨╝╨╕╨╜╨║╤Г, ╨┐╤А╨╛╨▓╨╡╤А╤П╨╡╨╝ ╤А╨░╨▒╨╛╤В╤Г URL	1	[{"added": {}}]	12	1
146	2022-06-11 21:03:55.070739+03	60	╨Я╨╛╤Б╨╗╨╡╨┤╨╜╨╕╨╣ ╤А╨░╨╖ - ╤З╨╡╤А╨╡╨╖ ╨░╨┤╨╝╨╕╨╜╨║╤Г, ╨┐╤А╨╛╨▓╨╡╤А╤П╨╡╨╝ ╤А╨░╨▒╨╛╤В╤Г URL	2	[{"changed": {"fields": ["\\u0422\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f"]}}]	12	1
147	2022-06-12 02:09:36.329489+03	16	╨Э╨╡ ╤Г╨║╨░╨╖╨░╨╜╨░	3		8	1
148	2022-06-12 13:00:27.785031+03	73	╨Ч╨┤╨╡╤Б╤М ╤Г╨║╨░╨╖╨░╨╜╤Л git ╨╕ JavaScript	1	[{"added": {}}]	12	1
149	2022-06-12 13:01:21.639562+03	74	╨Ч╨┤╨╡╤Б╤М ╤Г╨║╨░╨╖╨░╨╜╤Л git ╨╕ Django	1	[{"added": {}}]	12	1
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
30	vacancies	0011_remove_vacancy_contact_alter_channel_url_and_more	2022-06-07 19:44:41.125094+03
31	vacancies	0002_rename_country_location_name_and_more	2022-06-11 17:30:07.349039+03
32	vacancies	0002_alter_vacancy_employment_alter_vacancy_location_and_more	2022-06-11 21:18:40.03137+03
33	vacancies	0003_vacancy_max_salary_currency_and_more	2022-06-11 23:36:16.681359+03
34	vacancies	0002_alter_vacancy_max_salary_alter_vacancy_min_salary	2022-06-12 02:03:20.380988+03
35	vacancies	0003_alter_vacancy_max_salary_alter_vacancy_min_salary	2022-06-12 02:03:30.306753+03
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

COPY public.vacancies_location (id, name) FROM stdin;
17	╨Ь╨╛╤Б╨║╨▓╨░
18	╨Э╨╡ ╤Г╨║╨░╨╖╨░╨╜╨░
19	╨С╨░╨╜╨│╨╗╨░╨┤╨╡╤И
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
14	Lisp
15	Linux
16	GitLab
17	PyTorch
18	PHP
19	Laravel
20	Vue.js
\.


--
-- Data for Name: vacancies_vacancy; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vacancies_vacancy (id, "desc", add_date, remote, relocation, employment, skill, tasks, requirements, url, channel_id_id, location_id, role_id, message_id, max_salary, min_salary, max_salary_currency, min_salary_currency) FROM stdin;
59	╨Я╤А╨╛╨▓╨╡╤А╤П╨╡╨╝ url ╤З╨╡╤А╨╡╨╖ ╨░╨┤╨╝╨╕╨╜╨║╤Г	2022-06-11 20:45:11.32942+03	f	f	FULLDAY	MD	----	----	bekend-razrabotchik-moskva-middle	4	17	1	2	0.00	0.00	RUB	RUB
60	╨Я╨╛╤Б╨╗╨╡╨┤╨╜╨╕╨╣ ╤А╨░╨╖ - ╤З╨╡╤А╨╡╨╖ ╨░╨┤╨╝╨╕╨╜╨║╤Г, ╨┐╤А╨╛╨▓╨╡╤А╤П╨╡╨╝ ╤А╨░╨▒╨╛╤В╤Г URL	2022-06-11 21:03:55.047576+03	t	t	FULLDAY	JR	---	----	bekend-razrabotchik-moskva-junior	5	17	1	1	0.00	0.00	RUB	RUB
64	╨Я╤А╨╛╨▒╨╜╨░╤П ╨▓╨░╨║╨░╨╜╤Б╨╕╤П ╤З╨╡╤А╨╡╨╖ POST (╨╝╨╕╨╜╨╕╨╝╤Г╨╝ ╨┤╨░╨╜╨╜╤Л╤Е)	2022-06-11 23:10:25.715522+03	f	f	NONE	NONE	- ╨┐╨╕╤В╤М ╤З╨░╨╣	- ╤Г╨╝╨╡╤В╤М ╨┐╨╕╤В╤М ╤З╨░╨╣	bekend-razrabotchik-moskva-ne-ukazan	4	17	1	6	0.00	0.00	RUB	RUB
65	╨Я╤А╨╛╨▒╨╜╨░╤П ╨▓╨░╨║╨░╨╜╤Б╨╕╤П ╤З╨╡╤А╨╡╨╖ POST (╨╝╨╕╨╜╨╕╨╝╤Г╨╝ ╨┤╨░╨╜╨╜╤Л╤Е)	2022-06-11 23:10:46.98296+03	f	f	NONE	NONE	- ╨┐╨╕╤В╤М ╤З╨░╨╣	- ╤Г╨╝╨╡╤В╤М ╨┐╨╕╤В╤М ╤З╨░╨╣	bekend-razrabotchik-moskva-ne-ukazan-1	4	17	1	6	0.00	0.00	RUB	RUB
68	╨Я╤А╨╛╨▒╨╜╨░╤П ╨▓╨░╨║╨░╨╜╤Б╨╕╤П ╤З╨╡╤А╨╡╨╖ POST (╨╝╨╕╨╜╨╕╨╝╤Г╨╝ ╨┤╨░╨╜╨╜╤Л╤Е)	2022-06-12 00:43:17.750491+03	f	f	FULLDAY	MD	- ╨┐╨╕╤В╤М ╤З╨░╨╣	- ╤Г╨╝╨╡╤В╤М ╨┐╨╕╤В╤М ╤З╨░╨╣	bekend-razrabotchik-moskva-4000-usd	4	17	1	8	4000.00	1000.00	USD	USD
69	╨Я╤А╨╛╨▒╨╜╨░╤П ╨▓╨░╨║╨░╨╜╤Б╨╕╤П ╤З╨╡╤А╨╡╨╖ POST (EUR)	2022-06-12 00:43:52.138626+03	f	f	FULLDAY	MD	- ╨┐╨╕╤В╤М ╤З╨░╨╣	- ╤Г╨╝╨╡╤В╤М ╨┐╨╕╤В╤М ╤З╨░╨╣	bekend-razrabotchik-moskva-4000-eur	4	17	1	8	4000.00	1000.00	EUR	EUR
71	╨Я╤А╨╛╨▒╨╜╨░╤П ╨▓╨░╨║╨░╨╜╤Б╨╕╤П ╤З╨╡╤А╨╡╨╖ POST (EUR)	2022-06-12 02:12:52.014392+03	f	f	FULLDAY	MD	- ╨┐╨╕╤В╤М ╤З╨░╨╣	- ╤Г╨╝╨╡╤В╤М ╨┐╨╕╤В╤М ╤З╨░╨╣	bekend-razrabotchik-ne-ukazana-4000-eur	4	18	1	9	4000.00	1000.00	EUR	EUR
72	╨Я╤А╨╛╨▒╨╜╨░╤П ╨▓╨░╨║╨░╨╜╤Б╨╕╤П ╤З╨╡╤А╨╡╨╖ POST (╨╝╨╕╨╜╨╕╨╝╤Г╨╝ ╨┤╨░╨╜╨╜╤Л╤Е)	2022-06-12 02:25:27.446851+03	f	f	NONE	NONE	- ╨┐╨╕╤В╤М ╤З╨░╨╣	- ╤Г╨╝╨╡╤В╤М ╨┐╨╕╤В╤М ╤З╨░╨╣	veb-razrabotchik-ne-ukazana-ne-ukazan	4	18	4	10	0.00	0.00	RUB	RUB
75	╨Я╤А╨╛╨▒╨╜╨░╤П ╨▓╨░╨║╨░╨╜╤Б╨╕╤П ╤З╨╡╤А╨╡╨╖ POST (╨╜╨╛╨▓╨░╤П ╨╗╨╛╨║╨░╤Ж╨╕╤П)	2022-06-12 22:15:21.8929+03	f	f	NONE	NONE	- ╨┐╨╕╤В╤М ╤З╨░╨╣	- ╤Г╨╝╨╡╤В╤М ╨┐╨╕╤В╤М ╤З╨░╨╣	veb-razrabotchik-bangladesh-ne-ukazan	4	19	4	10	0.00	0.00	RUB	RUB
76	╨Я╤А╨╛╨▒╨╜╨░╤П ╨▓╨░╨║╨░╨╜╤Б╨╕╤П ╤З╨╡╤А╨╡╨╖ POST (╨╜╨╛╨▓╨░╤П ╨╗╨╛╨║╨░╤Ж╨╕╤П)	2022-06-12 22:32:48.359038+03	f	f	NONE	NONE	- ╨┐╨╕╤В╤М ╤З╨░╨╣	- ╤Г╨╝╨╡╤В╤М ╨┐╨╕╤В╤М ╤З╨░╨╣	veb-razrabotchik-bangladesh-ne-ukazan-1	4	19	4	10	0.00	0.00	RUB	RUB
77	╨Я╤А╨╛╨▒╨╜╨░╤П ╨▓╨░╨║╨░╨╜╤Б╨╕╤П ╤З╨╡╤А╨╡╨╖ POST (╨╜╨╛╨▓╨░╤П ╨╗╨╛╨║╨░╤Ж╨╕╤П)	2022-06-12 23:00:42.393647+03	f	f	NONE	NONE	- ╨┐╨╕╤В╤М ╤З╨░╨╣	- ╤Г╨╝╨╡╤В╤М ╨┐╨╕╤В╤М ╤З╨░╨╣	bekend-razrabotchik-bangladesh-ne-ukazan	4	19	1	10	0.00	0.00	RUB	RUB
78	╨Я╤А╨╛╨▒╨╜╨░╤П ╨▓╨░╨║╨░╨╜╤Б╨╕╤П ╤З╨╡╤А╨╡╨╖ POST (╨╜╨╛╨▓╨░╤П ╨╗╨╛╨║╨░╤Ж╨╕╤П)	2022-06-12 23:20:22.772388+03	f	f	NONE	NONE	- ╨┐╨╕╤В╤М ╤З╨░╨╣	- ╤Г╨╝╨╡╤В╤М ╨┐╨╕╤В╤М ╤З╨░╨╣	bekend-razrabotchik-bangladesh-ne-ukazan-1	4	19	1	10	0.00	0.00	RUB	RUB
79	╨Я╤А╨╛╨▒╨╜╨░╤П ╨▓╨░╨║╨░╨╜╤Б╨╕╤П ╤З╨╡╤А╨╡╨╖ POST (╨╝╨╕╨╜_╨╖╨┐)	2022-06-13 00:01:06.789845+03	f	f	NONE	NONE	- ╨┐╨╕╤В╤М ╤З╨░╨╣	- ╤Г╨╝╨╡╤В╤М ╨┐╨╕╤В╤М ╤З╨░╨╣	bekend-razrabotchik-bangladesh-ne-ukazan-2	4	19	1	10	0.00	50000.00	RUB	RUB
80	╨Я╤А╨╛╨▒╨╜╨░╤П ╨▓╨░╨║╨░╨╜╤Б╨╕╤П ╤З╨╡╤А╨╡╨╖ POST (╨╝╨╕╨╜_╨╖╨┐ str)	2022-06-13 00:01:51.248203+03	f	f	NONE	NONE	- ╨┐╨╕╤В╤М ╤З╨░╨╣	- ╤Г╨╝╨╡╤В╤М ╨┐╨╕╤В╤М ╤З╨░╨╣	bekend-razrabotchik-bangladesh-ne-ukazan-3	4	19	1	10	0.00	50000.00	RUB	RUB
81	╨Т╨░╨║╨░╨╜╤Б╨╕╤П ╤Б ╨╝╨╕╨╜╨╕╨╝╨░╨╗╤М╨╜╤Л╨╝ ╨╛╨┐╨╕╤Б╨░╨╜╨╕╨╡╨╝	2022-06-13 00:42:58.641005+03	f	f	NONE	NONE	-	-	bekend-razrabotchik-ne-ukazana-ne-ukazan	4	18	1	1234	0.00	0.00	RUB	RUB
82	╨Ш╤Й╨╡╨╝ ╤А╨░╨╖╤А╨░╨▒╨╛╤В╤З╨╕╨║╨░ ╨╜╨░ Front-End	2022-06-14 23:25:09.357983+03	f	f	NONE	NONE	-	-	frontend-razrabotchik-ne-ukazana-ne-ukazan	5	18	2	1234	0.00	0.00	RUB	RUB
\.


--
-- Data for Name: vacancies_vacancy_technologies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vacancies_vacancy_technologies (id, vacancy_id, technology_id) FROM stdin;
105	59	5
106	60	1
107	64	1
108	64	6
109	64	7
110	65	1
111	65	16
112	65	7
113	68	1
114	68	7
115	68	16
116	69	1
117	69	7
118	69	16
119	71	17
120	71	7
121	71	16
122	72	17
123	72	7
124	72	16
129	75	17
130	75	7
131	75	16
132	76	17
133	76	7
134	76	16
135	77	17
136	77	7
137	77	16
138	78	18
139	78	19
140	78	8
141	79	18
142	79	19
143	79	8
144	80	18
145	80	19
146	80	8
147	81	1
148	81	8
149	82	2
150	82	20
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

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 149, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 35, true);


--
-- Name: vacancies_channel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vacancies_channel_id_seq', 6, true);


--
-- Name: vacancies_location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vacancies_location_id_seq', 19, true);


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

SELECT pg_catalog.setval('public.vacancies_technology_id_seq', 20, true);


--
-- Name: vacancies_vacancy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vacancies_vacancy_id_seq', 82, true);


--
-- Name: vacancies_vacancy_technologies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vacancies_vacancy_technologies_id_seq', 150, true);


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

