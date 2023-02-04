CREATE TABLE IF NOT EXISTS public.aluno
(
    id_matricula bigint,
    nome character varying(50) COLLATE pg_catalog."default",
    cpf character varying(11) COLLATE pg_catalog."default",
    id_turma bigint,
    email character varying(50) COLLATE pg_catalog."default",
    ativo boolean
)

INSERT INTO public.aluno(id_matricula, nome, cpf, id_turma, email, ativo)
VALUES (1, 'Carlos Miguel', '03856946012', '1', 'carlosmiguel@gmail.com', true);
INSERT INTO public.aluno(id_matricula, nome, cpf, id_turma, email, ativo)
VALUES (2, 'Pedro Henrique', '02223373038', '1', 'pedrohenrique@gmail.com', true);
INSERT INTO public.aluno(id_matricula, nome, cpf, id_turma, email, ativo)
VALUES (3, 'Luan Felipe', '80959770984', '1', 'luanfelipe@gmail.com', true);
INSERT INTO public.aluno(id_matricula, nome, cpf, id_turma, email, ativo)
VALUES (4, 'Maria Aparecida', '82502411939', '1', 'mariaaparecida@gmail.com', true);
INSERT INTO public.aluno(id_matricula, nome, cpf, id_turma, email, ativo)
VALUES (5, 'Luana Vitória', '94383968961', '2', 'luanavitória@gmail.com', true);
INSERT INTO public.aluno(id_matricula, nome, cpf, id_turma, email, ativo)
VALUES (6, 'Tiago Ventura', '11685117988', '2', 'tiagoventura@gmail.com', true);
INSERT INTO public.aluno(id_matricula, nome, cpf, id_turma, email, ativo)
VALUES (7, 'Bruna Louise', '43245624077', '2', 'brunalouise@gmail.com', true);
INSERT INTO public.aluno(id_matricula, nome, cpf, id_turma, email, ativo)
VALUES (8, 'Marcio Donato', '05747441000', '2', 'marciodonato@gmail.com', true);
INSERT INTO public.aluno(id_matricula, nome, cpf, id_turma, email, ativo)
VALUES (9, 'Diego Lopes', '83830782004', '1', 'diegolopes@gmail.com', true);
INSERT INTO public.aluno(id_matricula, nome, cpf, id_turma, email, ativo)
VALUES (10, 'Afonso Padilha', '01726752003', '1', 'afonsopadilha@gmail.com', true);


UPDATE public.aluno SET id_turma=null, ativo = false WHERE cpf = '43245624077'

DELETE FROM public.aluno WHERE nome  = 'Afonso Padilha'