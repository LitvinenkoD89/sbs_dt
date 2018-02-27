--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.11
-- Dumped by pg_dump version 9.5.11

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
    updated_at timestamp without time zone NOT NULL,
    priority integer
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
1	Шолоховская весна и наши ходулисты	<p>Наши ходулисты на Шолоховской весне</p>\r\n\r\n<div class="row">\r\n<div class="col-sm-6"><img alt="\\" src="/uploads/ckeditor/pictures/2/content_zwwgi1iEjhs.jpg" style="width: 599px; height: 800px;" /></div>\r\n\r\n<div class="col-sm-6"><img alt="\\" src="/uploads/ckeditor/pictures/1/content_sCRby52XtTQ.jpg" style="width: 532px; height: 800px;" /></div>\r\n</div>\r\n	<p>Нашим ходулистам посчастливилось развлекать участников фестиваля Шолоховская весна</p>\r\n	aSCxHsUFiak.jpg	0	2017-05-27 00:00:00	2017-06-01 20:31:14.467585	2018-02-26 12:12:12.327059
3	Выставка «Шарм»	<p>Грандиозный показ итальянской коллекции ELGON ELEGANCE Women Edition в России состоялся 9 февраля в рамках выставки &laquo;Шарм&raquo;. Ранее коллекция была презентована представителям 79 стран мира на закрытом показе в Италии и имела огромный успех, который подтвердился и в Ростове-на-Дону.&nbsp;<br />\r\nПарикмахерское шоу подобного формата и уровня проходило в Ростове-на-Дону впервые.&nbsp;</p>\r\n\r\n<p><img alt="" src="/uploads/ckeditor/pictures/4/content_8_APkDe_jKs.jpg" style="width: 800px; height: 533px;" /></p>\r\n\r\n<p><img alt="" src="/uploads/ckeditor/pictures/5/content_RT1yr0WhT24.jpg" style="width: 800px; height: 533px;" /></p>\r\n\r\n<p><img alt="" src="/uploads/ckeditor/pictures/6/content_N0itS0liwzA.jpg" style="width: 800px; height: 533px;" /></p>\r\n\r\n<p>&nbsp;</p>\r\n	<p>Грандиозный показ итальянской коллекции ELGON ELEGANCE Women Edition</p>\r\n	8_APkDe_jKs.jpg	1	2018-02-09 00:00:00	2018-02-26 11:59:17.264994	2018-02-26 12:07:53.218874
4	Масленица!	<p>Веселые масленичные гуляния вместе с артистами шоу &quot;Беркана&quot;</p>\r\n\r\n<p><img alt="" src="/uploads/ckeditor/pictures/7/content_GBGXi-1q97g.jpg" style="width: 641px; height: 800px;" /></p>\r\n\r\n<p><img alt="" src="/uploads/ckeditor/pictures/8/content_HugNTTqfp_8.jpg" style="width: 639px; height: 800px;" /></p>\r\n\r\n<p><img alt="" src="/uploads/ckeditor/pictures/9/content_lXYkM58gM8I.jpg" style="width: 642px; height: 800px;" /></p>\r\n\r\n<p><img alt="" src="/uploads/ckeditor/pictures/10/content_Xrou_jIxGpk.jpg" style="width: 639px; height: 800px;" /></p>\r\n	<p>Масленица 2018</p>\r\n	8_APkDe_jKs.jpg	1	2018-02-18 00:00:00	2018-02-26 12:25:36.950147	2018-02-26 12:25:36.950147
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('articles_id_seq', 4, true);


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
4	8_APkDe_jKs.jpg	image/jpeg	303860	Ckeditor::Picture	2560	1704	2018-02-26 11:57:02.357085	2018-02-26 11:57:02.357085
5	RT1yr0WhT24.jpg	image/jpeg	383750	Ckeditor::Picture	2560	1704	2018-02-26 11:57:22.172637	2018-02-26 11:57:22.172637
6	N0itS0liwzA.jpg	image/jpeg	169681	Ckeditor::Picture	2560	1704	2018-02-26 11:58:43.333415	2018-02-26 11:58:43.333415
7	GBGXi-1q97g.jpg	image/jpeg	369350	Ckeditor::Picture	865	1080	2018-02-26 12:24:35.026078	2018-02-26 12:24:35.026078
8	HugNTTqfp_8.jpg	image/jpeg	164891	Ckeditor::Picture	863	1080	2018-02-26 12:24:49.302087	2018-02-26 12:24:49.302087
9	lXYkM58gM8I.jpg	image/jpeg	114325	Ckeditor::Picture	854	1065	2018-02-26 12:25:02.504749	2018-02-26 12:25:02.504749
10	Xrou_jIxGpk.jpg	image/jpeg	367818	Ckeditor::Picture	863	1080	2018-02-26 12:25:16.631469	2018-02-26 12:25:16.631469
\.


--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('ckeditor_assets_id_seq', 10, true);


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY events (id, title, address, started_at, created_at, updated_at) FROM stdin;
2	День Рождения Ночных Волков	Ростов-на-Дону. Диллерский центр Harley-Davidson	2017-05-20 22:00:00	2017-06-02 22:25:01.70451	2017-06-02 22:25:01.70451
3	Фестиваль водных фонариков	Ростов-на-Дону, парк Дружбы	2017-05-19 21:00:00	2017-06-02 22:25:59.850468	2017-06-02 22:25:59.850468
4	Ночь в музее	Ростов-на-Дону, Краеведческий музей	2017-05-20 23:00:00	2017-06-02 22:27:09.731881	2017-06-02 22:27:09.731881
8	Платоновский Фестиваль	г. Воронеж	2017-06-12 19:00:00	2017-06-18 09:40:38.771869	2017-06-18 09:40:38.771869
9	NoF	Азовское взморье	2018-04-27 00:00:00	2018-01-27 11:37:38.993374	2018-01-27 11:37:38.993374
10	Ежегодная свадебная выставка "Свадебный бутик"	Ростов-на-Дону, ТРЦ "Золотой Вавилон"	2018-03-02 10:00:00	2018-02-26 11:33:44.026948	2018-02-26 11:33:44.026948
11	Выставка «Шарм» - показ коллекции "ELGON ELEGANCE Women Edition"	г. Ростов-на-Дону, Нагибина 30. Выставочный центр ВертолЭкспо	2018-02-09 18:00:00	2018-02-26 11:38:33.249034	2018-02-26 11:38:33.249034
12	Масленица!	Ростов-на-Дону	2018-02-18 11:00:00	2018-02-26 12:16:51.799019	2018-02-26 12:16:51.799019
\.


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('events_id_seq', 12, true);


--
-- Data for Name: members; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY members (id, name, description, avatar, created_at, updated_at, priority) FROM stdin;
2	Владимир	Концертный директор, пиротехник, артист	U-80FCpQzj8.jpg	2018-02-26 11:14:16.409926	2018-02-26 13:31:53.513147	1
6	Алина	Артист, дизайнер	IMG-20171207-WA0073.jpg	2018-02-26 13:26:18.061881	2018-02-26 13:32:21.34601	5
5	Дмитрий	Артист, мастер по реквизиту	d8l1SjO2wsg.jpg	2018-02-26 13:24:43.150033	2018-02-27 06:56:18.851682	2
4	Александр	Артист, мастер по реквизиту	0IjwazqvAx8.jpg	2018-02-26 11:15:38.828522	2018-02-27 06:56:32.14874	4
7	Ира	Артист	xpUSfbrWZf8.jpg	2018-02-26 13:37:38.162225	2018-02-27 06:57:04.354005	6
8	Олег	Артист	IYadJPcBYiI.jpg	2018-02-26 13:47:23.796203	2018-02-27 06:57:13.473483	7
9	Кристина	Артист	Q7uksEx3Bjo.jpg	2018-02-27 06:57:37.389667	2018-02-27 06:57:37.389667	8
10	Александр	Артист, мим	KEvG40ZUZOA.jpg	2018-02-27 06:58:57.998689	2018-02-27 06:58:57.998689	9
1	Виктория	Руководитель, режиссер, дизайнер, артист	7lFAAqbbaLw.jpg	2018-01-27 12:01:51.283608	2018-02-27 06:59:20.647738	0
11	Оля	Артист	k00fzxRNdxQ.jpg	2018-02-27 07:08:22.575583	2018-02-27 07:08:22.575583	10
3	Елена	Артист, SMM менеджер	aZDJD4SMCtU.jpg	2018-02-26 11:15:13.499343	2018-02-27 07:22:50.255939	3
12	Сергей	Артист, мастер рыцарского направления	5Y4rMOguKoc.jpg	2018-02-27 07:10:03.408446	2018-02-27 07:23:14.15307	11
\.


--
-- Name: members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('members_id_seq', 12, true);


--
-- Data for Name: notepads; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY notepads (id, article_id, event_id, created_at, updated_at) FROM stdin;
1	1	1	2017-06-01 20:45:28.159092	2017-06-01 20:45:28.159092
2	2	3	2017-06-02 22:32:30.714828	2017-06-02 22:32:30.714828
3	3	11	2018-02-26 11:59:58.037767	2018-02-26 11:59:58.037767
4	4	12	2018-02-26 12:32:01.831482	2018-02-26 12:32:01.831482
\.


--
-- Name: notepads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('notepads_id_seq', 4, true);


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY orders (id, name, phone, processed, agent, date_create, created_at, updated_at) FROM stdin;
1	Lvbnhb	243243214	0	0	\N	2017-06-10 21:31:41.548636	2017-06-10 21:31:41.548636
2	DrimVonAnem	ывпвыпывп	0	0	\N	2018-02-26 08:08:56.874493	2018-02-26 08:08:56.874493
3	DrimVonAnem	ывпвыпывп	0	0	\N	2018-02-26 09:38:38.616673	2018-02-26 09:38:38.616673
4	DrimVonAnem	ывпвыпывп	0	0	\N	2018-02-26 09:41:26.975936	2018-02-26 09:41:26.975936
5	torerolda@gmail.com	+7 951 52840 82	0	0	\N	2018-02-26 10:15:05.019332	2018-02-26 10:15:05.019332
6	torerolda@gmail.com	+7 951 52840 82	0	0	\N	2018-02-26 10:16:17.665766	2018-02-26 10:16:17.665766
7	torerolda@gmail.com	+7 951 52840 82	0	0	\N	2018-02-26 10:21:58.030063	2018-02-26 10:21:58.030063
8	torerolda@gmail.com	+7 951 52840 82	0	0	\N	2018-02-26 10:30:00.758029	2018-02-26 10:30:00.758029
9	torerolda@gmail.com	+7 951 52840 82	0	0	\N	2018-02-26 10:38:35.910358	2018-02-26 10:38:35.910358
10	torerolda@gmail.com	+7 951 52840 82	0	0	\N	2018-02-26 10:39:56.065729	2018-02-26 10:39:56.065729
11	torerolda@gmail.com	+7 951 52840 82	0	0	\N	2018-02-26 10:40:40.777934	2018-02-26 10:40:40.777934
12	torerolda@gmail.com	+7 951 52840 82	0	0	\N	2018-02-26 10:47:21.172259	2018-02-26 10:47:21.172259
\.


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('orders_id_seq', 12, true);


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
12	10	5	2018-02-26 12:41:38.850566	2018-02-26 12:41:38.850566
13	11	5	2018-02-26 12:42:43.193331	2018-02-26 12:42:43.193331
14	12	5	2018-02-26 12:43:23.709035	2018-02-26 12:43:23.709035
15	13	4	2018-02-26 12:44:25.796724	2018-02-26 12:44:25.796724
16	14	4	2018-02-26 12:45:25.464486	2018-02-26 12:45:25.464486
17	15	4	2018-02-26 12:46:04.179808	2018-02-26 12:46:04.179808
18	16	4	2018-02-26 12:46:58.459284	2018-02-26 12:46:58.459284
19	17	5	2018-02-26 12:50:11.793206	2018-02-26 12:50:11.793206
20	18	6	2018-02-26 12:51:19.347696	2018-02-26 12:51:19.347696
21	19	7	2018-02-26 12:54:51.760277	2018-02-26 12:54:51.760277
22	20	5	2018-02-26 12:55:59.899185	2018-02-26 12:55:59.899185
23	21	4	2018-02-26 12:57:10.688949	2018-02-26 12:57:10.688949
24	22	4	2018-02-26 12:58:00.409652	2018-02-26 12:58:00.409652
25	23	1	2018-02-26 12:58:44.765699	2018-02-26 12:58:44.765699
26	23	6	2018-02-26 12:58:58.478469	2018-02-26 12:58:58.478469
27	23	4	2018-02-26 12:59:13.599416	2018-02-26 12:59:13.599416
28	24	1	2018-02-26 13:00:51.466978	2018-02-26 13:00:51.466978
29	24	1	2018-02-26 13:01:23.620923	2018-02-26 13:01:23.620923
30	25	6	2018-02-26 13:02:27.552395	2018-02-26 13:02:27.552395
31	26	4	2018-02-26 13:03:32.438806	2018-02-26 13:03:32.438806
32	27	6	2018-02-26 13:04:19.125037	2018-02-26 13:04:19.125037
33	28	1	2018-02-26 13:05:45.657965	2018-02-26 13:05:45.657965
34	28	6	2018-02-26 13:05:57.975459	2018-02-26 13:05:57.975459
35	28	4	2018-02-26 13:06:10.255658	2018-02-26 13:06:10.255658
36	29	1	2018-02-26 13:07:20.348891	2018-02-26 13:07:20.348891
37	30	5	2018-02-26 13:08:01.561253	2018-02-26 13:08:01.561253
38	31	5	2018-02-26 13:09:00.48811	2018-02-26 13:09:00.48811
39	32	6	2018-02-26 13:09:42.804697	2018-02-26 13:09:42.804697
40	33	1	2018-02-26 13:10:31.544384	2018-02-26 13:10:31.544384
41	34	1	2018-02-26 13:11:27.232501	2018-02-26 13:11:27.232501
42	35	1	2018-02-26 13:14:35.989535	2018-02-26 13:14:35.989535
43	37	4	2018-02-26 13:16:01.667383	2018-02-26 13:16:01.667383
44	35	6	2018-02-26 13:16:16.303259	2018-02-26 13:16:16.303259
45	38	6	2018-02-26 13:18:32.717239	2018-02-26 13:18:32.717239
46	39	7	2018-02-26 13:19:18.417251	2018-02-26 13:19:18.417251
\.


--
-- Name: photoalbums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('photoalbums_id_seq', 46, true);


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
10	Мимы под зонтом	Мимы под зонтом	1E56xwhAsg.jpg	1	2018-02-26 12:41:24.816061	2018-02-26 12:41:24.816061
11	Мимы - "Венеция" - Кинотетр Большой	Мимы - "Венеция" - Кинотетр Большой	2F0A1684.jpg	1	2018-02-26 12:42:30.281452	2018-02-26 12:42:30.281452
12	Мимы - "Венеция" - Кинотетр Большой 1	Мимы - "Венеция" - Кинотетр Большой 1	2F0A1687.jpg	1	2018-02-26 12:43:13.771177	2018-02-26 12:43:13.771177
13	Свет Индейцы	Свет Индейцы	9cOC8AqmfvU.jpg	1	2018-02-26 12:44:13.952609	2018-02-26 12:44:13.952609
14	Свет - Крылья 1	Свет - Крылья 1	11_11_17_inet-_474.jpg	1	2018-02-26 12:45:16.820658	2018-02-26 12:45:16.820658
15	Свет - Крылья 2	Свет - Крылья 2	11_11_17_inet-_475.jpg	1	2018-02-26 12:45:52.919731	2018-02-26 12:45:52.919731
16	Свет - Крылья 3	Свет - Крылья 3	11_11_17_inet-_484.jpg	1	2018-02-26 12:46:47.871559	2018-02-26 12:46:47.871559
17	Белый мим	Белый мим	aZPlRrKjNmU.jpg	1	2018-02-26 12:49:54.454188	2018-02-26 12:49:54.454188
18	Ходулисты Bridge of arts 1	Ходулисты Bridge of arts 1	g63yRkcHg5U.jpg	1	2018-02-26 12:51:05.514866	2018-02-26 12:51:05.514866
19	Статуя Ангела	Статуя Ангела	geometria-60105532-photo.jpg	1	2018-02-26 12:54:39.499536	2018-02-26 12:54:39.499536
20	Мимы - "Венеция" - Кинотетр Большой 2	Мимы - "Венеция" - Кинотетр Большой 2	geometria-64392523-photo.jpg	1	2018-02-26 12:55:23.234081	2018-02-26 12:55:23.234081
21	Светодиодное шоу Хеллоуин 1	Светодиодное шоу Хеллоуин 1	geometria-64434246-photo.jpg	1	2018-02-26 12:56:47.554794	2018-02-26 12:56:47.554794
22	Светодиодное шоу Хеллоуин 2	Светодиодное шоу Хеллоуин 2	geometria-64434248-photo.jpg	1	2018-02-26 12:57:45.390789	2018-02-26 12:57:45.390789
23	Экспонаты - огонь	Экспонаты - огонь	Image00648.jpg	1	2018-02-26 12:58:34.876993	2018-02-26 12:58:34.876993
24	Венеция Крым 2017	Венеция Крым 2017	IMG_7411.jpg	1	2018-02-26 13:00:38.056648	2018-02-26 13:00:38.056648
25	Венеция - Ходулисты	Венеция - Ходулисты	IMG-20171004-WA0001.jpg	1	2018-02-26 13:02:13.416822	2018-02-26 13:02:13.416822
26	Демоны - Свет	Демоны - Свет	IMG-20171110-WA0025.jpg	1	2018-02-26 13:03:15.880525	2018-02-26 13:03:15.880525
27	Ходулисты-скоморохи	Ходулисты-скоморохи	IMG-20171201-WA0072.jpg	1	2018-02-26 13:04:04.043244	2018-02-26 13:04:04.043244
28	Экспонаты - фестиваль фонариков	Экспонаты - фестиваль фонариков	IMG-20171207-WA0055.jpg	1	2018-02-26 13:05:20.087397	2018-02-26 13:05:20.087397
29	Огонь - классика	Огонь - классика	IMG-20171207-WA0073.jpg	1	2018-02-26 13:07:06.770101	2018-02-26 13:07:06.770101
30	Венеция - мимы	Венеция - мимы	IMG-20171207-WA0076.jpg	1	2018-02-26 13:07:50.671373	2018-02-26 13:07:50.671373
31	Мим Ви Алиса	Мим Ви Алиса	iU7UAIjasc.jpg	1	2018-02-26 13:08:47.416084	2018-02-26 13:08:47.416084
32	Ходулисты Bridge of arts 2	Ходулисты Bridge of arts 2	JVC6r07uP4c.jpg	1	2018-02-26 13:09:31.593322	2018-02-26 13:09:31.593322
33	Венеция - Крым 2017 - Короны	Венеция - Крым 2017 - Короны	mv-cQQyd5tQ.jpg	1	2018-02-26 13:10:22.074253	2018-02-26 13:10:22.074253
34	Венеция - Крым 2017 - Короны 2	Венеция - Крым 2017 - Короны 2	nw6QPd5WmUY.jpg	1	2018-02-26 13:11:00.627891	2018-02-26 13:11:00.627891
35	Крым Огонь 2017	Крым Огонь 2017	ow5dS-3n-ag.jpg	1	2018-02-26 13:14:20.915276	2018-02-26 13:14:20.915276
36	Рыцари	Рыцари	pbQq0p-7hMw.jpg	1	2018-02-26 13:15:11.731771	2018-02-26 13:15:11.731771
37	Светодиодное шоу Барабаны	Светодиодное шоу Барабаны	RT1yr0WhT24.jpg	1	2018-02-26 13:15:50.090917	2018-02-26 13:15:50.090917
38	Ходулисты Bridge of arts 3	Ходулисты Bridge of arts 3	vL9PqAFfqqs.jpg	1	2018-02-26 13:18:19.193258	2018-02-26 13:18:19.193258
39	Живой фонтан	Живой фонтан	zwsNcVjATQ.jpg	1	2018-02-26 13:19:03.465283	2018-02-26 13:19:03.465283
\.


--
-- Name: photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('photos_id_seq', 39, true);


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
20180226133000
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
20	светодиодное шоу Беркана	светодиодное шоу Беркана	lhUAmKMzCsw.jpg	2	3	2017-06-05 05:54:27.820174	2018-02-26 15:24:25.853068
21	светодиодное шоу Беркана	светодиодное шоу Беркана	8_APkDe_jKs.jpg	3	3	2017-06-05 05:54:55.571217	2018-02-27 07:26:34.741797
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
3	sms_notification	SMS-уведомления	1	2018-01-28 17:30:39.319209	2018-02-26 09:40:53.061489
\.


--
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('settings_id_seq', 3, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
2	admin@example.com	$2a$11$wPbSkR8G2pTsJZfqtN8qpe3cQwTYmyffBzKT57Ki6/DlUOgdcRvJe	\N	\N	\N	5	2018-02-26 17:37:29.842356	2018-02-26 17:25:41.895713	127.0.0.1	127.0.0.1	2018-01-27 09:52:47.226966	2018-02-26 17:37:29.845802
4	torerolda@gmail.ru	$2a$11$lqxSqV9RIplc3yun6kAjQuM1N3907Rn8iVBW54U/y0rdPVWCGu9aO	\N	\N	\N	0	\N	\N	\N	\N	2018-02-27 07:27:41.682217	2018-02-27 07:27:41.682217
5	viktoriya@berkana-show.ru	$2a$11$fgN47osuDQXJo5lqpKrhaOj5YlYapMvwVVqCh4/TbNY7UTx9imKqq	\N	\N	\N	0	\N	\N	\N	\N	2018-02-27 07:27:44.040257	2018-02-27 07:27:44.040257
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: torero
--

SELECT pg_catalog.setval('users_id_seq', 5, true);


--
-- Data for Name: videos; Type: TABLE DATA; Schema: public; Owner: torero
--

COPY videos (id, title, description, youtube_url, published, created_at, updated_at) FROM stdin;
1	Огненный индеец	Огненный индеец	https://www.youtube.com/embed/LUAVF6HvOkE	0	2017-06-07 20:12:57.778019	2017-06-07 20:12:57.778019
2	Огненно-пиротехническое шоу Беркана	Огненно-пиротехническое шоу Беркана	https://www.youtube.com/embed/IRt_EooyoYw	0	2017-06-07 20:27:09.937793	2017-06-07 20:27:51.976518
3	Огненное шоу в стиле рок	Огненное шоу в стиле рок	https://www.youtube.com/embed/Nx_5NdyWQVY	0	2017-06-07 20:28:49.92171	2017-06-07 20:28:49.92171
4	Огненная классика	Огненная классика	https://www.youtube.com/embed/4zz7VDIoxJU	0	2017-06-07 20:36:13.788229	2017-06-07 20:36:13.788229
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
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

