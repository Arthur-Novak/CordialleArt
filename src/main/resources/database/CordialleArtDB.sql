--
-- PostgreSQL database dump
--

\restrict nmM6qQhlVkGm2ntmtca8bmSTdQxpQNCLfzeUA0qcUhJgXEBr6nODNANqqS5rlbW

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.1

-- Started on 2026-05-31 00:15:40

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
-- TOC entry 222 (class 1259 OID 24670)
-- Name: produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produto (
    codigo integer NOT NULL,
    nome character varying(150) NOT NULL,
    descricao text,
    preco numeric(10,2) NOT NULL
);


ALTER TABLE public.produto OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24669)
-- Name: produto_codigo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produto_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.produto_codigo_seq OWNER TO postgres;

--
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 221
-- Name: produto_codigo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produto_codigo_seq OWNED BY public.produto.codigo;


--
-- TOC entry 220 (class 1259 OID 24654)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    codigo integer NOT NULL,
    nome character varying(150) NOT NULL,
    email character varying(150) NOT NULL,
    senha character varying(100) NOT NULL,
    ativo boolean DEFAULT true,
    telefone character varying(20),
    datanascimento character varying(20),
    estado character varying(50),
    cidade character varying(100)
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24653)
-- Name: usuario_codigo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuario_codigo_seq OWNER TO postgres;

--
-- TOC entry 4926 (class 0 OID 0)
-- Dependencies: 219
-- Name: usuario_codigo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_codigo_seq OWNED BY public.usuario.codigo;


--
-- TOC entry 4762 (class 2604 OID 24673)
-- Name: produto codigo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto ALTER COLUMN codigo SET DEFAULT nextval('public.produto_codigo_seq'::regclass);


--
-- TOC entry 4760 (class 2604 OID 24657)
-- Name: usuario codigo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN codigo SET DEFAULT nextval('public.usuario_codigo_seq'::regclass);


--
-- TOC entry 4919 (class 0 OID 24670)
-- Dependencies: 222
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.produto (codigo, nome, descricao, preco) VALUES (1, 'Kit Papelaria Botânica', 'Coleção limitada com estampas botânicas exclusivas.', 129.90);
INSERT INTO public.produto (codigo, nome, descricao, preco) VALUES (3, 'carimbo', 'carimbo personalizado!', 25.00);


--
-- TOC entry 4917 (class 0 OID 24654)
-- Dependencies: 220
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuario (codigo, nome, email, senha, ativo, telefone, datanascimento, estado, cidade) VALUES (1, 'Administrador', 'admin@cordialle.com', '123456', true, '(55) 99999-9999', '', 'RS', 'Santa Maria');
INSERT INTO public.usuario (codigo, nome, email, senha, ativo, telefone, datanascimento, estado, cidade) VALUES (5, 'arthurr', 'arthur@teste', 'teste123', true, '345141', '2000-11-11', 'RS', 'santa maria');
INSERT INTO public.usuario (codigo, nome, email, senha, ativo, telefone, datanascimento, estado, cidade) VALUES (6, 'ronaldinho', 'traa@teste', 'teste123', true, '345141', '2000-11-11', 'PR', 'santa maria');


--
-- TOC entry 4927 (class 0 OID 0)
-- Dependencies: 221
-- Name: produto_codigo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produto_codigo_seq', 3, true);


--
-- TOC entry 4928 (class 0 OID 0)
-- Dependencies: 219
-- Name: usuario_codigo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_codigo_seq', 6, true);


--
-- TOC entry 4768 (class 2606 OID 24680)
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (codigo);


--
-- TOC entry 4764 (class 2606 OID 24668)
-- Name: usuario usuario_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_email_key UNIQUE (email);


--
-- TOC entry 4766 (class 2606 OID 24666)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (codigo);


-- Completed on 2026-05-31 00:15:40

--
-- PostgreSQL database dump complete
--

\unrestrict nmM6qQhlVkGm2ntmtca8bmSTdQxpQNCLfzeUA0qcUhJgXEBr6nODNANqqS5rlbW

