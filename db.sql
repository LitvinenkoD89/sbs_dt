--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.6
-- Dumped by pg_dump version 9.5.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: active_admin_comments; Type: TABLE; Schema: public; Owner: torero
--

CREATE TABLE active_admin_comments (
    id integer NOT NULL,
    namespace character varying,
    body text,
    resource_type character varying,
    resource_id integer,
    author_type character varying,
    author_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE active_admin_comments OWNER TO torero;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: torero
--

CREATE SEQUENCE active_admin_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE active_admin_comments_id_seq OWNER TO torero;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: torero
--

ALTER SEQUENCE active_admin_comments_id_seq OWNED BY active_admin_comments.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: torero
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO torero;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: torero
--

CREATE TABLE articles (
    id integer NOT NULL,
    title character varying,
    description text,
    short_description text,
    photo character varying,
    published integer DEFAULT 0,
    date timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE articles OWNER TO torero;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: torero
--

CREATE SEQUENCE articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE articles_id_seq OWNER TO torero;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: torero
--

ALTER SEQUENCE articles_id_seq OWNED BY articles.id;


--
-- Name: awards; Type: TABLE; Schema: public; Owner: torero
--

CREATE TABLE awards (
    id integer NOT NULL,
    description text,
    link_photo character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE awards OWNER TO torero;

--
-- Name: awards_id_seq; Type: SEQUENCE; Schema: public; Owner: torero
--

CREATE SEQUENCE awards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE awards_id_seq OWNER TO torero;

--
-- Name: awards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: torero
--

ALTER SEQUENCE awards_id_seq OWNED BY awards.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: torero
--

CREATE TABLE categories (
    id integer NOT NULL,
    title character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE categories OWNER TO torero;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: torero
--

CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE categories_id_seq OWNER TO torero;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: torero
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- Name: ckeditor_assets; Type: TABLE; Schema: public; Owner: torero
--

CREATE TABLE ckeditor_assets (
    id integer NOT NULL,
    data_file_name character varying NOT NULL,
    data_content_type character varying,
    data_file_size integer,
    type character varying(30),
    width integer,
    height integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ckeditor_assets OWNER TO torero;

--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: torero
--

CREATE SEQUENCE ckeditor_assets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ckeditor_assets_id_seq OWNER TO torero;

--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: torero
--

ALTER SEQUENCE ckeditor_assets_id_seq OWNED BY ckeditor_assets.id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: torero
--

CREATE TABLE events (
    id integer NOT NULL,
    title character varying,
    address character varying,
    started_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE events OWNER TO torero;

--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: torero
--

CREATE SEQUENCE events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE events_id_seq OWNER TO torero;

--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: torero
--

ALTER SEQUENCE events_id_seq OWNED BY events.id;


--
-- Name: members; Type: TABLE; Schema: public; Owner: torero
--

CREATE TABLE members (
    id integer NOT NULL,
    name character varying,
    description text,
    avatar character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE members OWNER TO torero;

--
-- Name: members_id_seq; Type: SEQUENCE; Schema: public; Owner: torero
--

CREATE SEQUENCE members_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE members_id_seq OWNER TO torero;

--
-- Name: members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: torero
--

ALTER SEQUENCE members_id_seq OWNED BY members.id;


--
-- Name: notepads; Type: TABLE; Schema: public; Owner: torero
--

CREATE TABLE notepads (
    id integer NOT NULL,
    article_id integer,
    event_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE notepads OWNER TO torero;

--
-- Name: notepads_id_seq; Type: SEQUENCE; Schema: public; Owner: torero
--

CREATE SEQUENCE notepads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE notepads_id_seq OWNER TO torero;

--
-- Name: notepads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: torero
--

ALTER SEQUENCE notepads_id_seq OWNED BY notepads.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: torero
--

CREATE TABLE orders (
    id integer NOT NULL,
    name character varying,
    phone character varying,
    processed integer DEFAULT 0,
    agent integer DEFAULT 0,
    date_create timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE orders OWNER TO torero;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: torero
--

CREATE SEQUENCE orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE orders_id_seq OWNER TO torero;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: torero
--

ALTER SEQUENCE orders_id_seq OWNED BY orders.id;


--
-- Name: photoalbums; Type: TABLE; Schema: public; Owner: torero
--

CREATE TABLE photoalbums (
    id integer NOT NULL,
    photo_id integer,
    category_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE photoalbums OWNER TO torero;

--
-- Name: photoalbums_id_seq; Type: SEQUENCE; Schema: public; Owner: torero
--

CREATE SEQUENCE photoalbums_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE photoalbums_id_seq OWNER TO torero;

--
-- Name: photoalbums_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: torero
--

ALTER SEQUENCE photoalbums_id_seq OWNED BY photoalbums.id;


--
-- Name: photos; Type: TABLE; Schema: public; Owner: torero
--

CREATE TABLE photos (
    id integer NOT NULL,
    title character varying,
    description text,
    link_photo character varying,
    published integer DEFAULT 0,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE photos OWNER TO torero;

--
-- Name: photos_id_seq; Type: SEQUENCE; Schema: public; Owner: torero
--

CREATE SEQUENCE photos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE photos_id_seq OWNER TO torero;

--
-- Name: photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: torero
--

ALTER SEQUENCE photos_id_seq OWNED BY photos.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: torero
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO torero;

--
-- Name: service_photos; Type: TABLE; Schema: public; Owner: torero
--

CREATE TABLE service_photos (
    id integer NOT NULL,
    title character varying,
    description text,
    link_photo character varying,
    priority integer,
    service_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE service_photos OWNER TO torero;

--
-- Name: service_photos_id_seq; Type: SEQUENCE; Schema: public; Owner: torero
--

CREATE SEQUENCE service_photos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE service_photos_id_seq OWNER TO torero;

--
-- Name: service_photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: torero
--

ALTER SEQUENCE service_photos_id_seq OWNED BY service_photos.id;


--
-- Name: services; Type: TABLE; Schema: public; Owner: torero
--

CREATE TABLE services (
    id integer NOT NULL,
    name character varying,
    alias_name character varying,
    description text,
    short_description text
);


ALTER TABLE services OWNER TO torero;

--
-- Name: services_id_seq; Type: SEQUENCE; Schema: public; Owner: torero
--

CREATE SEQUENCE services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE services_id_seq OWNER TO torero;

--
-- Name: services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: torero
--

ALTER SEQUENCE services_id_seq OWNED BY services.id;


--
-- Name: settings; Type: TABLE; Schema: public; Owner: torero
--

CREATE TABLE settings (
    id integer NOT NULL,
    name character varying,
    title character varying,
    status integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE settings OWNER TO torero;

--
-- Name: settings_id_seq; Type: SEQUENCE; Schema: public; Owner: torero
--

CREATE SEQUENCE settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE settings_id_seq OWNER TO torero;

--
-- Name: settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: torero
--

ALTER SEQUENCE settings_id_seq OWNED BY settings.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: torero
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE users OWNER TO torero;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: torero
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO torero;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: torero
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: videos; Type: TABLE; Schema: public; Owner: torero
--

CREATE TABLE videos (
    id integer NOT NULL,
    title character varying,
    description text,
    youtube_url character varying,
    published integer DEFAULT 0,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE videos OWNER TO torero;

--
-- Name: videos_id_seq; Type: SEQUENCE; Schema: public; Owner: torero
--

CREATE SEQUENCE videos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE videos_id_seq OWNER TO torero;

--
-- Name: videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: torero
--

ALTER SEQUENCE videos_id_seq OWNED BY videos.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: torero
--

ALTER TABLE ONLY active_admin_comments ALTER COLUMN id SET DEFAULT nextval('active_admin_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: torero
--

ALTER TABLE ONLY articles ALTER COLUMN id SET DEFAULT nextval('articles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: torero
--

ALTER TABLE ONLY awards ALTER COLUMN id SET DEFAULT nextval('awards_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: torero
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: torero
--

ALTER TABLE ONLY ckeditor_assets ALTER COLUMN id SET DEFAULT nextval('ckeditor_assets_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: torero
--

ALTER TABLE ONLY events ALTER COLUMN id SET DEFAULT nextval('events_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: torero
--

ALTER TABLE ONLY members ALTER COLUMN id SET DEFAULT nextval('members_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: torero
--

ALTER TABLE ONLY notepads ALTER COLUMN id SET DEFAULT nextval('notepads_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: torero
--

ALTER TABLE ONLY orders ALTER COLUMN id SET DEFAULT nextval('orders_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: torero
--

ALTER TABLE ONLY photoalbums ALTER COLUMN id SET DEFAULT nextval('photoalbums_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: torero
--

ALTER TABLE ONLY photos ALTER COLUMN id SET DEFAULT nextval('photos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: torero
--

ALTER TABLE ONLY service_photos ALTER COLUMN id SET DEFAULT nextval('service_photos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: torero
--

ALTER TABLE ONLY services ALTER COLUMN id SET DEFAULT nextval('services_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: torero
--

ALTER TABLE ONLY settings ALTER COLUMN id SET DEFAULT nextval('settings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: torero
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: torero
--

ALTER TABLE ONLY videos ALTER COLUMN id SET DEFAULT nextval('videos_id_seq'::regclass);


--
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY active_admin_comments (id, namespace, body, resource_type, resource_id, author_type, author_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('active_admin_comments_id_seq', 1, false);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2017-06-01 19:50:41.44852	2017-06-01 19:50:41.44852
\.


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY articles (id, title, description, short_description, photo, published, date, created_at, updated_at) FROM stdin;
2	Выступление на фестивале водных фонариков	<p>Шоу Беркана представила всем номер &quot;Экспонаты&quot;</p>\r\n	<p>Шоу Беркана представила всем номер &quot;Экспонаты&quot;</p>\r\n	IdcE6aksarU.jpg	1	2017-05-19 00:00:00	2017-06-02 22:32:12.582381	2017-06-18 09:51:02.881452
1	Шолоховская весна и наши ходулисты	<p>Наши ходулисты на Шолоховской весне</p><div class="row"><div class="col-sm-6"><img alt="\\" src="/uploads/ckeditor/pictures/2/content_zwwgi1iEjhs.jpg" style="width: 599px; height: 800px;"/></div><div class="col-sm-6"><img alt="\\" src="/uploads/ckeditor/pictures/1/content_sCRby52XtTQ.jpg" style="width: 532px; height: 800px;"/></div></div>	<p>Нашим ходулистам посчастливилось развлекать участников фестиваля Шолоховская весна</p>\r\n	aSCxHsUFiak.jpg	1	2017-05-27 00:00:00	2017-06-01 20:31:14.467585	2017-06-18 10:10:09.072252
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('articles_id_seq', 2, true);


--
-- Data for Name: awards; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY awards (id, description, link_photo, created_at, updated_at) FROM stdin;
1		ap57mK-Wbo8.jpg	2017-06-06 22:11:38.030157	2017-06-06 22:11:38.030157
2	Фестиваль водных фонариков	Снимок_экрана_от_2017-06-07_12_29_41.png	2017-06-07 09:36:14.142987	2017-06-07 09:36:14.142987
3		0b6mqv6ZS54.jpg	2017-06-08 18:51:58.840714	2017-06-08 18:51:58.840714
4		8dC1j76coJQ.jpg	2017-06-08 18:52:15.471127	2017-06-08 18:52:15.471127
5		81fOgy-vfxQ.jpg	2017-06-08 18:52:29.51165	2017-06-08 18:52:29.51165
6		byDxUMokrLQ.jpg	2017-06-08 18:52:45.201663	2017-06-08 18:52:45.201663
7		cw0wO105SwY.jpg	2017-06-08 18:53:02.110363	2017-06-08 18:53:02.110363
8		eecS-IQlSe8.jpg	2017-06-08 18:53:17.488053	2017-06-08 18:53:17.488053
9		fDV5vswPrF4.jpg	2017-06-08 18:53:35.577218	2017-06-08 18:53:35.577218
10		X-jjAqi9LU0.jpg	2017-06-08 18:53:51.663641	2017-06-08 18:53:51.663641
11		YAgcAwW9l24.jpg	2017-06-08 18:54:05.371905	2017-06-08 18:54:05.371905
\.


--
-- Name: awards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('awards_id_seq', 11, true);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY categories (id, title, created_at, updated_at) FROM stdin;
1	Огненное шоу	2017-06-01 21:11:39.663564	2017-06-01 21:11:39.663564
2	Пиротехническое шоу	2017-06-01 21:11:39.667558	2017-06-01 21:11:39.667558
3	Инсталяции	2017-06-01 21:11:39.671295	2017-06-01 21:11:39.671295
4	Светодиодное шоу	2017-06-01 21:11:39.674306	2017-06-01 21:11:39.674306
5	Мимы	2017-06-01 21:11:39.677989	2017-06-01 21:11:39.677989
6	Ходулисты	2017-06-01 21:11:39.681987	2017-06-01 21:11:39.681987
7	Живые статуи	2017-06-01 21:11:39.684928	2017-06-01 21:11:39.684928
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('categories_id_seq', 7, true);


--
-- Data for Name: ckeditor_assets; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY ckeditor_assets (id, data_file_name, data_content_type, data_file_size, type, width, height, created_at, updated_at) FROM stdin;
1	sCRby52XtTQ.jpg	image/jpeg	181559	Ckeditor::Picture	718	1080	2017-06-18 09:55:18.678161	2017-06-18 09:55:18.678161
2	zwwgi1iEjhs.jpg	image/jpeg	184166	Ckeditor::Picture	719	960	2017-06-18 09:55:50.440561	2017-06-18 09:55:50.440561
3	cp.png	image/png	126648	Ckeditor::Picture	1357	709	2018-01-27 09:56:49.686766	2018-01-27 09:56:49.686766
\.


--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('ckeditor_assets_id_seq', 3, true);


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY events (id, title, address, started_at, created_at, updated_at) FROM stdin;
2	День Рождения Ночных Волков	Ростов-на-Дону. Диллерский центр Harley-Davidson	2017-05-20 22:00:00	2017-06-02 22:25:01.70451	2017-06-02 22:25:01.70451
3	Фестиваль водных фонариков	Ростов-на-Дону, парк Дружбы	2017-05-19 21:00:00	2017-06-02 22:25:59.850468	2017-06-02 22:25:59.850468
4	Ночь в музее	Ростов-на-Дону, Краеведческий музей	2017-05-20 23:00:00	2017-06-02 22:27:09.731881	2017-06-02 22:27:09.731881
5	Грандиозное выступление	Ростов-на-Дону	2017-09-01 22:00:00	2017-06-02 22:28:12.648406	2017-06-18 09:37:03.846876
6	Очередное грандиозное выступление	Ростов-на-Дону	2017-10-07 11:00:00	2017-06-02 22:28:42.322893	2017-06-18 09:37:50.252136
7	И снова грандиозное выступление	Ростов-на-Дону	2017-11-05 18:00:00	2017-06-02 22:29:12.316027	2017-06-18 09:38:17.385927
8	Платоновский Фестиваль	г. Воронеж	2017-06-12 19:00:00	2017-06-18 09:40:38.771869	2017-06-18 09:40:38.771869
1	Шолоховская весна	станица Вёшенская	2018-05-27 20:00:00	2017-06-01 19:54:33.191868	2018-01-27 11:36:43.26034
9	NoF	Азовское взморье	2018-04-27 00:00:00	2018-01-27 11:37:38.993374	2018-01-27 11:37:38.993374
\.


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('events_id_seq', 9, true);


--
-- Data for Name: members; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY members (id, name, description, avatar, created_at, updated_at) FROM stdin;
1	Виктория	Руководитель и режиссер	7lFAAqbbaLw.jpg	2018-01-27 12:01:51.283608	2018-01-27 12:03:17.432544
\.


--
-- Name: members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('members_id_seq', 1, true);


--
-- Data for Name: notepads; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY notepads (id, article_id, event_id, created_at, updated_at) FROM stdin;
1	1	1	2017-06-01 20:45:28.159092	2017-06-01 20:45:28.159092
2	2	3	2017-06-02 22:32:30.714828	2017-06-02 22:32:30.714828
\.


--
-- Name: notepads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('notepads_id_seq', 2, true);


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY orders (id, name, phone, processed, agent, date_create, created_at, updated_at) FROM stdin;
1	Lvbnhb	243243214	0	0	\N	2017-06-10 21:31:41.548636	2017-06-10 21:31:41.548636
\.


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('orders_id_seq', 1, true);


--
-- Data for Name: photoalbums; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY photoalbums (id, photo_id, category_id, created_at, updated_at) FROM stdin;
1	1	1	2017-06-06 09:55:56.15112	2017-06-06 09:55:56.15112
2	2	1	2017-06-06 09:56:22.544496	2017-06-06 09:56:22.544496
3	3	1	2017-06-06 09:56:33.749854	2017-06-06 09:56:33.749854
4	3	1	2017-06-06 09:56:44.627451	2017-06-06 09:56:44.627451
5	6	1	2017-06-06 09:56:54.171275	2018-01-27 12:09:35.944471
6	6	1	2018-01-27 12:12:10.882011	2018-01-27 12:12:10.882011
7	7	1	2018-01-27 12:14:11.24067	2018-01-27 12:14:11.24067
8	8	6	2018-01-27 12:16:15.848742	2018-01-27 12:16:15.848742
9	9	1	2018-01-27 12:18:21.082958	2018-01-27 12:18:21.082958
10	9	4	2018-01-27 12:18:34.222516	2018-01-27 12:18:34.222516
11	9	6	2018-01-27 12:18:44.768615	2018-01-27 12:18:44.768615
\.


--
-- Name: photoalbums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('photoalbums_id_seq', 11, true);


--
-- Data for Name: photos; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY photos (id, title, description, link_photo, published, created_at, updated_at) FROM stdin;
1	огонь	огонь	AmoS7Nq9kWk.jpg	1	2017-06-06 09:28:56.414064	2017-06-06 09:28:56.414064
2	огонь	огонь	bEk1SMb4n_8.jpg	0	2017-06-06 09:29:13.207487	2017-06-06 09:29:13.207487
3	огонь	огонь	H_sCUm0g47o.jpg	0	2017-06-06 09:29:27.765971	2017-06-06 09:29:27.765971
4	огонь	огонь	vE3lsqRpeew.jpg	0	2017-06-06 09:29:41.837522	2017-06-06 09:29:41.837522
5	огонь	огонь	XHmggloHQz0.jpg	1	2017-06-06 09:30:00.283213	2017-06-06 09:30:00.283213
6	КрымFireFest	Шоу программа "Венеция"	9upnLDJ_hXU.jpg	1	2018-01-27 12:07:44.485563	2018-01-27 12:08:15.539419
7	КрымFireFest (Кристина)	КрымFireFest	Z3C9QU6FA14.jpg	0	2018-01-27 12:13:58.992163	2018-01-27 12:13:58.992163
8	Ходулисты (Венеция)	Ходулисты (Венеция) Кинотеатр "Большой"	3yALDrP1z7w.jpg	0	2018-01-27 12:16:01.196538	2018-01-27 12:16:01.196538
9	Экспонаты	Экспонаты - Фестиваль водны фонариков	UQNIsjf-uIE.jpg	0	2018-01-27 12:18:07.080758	2018-01-27 12:18:07.080758
\.


--
-- Name: photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('photos_id_seq', 9, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY schema_migrations (version) FROM stdin;
20170601173817
20170601173840
20170601173905
20170601182417
20170601182931
20170601214130
20170601214131
20170601214132
20170601214133
20170601214134
20170601214135
20170601214136
20170603071601
20170604084641
20170606094915
20170606220045
20170606222241
\.


--
-- Data for Name: service_photos; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY service_photos (id, title, description, link_photo, priority, service_id, created_at, updated_at) FROM stdin;
6	пиротехническое шоу Беркана	пиротехническое шоу Беркана	-4KWvNjFeis.jpg	0	2	2017-06-04 20:29:34.493146	2017-06-04 20:29:34.493146
7	пиротехническое шоу Беркана	пиротехническое шоу Беркана	043UD73LOD0.jpg	1	2	2017-06-04 20:29:56.444952	2017-06-04 20:29:56.444952
8	пиротехническое шоу Беркана	пиротехническое шоу Беркана	l72L7hz814Q.jpg	2	2	2017-06-04 20:30:23.37884	2017-06-04 20:30:23.37884
9	пиротехническое шоу Беркана	пиротехническое шоу Беркана	L6uexDvGQBs.jpg	3	2	2017-06-04 20:30:49.964801	2017-06-04 20:30:49.964801
11	ходулисты Беркана	ходулисты Беркана	X__I96rkFowV0o.jpg	1	6	2017-06-04 22:42:11.356991	2017-06-04 22:42:11.356991
12	ходулисты Беркана	ходулисты Беркана	X__1aezKz9WLq4.jpg	2	6	2017-06-04 22:42:35.629061	2017-06-04 22:42:35.629061
13	ходулисты Беркана	ходулисты Беркана	X__vPTtu1-hCFs.jpg	3	6	2017-06-04 22:43:09.21879	2017-06-04 22:43:09.21879
15	мимы Беркана	мимы Беркана	0gJEEEoVZNQ.jpg	1	4	2017-06-04 22:44:12.264445	2017-06-04 22:44:12.264445
16	мимы Беркана	мимы Беркана	1VvD0vCT7cQ.jpg	2	4	2017-06-04 22:44:35.493258	2017-06-04 22:44:35.493258
17	мимы Беркана	мимы Беркана	XDkvTBOZ0lU.jpg	3	4	2017-06-04 22:45:03.696361	2017-06-04 22:45:03.696361
18	светодиодное шоу Беркана	светодиодное шоу Беркана	L_Yyng5KG2aC0.jpg	0	3	2017-06-05 05:53:32.168063	2017-06-05 05:53:32.168063
19	светодиодное шоу Беркана	светодиодное шоу Беркана	L_47-FoCduB4Q.jpg	1	3	2017-06-05 05:54:03.151744	2017-06-05 05:54:03.151744
20	светодиодное шоу Беркана	светодиодное шоу Беркана	L_A2__pSxJpY8.jpg	2	3	2017-06-05 05:54:27.820174	2017-06-05 05:54:27.820174
21	светодиодное шоу Беркана	светодиодное шоу Беркана	L_GzFKm3BldVA.jpg	3	3	2017-06-05 05:54:55.571217	2017-06-05 05:54:55.571217
23	живые статуи Беркана	живые статуи Беркана	LS_kyLp-MpDnGQ.jpg	1	5	2017-06-05 06:11:15.595141	2017-06-05 06:11:15.595141
24	живые статуи Беркана	живые статуи Беркана	LS_OlD4bvucKag.jpg	2	5	2017-06-05 06:11:47.556675	2017-06-05 06:11:47.556675
25	живые статуи Беркана	живые статуи Беркана	LS_SdN58K96nFY.jpg	3	5	2017-06-05 06:12:23.958257	2017-06-05 06:12:23.958257
14	мимы Беркана	мимы Беркана	g_chvk_-y9c.jpg	0	4	2017-06-04 22:43:53.328574	2018-01-27 11:12:23.143797
10	ходулисты Беркана	ходулисты Беркана	DB9HOwN9rWw.jpg	0	6	2017-06-04 22:41:46.741302	2018-01-27 11:17:57.259739
5	огненное шоу Беркана	огненное шоу Беркана	ikvoPuXehUI.jpg	0	1	2017-06-04 09:30:24.704999	2018-01-27 11:26:17.368144
22	живые статуи Беркана	живые статуи Беркана	UEZsz1LQUAw.jpg	0	5	2017-06-05 06:10:50.696988	2018-01-27 11:32:37.015818
3	огненное шоу Беркана	огненное шоу Беркана	project-thumb1.jpg	2	1	2017-06-04 09:29:26.525198	2018-01-27 11:42:30.295355
4	огненное шоу Беркана	огненное шоу Беркана	oLB8ft9SlyQ.jpg	3	1	2017-06-04 09:29:55.058087	2018-01-27 11:48:06.300409
1	огненное шоу Беркана	огненное шоу Беркана	y2fAzVw_tTM.jpg	4	1	2017-06-04 09:28:37.103301	2018-01-27 11:52:43.42697
2	огненное шоу Беркана	огненное шоу Беркана	oLB8ft9SlyQ.jpg	1	1	2017-06-04 09:29:02.947744	2018-01-27 11:54:01.38002
\.


--
-- Name: service_photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('service_photos_id_seq', 25, true);


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY services (id, name, alias_name, description, short_description) FROM stdin;
4	Мимы	mim	<p>Корпоратив? &nbsp;Вечеринка? &nbsp;Хочется оригинальности? Это возможно! Мимы сделают Ваше торжество незабываемым событием, в результате которого у всех останутся положительные эмоции. &nbsp;Поэтому не удивительно, что мимы становятся все более востребованы. С чего начать? Да можно прямо со входа! Мимы на вэлком-зону, &nbsp;будут встречать и развлекать гостей смешными импровизациями и образами! Не важно, детское это торжество, свадьба, день рождения или официальная презентация на выставках &ndash; Мимы на праздник очаруют всех оригинальным &nbsp;действием!</p>\r\n	<p>Мимы сделают Ваше торжество незабываемым событием</p>\r\n
1	Огненное шоу	fire	<p class="text-muted_about_us_red_theme"> Неотъемлемой частью почти любого праздничного события стало наличие оригинального кульминационного завершения. Этим завершением может быть огненное шоу с различными дополнениями. В рамках огненного шоу мы можем предложить:</p><ul><li><p class="text-muted_about_us_red_theme"> Огненное шоу на свадьбу – развлечение для гостей, оригинальный подарок для молодых</p></li><li><p class="text-muted_about_us_red_theme"> Огненное тематическое шоу - яркие, зажигательные шоу-программы для искушенного зрителя</p></li><li><p class="text-muted_about_us_red_theme"> Огненная исталляция – огненное сердце (сердца), огненные инициалы или надписи, огненные логотипы</p></li></ul><br />	<p>Огненное шоу</p>\r\n
2	Пиротехническое шоу	piro	<p>В зависимости от программы и сценария праздника можно всегда подобрать и провести индивидуальное пиротехническое шоу, которое сможет передать всю атмосферу и значимость торжественного события.<br />\r\nНаша команда использует огромное количество разнообразной пиротехники, так что каждая пиротехническая программа будет уникальной!<br />\r\nШоу Беркана предлагает Вам яркое пиротехническое оформление мероприятий, как в дополнение к основной программе, так и отдельной услугой. Проконсультироваться о возможностях использования пиротехнического шоу можно связавшись с нами любым удобным способом.<br />\r\nВы можете выбрать именно ту пиротехническую программу, которая подходит именно Вам!</p>\r\n	<p>ВЫ МОЖЕТЕ ВЫБРАТЬ ИМЕННО ТУ ПИРОТЕХНИЧЕСКУЮ ПРОГРАММУ, КОТОРАЯ ПОДХОДИТ ИМЕННО ВАМ!</p>\r\n
3	Светодиодное шоу	light	<p>Светодиодное шоу - прекрасная альтернатива огненному шоу.</p>\r\n\r\n<p>У световых шоу есть неоспоримые преимущества: они совершенно безопасны в любом помещении и неизменно производят впечатление. Пригласите талантливых и отлично зарекомендовавших себя исполнителей, чтобы украсить световым шоу юбилей, банкет, свадебное торжество или любой другой праздник.</p>\r\n\r\n<p>Феерическое шоу с профессиональными артистами в светодиодных костюмах, использующих специальный реквизит, полностью захватит внимание гостей и вызовет бурю эмоций.</p>\r\n	<p>ФЕЕРИЧЕСКОЕ ШОУ С ПРОФЕССИОНАЛЬНЫМИ АРТИСТАМИ В СВЕТОДИОДНЫХ КОСТЮМАХ.</p>\r\n
5	Живые статуи	living_statues	<p>Живые статуи &ndash; это интерактивное шоу артистов, новое направление в современном искусстве. Живые статуи, или живые скульптуры &ndash; это образ, созданный при помощи специально разработанного грима, костюма и техники пантомимы.<br />\r\nЖивая статуя &mdash; одновременно очень сложный и очень простой вид уличного перформанса. Почему простой? Потому что зрителей обманывает легкость и естественность исполнения! Почему сложный? Потому что для создания по-настоящему живой статуи требуются усилия целой команды художников, декораторов, бутафоров, а также профессиональный актер. Или жонглер, танцор или спортсмен &mdash; зависит от образа!</p>\r\n	<p>Живые статуи &ndash; это интерактивное шоу артистов, новое направление в современном искусстве.</p>\r\n
6	Ходулисты	stilted	<p>Настоящие великаны на вашем празднике!<br />\r\n&quot;На голову выше!&quot; - теперь это не просто принцип нашей работы, это очень точное описание ярких, интересных образов, не заметить которые на празднике любого масштаба просто невозможно.<br />\r\nВстречайте - невероятные и неподражаемые эквилибристы на ходулях!<br />\r\nАртисты, рядом с которыми обязательно постараются запечатлеть себя все Ваши гости, на которых с восторгом будут смотреть дети, - артисты, присутствие которых на Вашем празднике оставит незабываемые воспоминания.</p>\r\n	<p>Встречайте - невероятные и неподражаемые эквилибристы на ходулях!</p>\r\n
\.


--
-- Name: services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('services_id_seq', 6, true);


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY settings (id, name, title, status, created_at, updated_at) FROM stdin;
1	sms_notification	SMS-уведомления	0	2017-06-01 21:17:45.791426	2017-06-01 21:17:45.791426
2	sms_notification	SMS-уведомления	0	2018-01-27 09:52:47.248455	2018-01-27 09:52:47.248455
3	sms_notification	SMS-уведомления	0	2018-01-28 17:30:39.319209	2018-01-28 17:30:39.319209
\.


--
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('settings_id_seq', 3, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
2	admin@example.com	$2a$11$wPbSkR8G2pTsJZfqtN8qpe3cQwTYmyffBzKT57Ki6/DlUOgdcRvJe	\N	\N	\N	2	2018-01-27 12:26:48.238479	2018-01-27 09:53:28.452852	127.0.0.1	127.0.0.1	2018-01-27 09:52:47.226966	2018-01-27 12:26:48.240855
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('users_id_seq', 3, true);


--
-- Data for Name: videos; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY videos (id, title, description, youtube_url, published, created_at, updated_at) FROM stdin;
1	Огненный индеец	Огненный индеец	https://www.youtube.com/embed/LUAVF6HvOkE	0	2017-06-07 20:12:57.778019	2017-06-07 20:12:57.778019
2	Огненно-пиротехническое шоу Беркана	Огненно-пиротехническое шоу Беркана	https://www.youtube.com/embed/IRt_EooyoYw	0	2017-06-07 20:27:09.937793	2017-06-07 20:27:51.976518
3	Огненное шоу в стиле рок	Огненное шоу в стиле рок	https://www.youtube.com/embed/Nx_5NdyWQVY	0	2017-06-07 20:28:49.92171	2017-06-07 20:28:49.92171
4	Огненная классика	Огненная классика	https://www.youtube.com/embed/4zz7VDIoxJU	0	2017-06-07 20:36:13.788229	2017-06-07 20:36:13.788229
5	Световое шоу Беркана - Индейцы	Световое шоу Беркана - Индейцы	https://www.youtube.com/embed/IZCQGwhjAhs	0	2017-06-07 20:38:48.537917	2017-06-07 20:38:48.537917
\.


--
-- Name: videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('videos_id_seq', 6, true);


--
-- Name: active_admin_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: torero
--

ALTER TABLE ONLY active_admin_comments
    ADD CONSTRAINT active_admin_comments_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: torero
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: articles_pkey; Type: CONSTRAINT; Schema: public; Owner: torero
--

ALTER TABLE ONLY articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: awards_pkey; Type: CONSTRAINT; Schema: public; Owner: torero
--

ALTER TABLE ONLY awards
    ADD CONSTRAINT awards_pkey PRIMARY KEY (id);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: torero
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: ckeditor_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: torero
--

ALTER TABLE ONLY ckeditor_assets
    ADD CONSTRAINT ckeditor_assets_pkey PRIMARY KEY (id);


--
-- Name: events_pkey; Type: CONSTRAINT; Schema: public; Owner: torero
--

ALTER TABLE ONLY events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: members_pkey; Type: CONSTRAINT; Schema: public; Owner: torero
--

ALTER TABLE ONLY members
    ADD CONSTRAINT members_pkey PRIMARY KEY (id);


--
-- Name: notepads_pkey; Type: CONSTRAINT; Schema: public; Owner: torero
--

ALTER TABLE ONLY notepads
    ADD CONSTRAINT notepads_pkey PRIMARY KEY (id);


--
-- Name: orders_pkey; Type: CONSTRAINT; Schema: public; Owner: torero
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: photoalbums_pkey; Type: CONSTRAINT; Schema: public; Owner: torero
--

ALTER TABLE ONLY photoalbums
    ADD CONSTRAINT photoalbums_pkey PRIMARY KEY (id);


--
-- Name: photos_pkey; Type: CONSTRAINT; Schema: public; Owner: torero
--

ALTER TABLE ONLY photos
    ADD CONSTRAINT photos_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: torero
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: service_photos_pkey; Type: CONSTRAINT; Schema: public; Owner: torero
--

ALTER TABLE ONLY service_photos
    ADD CONSTRAINT service_photos_pkey PRIMARY KEY (id);


--
-- Name: services_pkey; Type: CONSTRAINT; Schema: public; Owner: torero
--

ALTER TABLE ONLY services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);


--
-- Name: settings_pkey; Type: CONSTRAINT; Schema: public; Owner: torero
--

ALTER TABLE ONLY settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: torero
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: videos_pkey; Type: CONSTRAINT; Schema: public; Owner: torero
--

ALTER TABLE ONLY videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);


--
-- Name: index_active_admin_comments_on_author_type_and_author_id; Type: INDEX; Schema: public; Owner: torero
--

CREATE INDEX index_active_admin_comments_on_author_type_and_author_id ON active_admin_comments USING btree (author_type, author_id);


--
-- Name: index_active_admin_comments_on_namespace; Type: INDEX; Schema: public; Owner: torero
--

CREATE INDEX index_active_admin_comments_on_namespace ON active_admin_comments USING btree (namespace);


--
-- Name: index_active_admin_comments_on_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: torero
--

CREATE INDEX index_active_admin_comments_on_resource_type_and_resource_id ON active_admin_comments USING btree (resource_type, resource_id);


--
-- Name: index_ckeditor_assets_on_type; Type: INDEX; Schema: public; Owner: torero
--

CREATE INDEX index_ckeditor_assets_on_type ON ckeditor_assets USING btree (type);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: torero
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: torero
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

