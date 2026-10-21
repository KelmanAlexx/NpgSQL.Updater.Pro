--
-- PostgreSQL database dump
--

\restrict dCDZ951moDarxpuh5lPcbowvipDlpSW3wfSdVx2ETl1oG7UDHYVUAXgccGyGjFc

-- Dumped from database version 16.14
-- Dumped by pg_dump version 18.3

-- Started on 2026-10-21 06:50:04

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 216 (class 1259 OID 25817)
-- Name: orders; Type: TABLE; Schema: public; Owner: padmin
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    articule character varying NOT NULL,
    order_date date NOT NULL,
    delivery_date date NOT NULL,
    fk_pickup_point integer NOT NULL,
    fk_full_name character varying NOT NULL,
    code integer NOT NULL,
    status character varying NOT NULL
);


ALTER TABLE public.orders OWNER TO padmin;

--
-- TOC entry 221 (class 1259 OID 25856)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: padmin
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_id_seq OWNER TO padmin;

--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 221
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: padmin
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- TOC entry 215 (class 1259 OID 25814)
-- Name: pickup_points; Type: TABLE; Schema: public; Owner: padmin
--

CREATE TABLE public.pickup_points (
    id integer NOT NULL,
    adress character varying(256) NOT NULL
);


ALTER TABLE public.pickup_points OWNER TO padmin;

--
-- TOC entry 219 (class 1259 OID 25826)
-- Name: pickup_points_id_seq; Type: SEQUENCE; Schema: public; Owner: padmin
--

CREATE SEQUENCE public.pickup_points_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pickup_points_id_seq OWNER TO padmin;

--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 219
-- Name: pickup_points_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: padmin
--

ALTER SEQUENCE public.pickup_points_id_seq OWNED BY public.pickup_points.id;


--
-- TOC entry 217 (class 1259 OID 25820)
-- Name: tovar; Type: TABLE; Schema: public; Owner: padmin
--

CREATE TABLE public.tovar (
    articule character varying(20) NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(5) NOT NULL,
    price integer NOT NULL,
    supplyer character varying(255) NOT NULL,
    manufacturer character varying(255) NOT NULL,
    category character varying(50) NOT NULL,
    discount integer NOT NULL,
    units integer NOT NULL,
    description character varying NOT NULL,
    photo text
);


ALTER TABLE public.tovar OWNER TO padmin;

--
-- TOC entry 218 (class 1259 OID 25823)
-- Name: users; Type: TABLE; Schema: public; Owner: padmin
--

CREATE TABLE public.users (
    id integer NOT NULL,
    role character varying(256) NOT NULL,
    full_name character varying(256) NOT NULL,
    login character varying(256) NOT NULL,
    password character varying(256) NOT NULL
);


ALTER TABLE public.users OWNER TO padmin;

--
-- TOC entry 220 (class 1259 OID 25847)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: padmin
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO padmin;

--
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 220
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: padmin
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4750 (class 2604 OID 25857)
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- TOC entry 4749 (class 2604 OID 25827)
-- Name: pickup_points id; Type: DEFAULT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.pickup_points ALTER COLUMN id SET DEFAULT nextval('public.pickup_points_id_seq'::regclass);


--
-- TOC entry 4751 (class 2604 OID 25848)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4909 (class 0 OID 25817)
-- Dependencies: 216
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: padmin
--

INSERT INTO public.orders (id, articule, order_date, delivery_date, fk_pickup_point, fk_full_name, code, status) VALUES (1, 'PMEZMH, 2, BPV4MM, 2', '2025-02-27', '2025-04-20', 1, 'Михайлюк Анна Вячеславовна', 901, 'Завершен');
INSERT INTO public.orders (id, articule, order_date, delivery_date, fk_pickup_point, fk_full_name, code, status) VALUES (2, 'JVL42J, 1, F895RB, 1', '2024-09-28', '2025-04-21', 11, 'Ситдикова Елена Анатольевна', 902, 'Завершен');
INSERT INTO public.orders (id, articule, order_date, delivery_date, fk_pickup_point, fk_full_name, code, status) VALUES (3, '3XBOTN, 10, 3L7RCZ, 10', '2025-03-21', '2025-04-22', 2, 'Никифорова Весения Николаевна', 903, 'Завершен');
INSERT INTO public.orders (id, articule, order_date, delivery_date, fk_pickup_point, fk_full_name, code, status) VALUES (4, 'S72AM3, 5, 2G3280, 4', '2025-02-20', '2025-04-23', 11, 'Сазонов Руслан Германович', 904, 'Завершен');
INSERT INTO public.orders (id, articule, order_date, delivery_date, fk_pickup_point, fk_full_name, code, status) VALUES (5, 'MIO8YV, 2, UER2QD, 2', '2025-03-17', '2025-04-24', 2, 'Михайлюк Анна Вячеславовна', 905, 'Завершен');
INSERT INTO public.orders (id, articule, order_date, delivery_date, fk_pickup_point, fk_full_name, code, status) VALUES (6, 'ZR70B4, 1, LPDDM4, 1', '2025-03-01', '2025-04-25', 15, 'Ситдикова Елена Анатольевна', 906, 'Завершен');
INSERT INTO public.orders (id, articule, order_date, delivery_date, fk_pickup_point, fk_full_name, code, status) VALUES (7, 'LQ48MW, 10, O43COU8, 10', '2025-03-02', '2025-04-26', 3, 'Никифорова Весения Николаевна', 907, 'Завершен');
INSERT INTO public.orders (id, articule, order_date, delivery_date, fk_pickup_point, fk_full_name, code, status) VALUES (8, 'M26EXW, 5, K0YACK, 4', '2025-03-31', '2025-04-27', 19, 'Сазонов Руслан Германович', 908, 'Новый ');
INSERT INTO public.orders (id, articule, order_date, delivery_date, fk_pickup_point, fk_full_name, code, status) VALUES (9, 'ASPXSG, 5, ZKQ5FF, 1', '2025-04-02', '2025-04-28', 5, 'Никифорова Весения Николаевна', 909, 'Новый ');
INSERT INTO public.orders (id, articule, order_date, delivery_date, fk_pickup_point, fk_full_name, code, status) VALUES (10, '4WZEOT, 5, 4JR1HN, 5', '2025-04-03', '2025-04-29', 19, 'Сазонов Руслан Германович', 910, 'Новый ');


--
-- TOC entry 4908 (class 0 OID 25814)
-- Dependencies: 215
-- Data for Name: pickup_points; Type: TABLE DATA; Schema: public; Owner: padmin
--

INSERT INTO public.pickup_points (id, adress) VALUES (36, '420151, г. Лесной, ул. Вишневая, 32');
INSERT INTO public.pickup_points (id, adress) VALUES (37, '125061, г. Лесной, ул. Подгорная, 8');
INSERT INTO public.pickup_points (id, adress) VALUES (38, '630370, г. Лесной, ул. Шоссейная, 24');
INSERT INTO public.pickup_points (id, adress) VALUES (39, '400562, г. Лесной, ул. Зеленая, 32');
INSERT INTO public.pickup_points (id, adress) VALUES (40, '614510, г. Лесной, ул. Маяковского, 47');
INSERT INTO public.pickup_points (id, adress) VALUES (41, '410542, г. Лесной, ул. Светлая, 46');
INSERT INTO public.pickup_points (id, adress) VALUES (42, '620839, г. Лесной, ул. Цветочная, 8');
INSERT INTO public.pickup_points (id, adress) VALUES (43, '443890, г. Лесной, ул. Коммунистическая, 1');
INSERT INTO public.pickup_points (id, adress) VALUES (44, '603379, г. Лесной, ул. Спортивная, 46');
INSERT INTO public.pickup_points (id, adress) VALUES (45, '603721, г. Лесной, ул. Гоголя, 41');
INSERT INTO public.pickup_points (id, adress) VALUES (46, '410172, г. Лесной, ул. Северная, 13');
INSERT INTO public.pickup_points (id, adress) VALUES (47, '614611, г. Лесной, ул. Молодежная, 50');
INSERT INTO public.pickup_points (id, adress) VALUES (48, '454311, г.Лесной, ул. Новая, 19');
INSERT INTO public.pickup_points (id, adress) VALUES (49, '660007, г.Лесной, ул. Октябрьская, 19');
INSERT INTO public.pickup_points (id, adress) VALUES (50, '603036, г. Лесной, ул. Садовая, 4');
INSERT INTO public.pickup_points (id, adress) VALUES (51, '394060, г.Лесной, ул. Фрунзе, 43');
INSERT INTO public.pickup_points (id, adress) VALUES (52, '410661, г. Лесной, ул. Школьная, 50');
INSERT INTO public.pickup_points (id, adress) VALUES (53, '625590, г. Лесной, ул. Коммунистическая, 20');
INSERT INTO public.pickup_points (id, adress) VALUES (54, '625683, г. Лесной, ул. 8 Марта');
INSERT INTO public.pickup_points (id, adress) VALUES (55, '450983, г.Лесной, ул. Комсомольская, 26');
INSERT INTO public.pickup_points (id, adress) VALUES (56, '394782, г. Лесной, ул. Чехова, 3');
INSERT INTO public.pickup_points (id, adress) VALUES (57, '603002, г. Лесной, ул. Дзержинского, 28');
INSERT INTO public.pickup_points (id, adress) VALUES (58, '450558, г. Лесной, ул. Набережная, 30');
INSERT INTO public.pickup_points (id, adress) VALUES (59, '344288, г. Лесной, ул. Чехова, 1');
INSERT INTO public.pickup_points (id, adress) VALUES (60, '614164, г.Лесной,  ул. Степная, 30');
INSERT INTO public.pickup_points (id, adress) VALUES (61, '394242, г. Лесной, ул. Коммунистическая, 43');
INSERT INTO public.pickup_points (id, adress) VALUES (62, '660540, г. Лесной, ул. Солнечная, 25');
INSERT INTO public.pickup_points (id, adress) VALUES (63, '125837, г. Лесной, ул. Шоссейная, 40');
INSERT INTO public.pickup_points (id, adress) VALUES (64, '125703, г. Лесной, ул. Партизанская, 49');
INSERT INTO public.pickup_points (id, adress) VALUES (65, '625283, г. Лесной, ул. Победы, 46');
INSERT INTO public.pickup_points (id, adress) VALUES (66, '614753, г. Лесной, ул. Полевая, 35');
INSERT INTO public.pickup_points (id, adress) VALUES (67, '426030, г. Лесной, ул. Маяковского, 44');
INSERT INTO public.pickup_points (id, adress) VALUES (68, '450375, г. Лесной ул. Клубная, 44');
INSERT INTO public.pickup_points (id, adress) VALUES (69, '625560, г. Лесной, ул. Некрасова, 12');
INSERT INTO public.pickup_points (id, adress) VALUES (70, '630201, г. Лесной, ул. Комсомольская, 17');
INSERT INTO public.pickup_points (id, adress) VALUES (71, '190949, г. Лесной, ул. Мичурина, 26');


--
-- TOC entry 4910 (class 0 OID 25820)
-- Dependencies: 217
-- Data for Name: tovar; Type: TABLE DATA; Schema: public; Owner: padmin
--

INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('PMEZMH', 'Цемент', 'шт.', 440, 'М500', 'М500', 'Общестроительные материалы', 8, 34, 'Цемент Евроцемент М500 Д0 ЦЕМ I 42,5 50 кг', 'PMEZMH.jpg');
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('BPV4MM', 'Пленка техническая', 'шт.', 8, 'Изостронг', 'Изостронг', 'Общестроительные материалы', 8, 2, 'Пленка техническая полиэтиленовая Изостронг 60 мк 3 м рукав 1,5 м, пог.м', 'BPV4MM.jpg');
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('JVL42J', 'Пленка техническая', 'шт.', 13, 'Изостронг', 'Изостронг', 'Общестроительные материалы', 4, 34, 'Пленка техническая полиэтиленовая Изостронг 100 мк 3 м рукав 1,5 м, пог.м', 'JVL42J.jpg');
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('F895RB', 'Песок строительный', 'шт.', 102, 'Knauf', 'Knauf', 'Общестроительные материалы', 6, 7, 'Песок строительный 50 кг', 'F895RB.jpg');
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('3XBOTN', 'Керамзит фракция', 'шт.', 110, 'MixMaster', 'MixMaster', 'Общестроительные материалы', 5, 21, 'Керамзит фракция 10-20 мм 0,05 куб.м', '3XBOTN.jpg');
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('3L7RCZ', 'Газобетон', 'шт.', 7400, 'ЛСР', 'ЛСР', 'Стеновые и фасадные материалы', 2, 20, 'Газобетон ЛСР 100х250х625 мм D400', '3L7RCZ.jpg');
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('S72AM3', 'Пазогребневая плита ', 'шт.', 500, 'ВОЛМА', 'ВОЛМА', 'Стеновые и фасадные материалы', 5, 35, 'Пазогребневая плита ВОЛМА Гидро 667х500х80 мм полнотелая', 'S72AM3.jpg');
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('2G3280', 'Угол наружный', 'шт.', 795, 'Vinylon', 'Vinylon', 'Стеновые и фасадные материалы', 9, 20, 'Угол наружный Vinylon 3050 мм серо-голубой', '2G3280.jpg');
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('MIO8YV', 'Кирпич', 'шт.', 30, 'ВОЛМА', 'ВОЛМА', 'Стеновые и фасадные материалы', 9, 31, 'Кирпич рядовой Боровичи полнотелый М150 250х120х65 мм 1NF', 'MIO8YV.jpg');
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('UER2QD', 'Скоба для пазогребневой плиты', 'шт.', 25, 'Knauf', 'Knauf', 'Стеновые и фасадные материалы', 8, 27, 'Скоба для пазогребневой плиты Knauf С1 120х100 мм', 'UER2QD.jpg');
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('ZR70B4', 'Кирпич', 'шт.', 16, 'Павловский завод ', 'Павловский завод ', 'Стеновые и фасадные материалы', 3, 0, 'Кирпич рядовой силикатный Павловский завод полнотелый М200 250х120х65 мм 1NF', NULL);
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('LPDDM4', 'Штукатурка гипсовая', 'шт.', 500, 'Knauf', 'Knauf', 'Сухие строительные смеси и гидроизоляция', 6, 38, 'Штукатурка гипсовая Knauf Ротбанд 30 кг', NULL);
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('LQ48MW', 'Штукатурка гипсовая', 'шт.', 462, 'Weber', 'Weber', 'Сухие строительные смеси и гидроизоляция', 6, 33, 'Штукатурка гипсовая Knauf МП-75 машинная 30 кг', NULL);
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('O43COU', 'Шпаклевка', 'шт.', 750, 'ВОЛМА', 'ВОЛМА', 'Сухие строительные смеси и гидроизоляция', 1, 16, 'Шпаклевка полимерная Weber.vetonit LR + для сухих помещений белая 20 кг', NULL);
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('M26EXW', 'Клей для плитки, керамогранита и камня', 'шт.', 340, 'Knauf', 'Knauf', 'Сухие строительные смеси и гидроизоляция', 8, 0, 'Клей для плитки, керамогранита и камня Крепс Усиленный серый (класс С1) 25 кг', NULL);
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('K0YACK', 'Смесь цементно-песчаная', 'шт.', 160, 'MixMaster', 'MixMaster', 'Сухие строительные смеси и гидроизоляция', 8, 19, 'Смесь цементно-песчаная (ЦПС) 300 по ТУ MixMaster Универсал 25 кг', NULL);
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('ASPXSG', 'Ровнитель', 'шт.', 711, 'Weber', 'Weber', 'Сухие строительные смеси и гидроизоляция', 10, 20, 'Ровнитель (наливной пол) финишный Weber.vetonit 4100 самовыравнивающийся высокопрочный 20 кг', NULL);
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('ZKQ5FF', 'Лезвие для ножа ', 'шт.', 65, 'Hesler', 'Hesler', 'Ручной инструмент', 6, 6, 'Лезвие для ножа Hesler 18 мм прямое (10 шт.)', NULL);
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('4WZEOT', 'Лезвие для ножа ', 'шт.', 110, 'Armero', 'Armero', 'Ручной инструмент', 6, 17, 'Лезвие для ножа Armero 18 мм прямое (10 шт.)', NULL);
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('4JR1HN', 'Шпатель', 'шт.', 26, 'Hesler', 'Hesler', 'Ручной инструмент', 6, 7, 'Шпатель малярный 100 мм с пластиковой ручкой', NULL);
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('Z3XFSP', 'Нож строительный ', 'шт.', 63, 'Hesler', 'Hesler', 'Ручной инструмент', 8, 5, 'Нож строительный Hesler 18 мм с ломающимся лезвием пластиковый корпус', NULL);
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('I6MH89', 'Валик', 'шт.', 326, 'Wenzo Roma', 'Wenzo Roma', 'Ручной инструмент', 12, 3, 'Валик Wenzo Roma полиакрил 250 мм ворс 18 мм для красок грунтов и антисептиков на водной основе с рукояткой', NULL);
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('83M5ME', 'Кисть', 'шт.', 122, 'Armero', 'Armero', 'Ручной инструмент', 9, 26, 'Кисть плоская смешанная щетина 100х12 мм для красок и антисептиков на водной основе', NULL);
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('61PGH3', 'Очки защитные', 'шт.', 184, 'KILIMGRIN', 'KILIMGRIN', 'Защита лица, глаз, головы', 6, 25, 'Очки защитные Delta Plus KILIMANDJARO (KILIMGRIN) открытые с прозрачными линзами', NULL);
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('GN6ICZ', 'Каска защитная ', 'шт.', 154, 'Исток', 'Исток', 'Защита лица, глаз, головы', 15, 8, 'Каска защитная Исток (КАС001О) оранжевая', NULL);
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('Z3LO0U', 'Очки защитные ', 'шт.', 228, 'RUIZ', 'RUIZ', 'Защита лица, глаз, головы', 9, 11, 'Очки защитные Delta Plus RUIZ (RUIZ1VI) закрытые с прозрачными линзами', NULL);
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('QHNOKR', 'Маска защитная', 'шт.', 251, 'Исток', 'Исток', 'Защита лица, глаз, головы', 2, 22, 'Маска защитная Исток (ЩИТ001) ударопрочная и термостойкая', NULL);
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('EQ6RKO', 'Подшлемник', 'шт.', 36, 'Husqvarna', 'Husqvarna', 'Защита лица, глаз, головы', 17, 22, 'Подшлемник для каски одноразовый', NULL);
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('81F1WG', 'Каска защитная', 'шт.', 1500, 'Delta', 'Delta', 'Защита лица, глаз, головы', 2, 13, 'Каска защитная Delta Plus BASEBALL DIAMOND V UP (DIAM5UPBCFLBS) белая', NULL);
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('0YGHZ7', 'Очки защитные ', 'шт.', 700, 'Husqvarna', 'Husqvarna', 'Защита лица, глаз, головы', 9, 36, 'Очки защитные Husqvarna Clear (5449638-01) открытые с прозрачными линзами', NULL);


--
-- TOC entry 4911 (class 0 OID 25823)
-- Dependencies: 218
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: padmin
--

INSERT INTO public.users (id, role, full_name, login, password) VALUES (1, 'Администратор', 'Ворсин Петр Евгеньевич', '94d5ous@gmail.com', 'uzWC67');
INSERT INTO public.users (id, role, full_name, login, password) VALUES (2, 'Администратор', 'Старикова Елена Павловна', 'uth4iz@mail.com', '2L6KZG');
INSERT INTO public.users (id, role, full_name, login, password) VALUES (3, 'Администратор', 'Одинцов Серафим Артёмович', 'yzls62@outlook.com', 'JlFRCZ');
INSERT INTO public.users (id, role, full_name, login, password) VALUES (4, 'Менеджер', 'Степанов Михаил Артёмович', '1diph5e@tutanota.com', '8ntwUp');
INSERT INTO public.users (id, role, full_name, login, password) VALUES (7, 'Авторизированный клиент', 'Михайлюк Анна Вячеславовна', '5d4zbu@tutanota.com', 'rwVDh9');
INSERT INTO public.users (id, role, full_name, login, password) VALUES (8, 'Авторизированный клиент', 'Ситдикова Елена Анатольевна', 'ptec8ym@yahoo.com', 'LdNyos');
INSERT INTO public.users (id, role, full_name, login, password) VALUES (9, 'Авторизированный клиент', 'Никифорова Весения Николаевна', '1qz4kw@mail.com', 'gynQMT');
INSERT INTO public.users (id, role, full_name, login, password) VALUES (10, 'Авторизированный клиент', 'Сазонов Руслан Германович', '4np6se@mail.com', 'AtnDjr');
INSERT INTO public.users (id, role, full_name, login, password) VALUES (6, 'Менеджер', 'Стариковa Елена Павловна', 'wpmrc3do@tutanota.com', 'RSbvHv');
INSERT INTO public.users (id, role, full_name, login, password) VALUES (5, 'Менеджер', 'Ворсин Петp Евгеньевич', 'tjde7c@yahoo.com', 'YOyhfR');


--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 221
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: padmin
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, false);


--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 219
-- Name: pickup_points_id_seq; Type: SEQUENCE SET; Schema: public; Owner: padmin
--

SELECT pg_catalog.setval('public.pickup_points_id_seq', 71, true);


--
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 220
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: padmin
--

SELECT pg_catalog.setval('public.users_id_seq', 10, true);


--
-- TOC entry 4755 (class 2606 OID 25864)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 4753 (class 2606 OID 25832)
-- Name: pickup_points pickup_points_pkey; Type: CONSTRAINT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.pickup_points
    ADD CONSTRAINT pickup_points_pkey PRIMARY KEY (id);


--
-- TOC entry 4757 (class 2606 OID 25868)
-- Name: tovar tovar_pkey; Type: CONSTRAINT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.tovar
    ADD CONSTRAINT tovar_pkey PRIMARY KEY (articule);


--
-- TOC entry 4759 (class 2606 OID 25874)
-- Name: users un_name; Type: CONSTRAINT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT un_name UNIQUE (full_name);


--
-- TOC entry 4761 (class 2606 OID 25855)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4762 (class 2606 OID 25885)
-- Name: orders fk_; Type: FK CONSTRAINT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_ FOREIGN KEY (articule) REFERENCES public.tovar(articule) NOT VALID;


--
-- TOC entry 4763 (class 2606 OID 25880)
-- Name: orders fk_name; Type: FK CONSTRAINT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_name FOREIGN KEY (fk_full_name) REFERENCES public.users(full_name) NOT VALID;


--
-- TOC entry 4764 (class 2606 OID 25875)
-- Name: orders fk_points; Type: FK CONSTRAINT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_points FOREIGN KEY (fk_pickup_point) REFERENCES public.pickup_points(id) NOT VALID;


-- Completed on 2026-10-21 06:50:04

--
-- PostgreSQL database dump complete
--

\unrestrict dCDZ951moDarxpuh5lPcbowvipDlpSW3wfSdVx2ETl1oG7UDHYVUAXgccGyGjFc

