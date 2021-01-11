--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

-- Started on 2021-01-11 09:54:40

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
-- TOC entry 216 (class 1259 OID 41088)
-- Name: assistidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.assistidos (
    filme integer,
    serie integer,
    data date NOT NULL,
    handle integer NOT NULL
);


ALTER TABLE public.assistidos OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 41091)
-- Name: assistidos_handle_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.assistidos ALTER COLUMN handle ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.assistidos_handle_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 215 (class 1259 OID 41080)
-- Name: categorias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categorias (
    handle integer NOT NULL,
    nome text NOT NULL,
    categoria integer
);


ALTER TABLE public.categorias OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 41078)
-- Name: categorias_handle_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.categorias ALTER COLUMN handle ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categorias_handle_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 211 (class 1259 OID 41060)
-- Name: episodios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.episodios (
    handle integer NOT NULL,
    temporada_id integer,
    sequencial integer,
    titulo text,
    descricao text
);


ALTER TABLE public.episodios OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 41058)
-- Name: episodios_handle_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.episodios ALTER COLUMN handle ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.episodios_handle_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 205 (class 1259 OID 41032)
-- Name: filmes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filmes (
    handle integer NOT NULL,
    nome text,
    sinopse text,
    ano integer,
    categoria integer,
    capa text
);


ALTER TABLE public.filmes OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 41030)
-- Name: filmes_handle_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.filmes ALTER COLUMN handle ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.filmes_handle_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 213 (class 1259 OID 41070)
-- Name: perfis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.perfis (
    handle integer NOT NULL,
    nome text NOT NULL,
    descricao text
);


ALTER TABLE public.perfis OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 41068)
-- Name: perfis_handle_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.perfis ALTER COLUMN handle ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.perfis_handle_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 207 (class 1259 OID 41042)
-- Name: series; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.series (
    handle integer NOT NULL,
    nome text,
    sinopse text,
    capa text,
    categoria integer,
    ano integer
);


ALTER TABLE public.series OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 41040)
-- Name: series_handle_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.series ALTER COLUMN handle ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.series_handle_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 209 (class 1259 OID 41053)
-- Name: temporadas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temporadas (
    handle integer NOT NULL,
    serie_id integer,
    sequencial integer
);


ALTER TABLE public.temporadas OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 41051)
-- Name: temporadas_handle_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.temporadas ALTER COLUMN handle ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.temporadas_handle_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 203 (class 1259 OID 41022)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    handle integer NOT NULL,
    nome text,
    email text,
    login text,
    senha text,
    perfil integer
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 41020)
-- Name: usuarios_handle_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.usuarios ALTER COLUMN handle ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.usuarios_handle_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 2891 (class 0 OID 41088)
-- Dependencies: 216
-- Data for Name: assistidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (NULL, 2, '2021-01-10', 1);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (NULL, 2, '2021-01-10', 2);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (NULL, 2, '2021-01-10', 3);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (NULL, 2, '2021-01-10', 4);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (4, NULL, '2021-01-10', 5);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (4, NULL, '2021-01-10', 6);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (4, NULL, '2021-01-10', 7);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (4, NULL, '2021-01-10', 8);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (1, NULL, '2021-01-10', 9);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (1, NULL, '2021-01-10', 10);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (1, NULL, '2021-01-10', 11);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (1, NULL, '2021-01-10', 12);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (5, NULL, '2021-01-10', 13);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (5, NULL, '2021-01-10', 14);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (5, NULL, '2021-01-10', 15);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (5, NULL, '2021-01-10', 16);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (5, NULL, '2021-01-10', 17);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (5, NULL, '2021-01-10', 18);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (5, NULL, '2021-01-10', 19);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (5, NULL, '2021-01-10', 20);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (NULL, 1, '2021-01-10', 21);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (NULL, 1, '2021-01-10', 22);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (NULL, 1, '2021-01-10', 23);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (NULL, 1, '2021-01-10', 24);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (NULL, 1, '2021-01-10', 25);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (NULL, 1, '2021-01-10', 26);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (NULL, 1, '2021-01-10', 27);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (NULL, 1, '2021-01-10', 28);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (NULL, 1, '2021-01-10', 29);
INSERT INTO public.assistidos (filme, serie, data, handle) OVERRIDING SYSTEM VALUE VALUES (5, NULL, '2021-01-10', 30);


--
-- TOC entry 2890 (class 0 OID 41080)
-- Dependencies: 215
-- Data for Name: categorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categorias (handle, nome, categoria) OVERRIDING SYSTEM VALUE VALUES (1, 'ação', NULL);
INSERT INTO public.categorias (handle, nome, categoria) OVERRIDING SYSTEM VALUE VALUES (2, 'comédia', NULL);
INSERT INTO public.categorias (handle, nome, categoria) OVERRIDING SYSTEM VALUE VALUES (3, 'terror', NULL);


--
-- TOC entry 2886 (class 0 OID 41060)
-- Dependencies: 211
-- Data for Name: episodios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.episodios (handle, temporada_id, sequencial, titulo, descricao) OVERRIDING SYSTEM VALUE VALUES (1, 1, 1, 'Episódio 1', 'Após seu pai ser morto em batalha, o jovem Uhtred é criado por um guerreiro viking e adota os costumes nórdicos - até o dia em que uma tragédia muda sua vida para sempre.');
INSERT INTO public.episodios (handle, temporada_id, sequencial, titulo, descricao) OVERRIDING SYSTEM VALUE VALUES (2, 1, 2, 'Episódio 2', 'Entre os esquemas de seu tio Aelfric e as ações do impiedoso e poderoso viking Ubba, Uhtred foge e procura por Alfredo, o homem que se tornaria rei.');
INSERT INTO public.episodios (handle, temporada_id, sequencial, titulo, descricao) OVERRIDING SYSTEM VALUE VALUES (3, 1, 3, 'Episódio 3', 'Uhtred se torna aliado do recém-coroado Alfredo, mas a ligação com o novo rei ameaça sua relação com Brida.');
INSERT INTO public.episodios (handle, temporada_id, sequencial, titulo, descricao) OVERRIDING SYSTEM VALUE VALUES (4, 4, 1, 'Piloto', 'Jay tem filhos adultos, netos e uma esposa jovem, que tem outro filho. Juntos, eles precisam superar diferenças culturais, sociais e etárias.');
INSERT INTO public.episodios (handle, temporada_id, sequencial, titulo, descricao) OVERRIDING SYSTEM VALUE VALUES (5, 5, 1, 'A velha carroça', 'Claire finalmente consegue convencer Phil a vender a velha perua, mas somente depois que todos derem uma voltinha ao passado com ela.');
INSERT INTO public.episodios (handle, temporada_id, sequencial, titulo, descricao) OVERRIDING SYSTEM VALUE VALUES (6, 2, 1, 'Episódio 1', 'Enviado ao norte por Alfredo para resgatar o rei Guthred aprisionado, Beocca pede ajuda a Uhtred, que faz uma nova aliança em sua busca por vingança.');
INSERT INTO public.episodios (handle, temporada_id, sequencial, titulo, descricao) OVERRIDING SYSTEM VALUE VALUES (7, 3, 1, 'Episódio 1', 'Com a saúde debilitada e temendo por seu legado, Alfredo convoca Uhtred para enfrentar uma nova ameaça: o guerreiro danês Cabelo de Sangue e a feiticeira Skade.');
INSERT INTO public.episodios (handle, temporada_id, sequencial, titulo, descricao) OVERRIDING SYSTEM VALUE VALUES (8, 1, 4, 'Episódio 4', 'Com a saúde debilitada e temendo por seu legado');


--
-- TOC entry 2880 (class 0 OID 41032)
-- Dependencies: 205
-- Data for Name: filmes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.filmes (handle, nome, sinopse, ano, categoria, capa) OVERRIDING SYSTEM VALUE VALUES (2, 'Ameaça Profunda', 'Criaturas misteriosas aterrorizam os tripulantes de um laboratório subaquático a 11 mil metros de profundidade. Eles são obrigados a caminhar nas profundezas marítimas, com quantidade insuficiente de oxigênio, para tentar sobreviver.', 2020, 3, 'https://br.web.img3.acsta.net/pictures/19/08/22/22/50/3689762.jpg');
INSERT INTO public.filmes (handle, nome, sinopse, ano, categoria, capa) OVERRIDING SYSTEM VALUE VALUES (4, 'matrix', 'nil kk', 1990, 1, 'https://br.web.img2.acsta.net/medias/nmedia/18/91/08/82/20128877.JPG');
INSERT INTO public.filmes (handle, nome, sinopse, ano, categoria, capa) OVERRIDING SYSTEM VALUE VALUES (1, 'O Silêncio2', 'O mundo está sob ataque de criaturas mortais, que caçam guiadas pelo som. Para escapar, uma jovem e sua família deixam a cidade e acabam descobrindo um culto sinistro', 2019, 3, 'https://ingresso-a.akamaihd.net/b2b/production/uploads/movie/poster/304/uls_cartaz-regular__1_-min.jpg');
INSERT INTO public.filmes (handle, nome, sinopse, ano, categoria, capa) OVERRIDING SYSTEM VALUE VALUES (5, 'Rambo: First Blood
', 'Um veterano da Guerra do Vietnã usa todo seu treinamento e agressividade exercitada nos campos de batalha quando é preso e torturado por policiais.', 1982, 1, 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSaPFvD8wQ9ikSAb-WJiQtF-RthevnDBRD0tHICf2IcwuRhZZMy');


--
-- TOC entry 2888 (class 0 OID 41070)
-- Dependencies: 213
-- Data for Name: perfis; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.perfis (handle, nome, descricao) OVERRIDING SYSTEM VALUE VALUES (1, 'Administrador', 'Mantem os cadastros');
INSERT INTO public.perfis (handle, nome, descricao) OVERRIDING SYSTEM VALUE VALUES (2, 'Usuario', 'Visualiza os filmes e series');


--
-- TOC entry 2882 (class 0 OID 41042)
-- Dependencies: 207
-- Data for Name: series; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.series (handle, nome, sinopse, capa, categoria, ano) OVERRIDING SYSTEM VALUE VALUES (1, 'O Último Reino', 'Um jovem guerreiro promete vingar a morte do pai e recuperar sua terra natal.', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQanXo1ZpYo8pQ7AlQTfl1LXsPZlQDyEafkYGWKgO7LTSmF966t', 1, 2004);
INSERT INTO public.series (handle, nome, sinopse, capa, categoria, ano) OVERRIDING SYSTEM VALUE VALUES (2, 'Família Moderna', 'a série oferece uma perspectiva honesta e muitas vezes hilária do cotidiano de uma família.', 'https://images-na.ssl-images-amazon.com/images/I/51cOCelb3DL._AC_SY400_.jpg', 2, 2009);


--
-- TOC entry 2884 (class 0 OID 41053)
-- Dependencies: 209
-- Data for Name: temporadas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.temporadas (handle, serie_id, sequencial) OVERRIDING SYSTEM VALUE VALUES (1, 1, 1);
INSERT INTO public.temporadas (handle, serie_id, sequencial) OVERRIDING SYSTEM VALUE VALUES (2, 1, 2);
INSERT INTO public.temporadas (handle, serie_id, sequencial) OVERRIDING SYSTEM VALUE VALUES (3, 1, 3);
INSERT INTO public.temporadas (handle, serie_id, sequencial) OVERRIDING SYSTEM VALUE VALUES (4, 2, 1);
INSERT INTO public.temporadas (handle, serie_id, sequencial) OVERRIDING SYSTEM VALUE VALUES (5, 2, 2);


--
-- TOC entry 2878 (class 0 OID 41022)
-- Dependencies: 203
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuarios (handle, nome, email, login, senha, perfil) OVERRIDING SYSTEM VALUE VALUES (1, 'eliane', 'eli.oliota@gmail.com', 'eho', 'eli.123', 1);
INSERT INTO public.usuarios (handle, nome, email, login, senha, perfil) OVERRIDING SYSTEM VALUE VALUES (3, 'Rubem', 'rdo@gmail.com', 'rdo', '123', 1);
INSERT INTO public.usuarios (handle, nome, email, login, senha, perfil) OVERRIDING SYSTEM VALUE VALUES (4, 'Fulano', 'fulano@gmail.com', 'fulano', '123', 2);


--
-- TOC entry 2898 (class 0 OID 0)
-- Dependencies: 217
-- Name: assistidos_handle_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.assistidos_handle_seq', 30, true);


--
-- TOC entry 2899 (class 0 OID 0)
-- Dependencies: 214
-- Name: categorias_handle_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categorias_handle_seq', 3, true);


--
-- TOC entry 2900 (class 0 OID 0)
-- Dependencies: 210
-- Name: episodios_handle_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.episodios_handle_seq', 8, true);


--
-- TOC entry 2901 (class 0 OID 0)
-- Dependencies: 204
-- Name: filmes_handle_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filmes_handle_seq', 5, true);


--
-- TOC entry 2902 (class 0 OID 0)
-- Dependencies: 212
-- Name: perfis_handle_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.perfis_handle_seq', 2, true);


--
-- TOC entry 2903 (class 0 OID 0)
-- Dependencies: 206
-- Name: series_handle_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.series_handle_seq', 2, true);


--
-- TOC entry 2904 (class 0 OID 0)
-- Dependencies: 208
-- Name: temporadas_handle_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.temporadas_handle_seq', 5, true);


--
-- TOC entry 2905 (class 0 OID 0)
-- Dependencies: 202
-- Name: usuarios_handle_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_handle_seq', 4, true);


--
-- TOC entry 2750 (class 2606 OID 41097)
-- Name: assistidos assistidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assistidos
    ADD CONSTRAINT assistidos_pkey PRIMARY KEY (handle);


--
-- TOC entry 2748 (class 2606 OID 41087)
-- Name: categorias categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (handle);


--
-- TOC entry 2744 (class 2606 OID 41067)
-- Name: episodios episodios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.episodios
    ADD CONSTRAINT episodios_pkey PRIMARY KEY (handle);


--
-- TOC entry 2738 (class 2606 OID 41039)
-- Name: filmes filmes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filmes
    ADD CONSTRAINT filmes_pkey PRIMARY KEY (handle);


--
-- TOC entry 2746 (class 2606 OID 41077)
-- Name: perfis perfis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.perfis
    ADD CONSTRAINT perfis_pkey PRIMARY KEY (handle);


--
-- TOC entry 2740 (class 2606 OID 41049)
-- Name: series series_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.series
    ADD CONSTRAINT series_pkey PRIMARY KEY (handle);


--
-- TOC entry 2742 (class 2606 OID 41057)
-- Name: temporadas temporadas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temporadas
    ADD CONSTRAINT temporadas_pkey PRIMARY KEY (handle);


--
-- TOC entry 2736 (class 2606 OID 41029)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (handle);


-- Completed on 2021-01-11 09:54:40

--
-- PostgreSQL database dump complete
--

