--
-- PostgreSQL database dump
--

\restrict Sw8SGIKVt0umw2H2xqc2oXAnDl1J9bPB4lbPNpy88RQ84FThWmS8mM0smnSPJjs

-- Dumped from database version 16.14
-- Dumped by pg_dump version 18.3

-- Started on 2026-10-21 06:17:23

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
-- TOC entry 220 (class 1259 OID 25655)
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
-- TOC entry 219 (class 1259 OID 25654)
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
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 219
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: padmin
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- TOC entry 216 (class 1259 OID 25639)
-- Name: pickup_points; Type: TABLE; Schema: public; Owner: padmin
--

CREATE TABLE public.pickup_points (
    id integer NOT NULL,
    adress character varying(256) NOT NULL
);


ALTER TABLE public.pickup_points OWNER TO padmin;

--
-- TOC entry 215 (class 1259 OID 25638)
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
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 215
-- Name: pickup_points_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: padmin
--

ALTER SEQUENCE public.pickup_points_id_seq OWNED BY public.pickup_points.id;


--
-- TOC entry 221 (class 1259 OID 25665)
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
-- TOC entry 218 (class 1259 OID 25646)
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
-- TOC entry 217 (class 1259 OID 25645)
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
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: padmin
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4751 (class 2604 OID 25658)
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- TOC entry 4749 (class 2604 OID 25642)
-- Name: pickup_points id; Type: DEFAULT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.pickup_points ALTER COLUMN id SET DEFAULT nextval('public.pickup_points_id_seq'::regclass);


--
-- TOC entry 4750 (class 2604 OID 25649)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4915 (class 0 OID 25655)
-- Dependencies: 220
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: padmin
--

INSERT INTO public.orders (id, articule, order_date, delivery_date, fk_pickup_point, fk_full_name, code, status) VALUES (1, 'А112Т4, 2, G843H5, 2', '2024-02-27', '2024-04-20', 1, 'Степанов Михаил Артёмович', 901, 'Новый ');
INSERT INTO public.orders (id, articule, order_date, delivery_date, fk_pickup_point, fk_full_name, code, status) VALUES (2, 'G843H5, 1, А112Т4, 1', '2024-09-28', '2024-04-21', 11, 'Михайлюк Анна Вячеславовна', 902, 'Новый ');
INSERT INTO public.orders (id, articule, order_date, delivery_date, fk_pickup_point, fk_full_name, code, status) VALUES (3, 'D325D4, 10, S432T5, 10', '2024-03-21', '2024-04-22', 2, 'Ситдикова Елена Анатольевна', 903, 'Новый ');
INSERT INTO public.orders (id, articule, order_date, delivery_date, fk_pickup_point, fk_full_name, code, status) VALUES (4, 'F325D4, 5, D325D4, 4', '2024-02-20', '2024-04-23', 11, 'Ворсин Петр Евгеньевич', 904, 'Завершен');
INSERT INTO public.orders (id, articule, order_date, delivery_date, fk_pickup_point, fk_full_name, code, status) VALUES (5, 'G432G6, 20, H542F5, 20', '2024-03-17', '2024-04-24', 2, 'Степанов Михаил Артёмович', 905, 'Завершен');
INSERT INTO public.orders (id, articule, order_date, delivery_date, fk_pickup_point, fk_full_name, code, status) VALUES (6, 'А112Т4, 2, G843H5, 2', '2024-03-01', '2024-04-25', 15, 'Михайлюк Анна Вячеславовна', 906, 'Завершен');
INSERT INTO public.orders (id, articule, order_date, delivery_date, fk_pickup_point, fk_full_name, code, status) VALUES (7, 'G843H5, 1, А112Т4, 1', '2024-03-02', '2024-04-26', 3, 'Ситдикова Елена Анатольевна', 907, 'Завершен');
INSERT INTO public.orders (id, articule, order_date, delivery_date, fk_pickup_point, fk_full_name, code, status) VALUES (8, 'D325D4, 10, S432T5, 10', '2024-03-31', '2024-04-27', 19, 'Ворсин Петр Евгеньевич', 908, 'Новый ');
INSERT INTO public.orders (id, articule, order_date, delivery_date, fk_pickup_point, fk_full_name, code, status) VALUES (9, 'F325D4, 5, D325D4, 4', '2024-04-02', '2024-04-28', 5, 'Ситдикова Елена Анатольевна', 909, 'Новый ');
INSERT INTO public.orders (id, articule, order_date, delivery_date, fk_pickup_point, fk_full_name, code, status) VALUES (10, 'G432G6, 20, H542F5, 20', '2024-04-03', '2024-04-29', 19, 'Ворсин Петр Евгеньевич', 910, 'Новый ');


--
-- TOC entry 4911 (class 0 OID 25639)
-- Dependencies: 216
-- Data for Name: pickup_points; Type: TABLE DATA; Schema: public; Owner: padmin
--

INSERT INTO public.pickup_points (id, adress) VALUES (1, '420151, г. Лесной, ул. Вишневая, 32');
INSERT INTO public.pickup_points (id, adress) VALUES (2, '125061, г. Лесной, ул. Подгорная, 8');
INSERT INTO public.pickup_points (id, adress) VALUES (3, '630370, г. Лесной, ул. Шоссейная, 24');
INSERT INTO public.pickup_points (id, adress) VALUES (4, '400562, г. Лесной, ул. Зеленая, 32');
INSERT INTO public.pickup_points (id, adress) VALUES (5, '614510, г. Лесной, ул. Маяковского, 47');
INSERT INTO public.pickup_points (id, adress) VALUES (6, '410542, г. Лесной, ул. Светлая, 46');
INSERT INTO public.pickup_points (id, adress) VALUES (7, '620839, г. Лесной, ул. Цветочная, 8');
INSERT INTO public.pickup_points (id, adress) VALUES (8, '443890, г. Лесной, ул. Коммунистическая, 1');
INSERT INTO public.pickup_points (id, adress) VALUES (9, '603379, г. Лесной, ул. Спортивная, 46');
INSERT INTO public.pickup_points (id, adress) VALUES (10, '603721, г. Лесной, ул. Гоголя, 41');
INSERT INTO public.pickup_points (id, adress) VALUES (11, '410172, г. Лесной, ул. Северная, 13');
INSERT INTO public.pickup_points (id, adress) VALUES (12, '614611, г. Лесной, ул. Молодежная, 50');
INSERT INTO public.pickup_points (id, adress) VALUES (13, '454311, г.Лесной, ул. Новая, 19');
INSERT INTO public.pickup_points (id, adress) VALUES (14, '660007, г.Лесной, ул. Октябрьская, 19');
INSERT INTO public.pickup_points (id, adress) VALUES (15, '603036, г. Лесной, ул. Садовая, 4');
INSERT INTO public.pickup_points (id, adress) VALUES (16, '394060, г.Лесной, ул. Фрунзе, 43');
INSERT INTO public.pickup_points (id, adress) VALUES (17, '410661, г. Лесной, ул. Школьная, 50');
INSERT INTO public.pickup_points (id, adress) VALUES (18, '625590, г. Лесной, ул. Коммунистическая, 20');
INSERT INTO public.pickup_points (id, adress) VALUES (19, '625683, г. Лесной, ул. 8 Марта');
INSERT INTO public.pickup_points (id, adress) VALUES (20, '450983, г.Лесной, ул. Комсомольская, 26');
INSERT INTO public.pickup_points (id, adress) VALUES (21, '394782, г. Лесной, ул. Чехова, 3');
INSERT INTO public.pickup_points (id, adress) VALUES (22, '603002, г. Лесной, ул. Дзержинского, 28');
INSERT INTO public.pickup_points (id, adress) VALUES (23, '450558, г. Лесной, ул. Набережная, 30');
INSERT INTO public.pickup_points (id, adress) VALUES (24, '344288, г. Лесной, ул. Чехова, 1');
INSERT INTO public.pickup_points (id, adress) VALUES (25, '614164, г.Лесной,  ул. Степная, 30');
INSERT INTO public.pickup_points (id, adress) VALUES (26, '394242, г. Лесной, ул. Коммунистическая, 43');
INSERT INTO public.pickup_points (id, adress) VALUES (27, '660540, г. Лесной, ул. Солнечная, 25');
INSERT INTO public.pickup_points (id, adress) VALUES (28, '125837, г. Лесной, ул. Шоссейная, 40');
INSERT INTO public.pickup_points (id, adress) VALUES (29, '125703, г. Лесной, ул. Партизанская, 49');
INSERT INTO public.pickup_points (id, adress) VALUES (30, '625283, г. Лесной, ул. Победы, 46');
INSERT INTO public.pickup_points (id, adress) VALUES (31, '614753, г. Лесной, ул. Полевая, 35');
INSERT INTO public.pickup_points (id, adress) VALUES (32, '426030, г. Лесной, ул. Маяковского, 44');
INSERT INTO public.pickup_points (id, adress) VALUES (33, '450375, г. Лесной ул. Клубная, 44');
INSERT INTO public.pickup_points (id, adress) VALUES (34, '625560, г. Лесной, ул. Некрасова, 12');
INSERT INTO public.pickup_points (id, adress) VALUES (35, '630201, г. Лесной, ул. Комсомольская, 17');
INSERT INTO public.pickup_points (id, adress) VALUES (36, '190949, г. Лесной, ул. Мичурина, 26');


--
-- TOC entry 4916 (class 0 OID 25665)
-- Dependencies: 221
-- Data for Name: tovar; Type: TABLE DATA; Schema: public; Owner: padmin
--

INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('А112Т4', 'Прихожая Фаворит 1 1420х2056х352ммм Дуб Делано/Цемент Светлый SV-М 1 шт', 'шт.', 9577, 'Стройландия', 'SVМЕБЕЛЬ', 'Прихожая', 10, 0, 'Удивительно функциональная и практичная прихожая Фаворит 1, обладая характерными чертами Скандинавского стиля, выглядит эффектно и способна задать тон интерьеру дома, встречая вас и ваших гостей. ', '1.jpg');
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('G843H5', 'Прихожая в коридор Твист с зеркалом мебель со шкафами, 120х37х202 см', 'шт.', 8803, 'Стройландия', 'Мебелони', 'Прихожая', 25, 9, 'Этот стеллаж со шкафом в прихожую комнату станет отличным элементом для вашего интерьера. Мебель для дома обеспечивает удобное хранение перчаток, шапок, зонтов, сумок и других аксессуаров. ', '2.jpg');
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('D325D4', 'Угловой диван Кромма Инвуд Лайт, серый двухместный диван, Velutto 32', 'шт.', 29125, 'Кромма', 'Инвуд', 'Диван', 5, 12, 'Угловой диван Инвуд Лайт 2 - стильный и комфортный диван подойдет для комнаты любого размера.', '3.jpg');
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('S432T5', 'Обувница RIDBERG, с вешалкой, стальная, 170x60x26 см, 5 полок, вместимость до 15 пар', 'шт.', 885, 'Кромма', 'RIDBERG', 'Обувница', 15, 15, 'Обувница Ridberg с 5 полками и вешалкой - идеальное решение для организации хранения обуви в прихожей или гардеробной. ', '4.jpg');
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('F325D4', 'Диван, Прямой диван, Диван-кровать Сити темно-коричневый. Квест-33', 'шт.', 14322, 'ЗолотоеРуно', 'Инвуд', 'Диван', 18, 3, '
Прямой диван-кровать Сити - это современное и функциональное решение для вашего дома.', '5.jpg');
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('G432G6', 'Пуф трансформер кровать раскладушка светло-коричневый велюр', 'шт.', 6149, 'KRYLOVMANUFACTURA', 'Инвуд', 'Пуф', 22, 3, 'Пуф трансформер 5в1 представляет собой уникальное сочетание функций, выступая в качестве пуфика, столика, кресла, шезлонга и дополнительного спального места. ', '6.jpg');
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('H542F5', 'Диван, Прямой диван, диван кровать, Рио симпл механизм Пантограф. Симпл-16', 'шт.', 20708, 'ЗолотоеРуно', 'Инвуд', 'Диван', 4, 5, 'Диван Рио симпл от Золотое Руно - это сочетание комфорта, функциональности и стильного дизайна.', '7.jpg');
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('C346F5', 'Полка настенная ромб Лофт, черная, 40 см', 'шт.', 2843, 'KRYLOVMANUFACTURA', 'RIDBERG', 'Полка', 5, 4, 'Полочки для цветов в стиле лофт. Подойдут как для цветов, так и в качестве декоративного элемента. Полки подойдут для дома, офиса, кафе, ресторана. ​', '8.jpg');
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('F256G6', 'Стулья для кухни', 'шт.', 4760, 'KRYLOVMANUFACTURA', 'RIDBERG', 'Стул', 6, 2, 'Набор из четырех стульев в лофт-дизайне станет любимой мебелью для отдыха и подойдет для взрослых и детей. ', '9.jpg');
INSERT INTO public.tovar (articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo) VALUES ('J532V5', 'Магнитная полка, для холодильника, металл, 3шт, универсальная, чёрная', 'шт.', 1387, 'KRYLOVMANUFACTURA', 'RIDBERG', 'Полка', 8, 6, 'Магнитная полка для холодильника - это удобный и практичный аксессуар, который поможет организовать пространство в вашем доме.', '10.jpg');


--
-- TOC entry 4913 (class 0 OID 25646)
-- Dependencies: 218
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: padmin
--

INSERT INTO public.users (id, role, full_name, login, password) VALUES (1, 'Администратор', 'Никифорова Анна Семеновна', '94d5ous@gmail.com', 'uzWC67');
INSERT INTO public.users (id, role, full_name, login, password) VALUES (2, 'Администратор', 'Стелина Евгения Петровна', 'uth4iz@mail.com', '2L6KZG');
INSERT INTO public.users (id, role, full_name, login, password) VALUES (3, 'Администратор', 'Никифорова Весения Николаевна', '5d4zbu@tutanota.com', 'rwVDh9');
INSERT INTO public.users (id, role, full_name, login, password) VALUES (4, 'Менеджер', 'Сазонов Руслан Германович', 'ptec8ym@yahoo.com', 'LdNyos');
INSERT INTO public.users (id, role, full_name, login, password) VALUES (5, 'Менеджер', 'Одинцов Серафим Артёмович', '1qz4kw@mail.com', 'gynQMT');
INSERT INTO public.users (id, role, full_name, login, password) VALUES (6, 'Менеджер', 'Старикова Елена Павловна', '4np6se@mail.com', 'AtnDjr');
INSERT INTO public.users (id, role, full_name, login, password) VALUES (7, 'Авторизированный клиент', 'Степанов Михаил Артёмович', 'yzls62@outlook.com', 'JlFRCZ');
INSERT INTO public.users (id, role, full_name, login, password) VALUES (8, 'Авторизированный клиент', 'Михайлюк Анна Вячеславовна', '1diph5e@tutanota.com', '8ntwUp');
INSERT INTO public.users (id, role, full_name, login, password) VALUES (9, 'Авторизированный клиент', 'Ситдикова Елена Анатольевна', 'tjde7c@yahoo.com', 'YOyhfR');
INSERT INTO public.users (id, role, full_name, login, password) VALUES (10, 'Авторизированный клиент', 'Ворсин Петр Евгеньевич', 'wpmrc3do@tutanota.com', 'RSbvHv');


--
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 219
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: padmin
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, false);


--
-- TOC entry 4926 (class 0 OID 0)
-- Dependencies: 215
-- Name: pickup_points_id_seq; Type: SEQUENCE SET; Schema: public; Owner: padmin
--

SELECT pg_catalog.setval('public.pickup_points_id_seq', 36, true);


--
-- TOC entry 4927 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: padmin
--

SELECT pg_catalog.setval('public.users_id_seq', 10, true);


--
-- TOC entry 4759 (class 2606 OID 25664)
-- Name: orders ch_code; Type: CONSTRAINT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT ch_code UNIQUE (code);


--
-- TOC entry 4761 (class 2606 OID 25662)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 4753 (class 2606 OID 25644)
-- Name: pickup_points pickup_points_pkey; Type: CONSTRAINT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.pickup_points
    ADD CONSTRAINT pickup_points_pkey PRIMARY KEY (id);


--
-- TOC entry 4763 (class 2606 OID 25671)
-- Name: tovar tovar_pkey; Type: CONSTRAINT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.tovar
    ADD CONSTRAINT tovar_pkey PRIMARY KEY (articule);


--
-- TOC entry 4755 (class 2606 OID 25673)
-- Name: users un_name; Type: CONSTRAINT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT un_name UNIQUE (full_name);


--
-- TOC entry 4757 (class 2606 OID 25653)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4764 (class 2606 OID 25679)
-- Name: orders fk_articule; Type: FK CONSTRAINT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_articule FOREIGN KEY (articule) REFERENCES public.tovar(articule) NOT VALID;


--
-- TOC entry 4765 (class 2606 OID 25684)
-- Name: orders fk_points; Type: FK CONSTRAINT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_points FOREIGN KEY (fk_pickup_point) REFERENCES public.pickup_points(id) NOT VALID;


--
-- TOC entry 4766 (class 2606 OID 25674)
-- Name: orders fk_users; Type: FK CONSTRAINT; Schema: public; Owner: padmin
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_users FOREIGN KEY (fk_full_name) REFERENCES public.users(full_name) NOT VALID;


-- Completed on 2026-10-21 06:17:24

--
-- PostgreSQL database dump complete
--

\unrestrict Sw8SGIKVt0umw2H2xqc2oXAnDl1J9bPB4lbPNpy88RQ84FThWmS8mM0smnSPJjs

