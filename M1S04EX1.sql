PGDMP         	                 {            canasvieiras    10.21    10.21     ?
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ?
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ?
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ?
           1262    108987    canasvieiras    DATABASE     ?   CREATE DATABASE canasvieiras WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE canasvieiras;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            ?
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            ?
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            ?            1259    111825    aluno    TABLE     ?   CREATE TABLE public.aluno (
    id_matricula bigint,
    nome character varying(50),
    cpf character varying(11),
    id_turma bigint,
    email character varying(50),
    ativo boolean
);
    DROP TABLE public.aluno;
       public         postgres    false    3            ?            1259    108999 	   movimento    TABLE     ?   CREATE TABLE public.movimento (
    id_movimento bigint NOT NULL,
    id_produto bigint,
    id_tipo_movimento character(1) DEFAULT 1,
    quantidade numeric(12,4)
);
    DROP TABLE public.movimento;
       public         postgres    false    3            ?            1259    108988    produto    TABLE     ?   CREATE TABLE public.produto (
    id_produto bigint NOT NULL,
    referencia character varying(30),
    descricao character varying(100),
    preco numeric(12,2),
    saldo numeric(12,4)
);
    DROP TABLE public.produto;
       public         postgres    false    3            ?
          0    111825    aluno 
   TABLE DATA               P   COPY public.aluno (id_matricula, nome, cpf, id_turma, email, ativo) FROM stdin;
    public       postgres    false    198   ?       ?
          0    108999 	   movimento 
   TABLE DATA               \   COPY public.movimento (id_movimento, id_produto, id_tipo_movimento, quantidade) FROM stdin;
    public       postgres    false    197   ?       ?
          0    108988    produto 
   TABLE DATA               R   COPY public.produto (id_produto, referencia, descricao, preco, saldo) FROM stdin;
    public       postgres    false    196   ?       x
           2606    109006    movimento movimento_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.movimento
    ADD CONSTRAINT movimento_pkey PRIMARY KEY (id_movimento);
 B   ALTER TABLE ONLY public.movimento DROP CONSTRAINT movimento_pkey;
       public         postgres    false    197            v
           2606    108995    produto produto_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id_produto);
 >   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_pkey;
       public         postgres    false    196            y
           2606    109034    movimento fk_produto    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movimento
    ADD CONSTRAINT fk_produto FOREIGN KEY (id_produto) REFERENCES public.produto(id_produto) NOT VALID;
 >   ALTER TABLE ONLY public.movimento DROP CONSTRAINT fk_produto;
       public       postgres    false    197    196    2678            ?
   !  x?U?KN?0????>A??cǣB,Z?uՍI?bɉ???b??a?"??7?fl?6?xA{^] ̴??KL(諍??Σ?a????«RD?nJ?su?)??)?????nքv??Г~v??F)l4?U?r??$?6y??g?\??
L9!????E?6???,:???+O??L3#??h]h?7kB	oޞ#:?iY?B??(?u??b?_j2]N?}D?8?%?+?	?8gc??R??z?????.???Xi?q???H(?$
Қ_????8??r!)?J??ދ?J??Sw?t]??
??      ?
      x?3?4??4?3 ?=... ??      ?
   *   x?3?4?(?O)-?WI-.I?44?32?4?3 ?=... ??a     