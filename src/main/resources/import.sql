INSERT INTO tb_categoria  (descricao) VALUES ('Curso');
INSERT INTO tb_categoria (descricao) VALUES ('Oficina');

INSERT INTO tb_bloco (inicio, fim) VALUES ('2017-09-25 08:00:00', '2017-09-25 11:00:00');
INSERT INTO tb_bloco (inicio, fim) VALUES ('2017-09-25 14:00:00', '2017-09-25 18:00:00');
INSERT INTO tb_bloco (inicio, fim) VALUES ('2017-09-26 08:00:00', '2017-09-26 11:00:00');

INSERT INTO tb_participante (nome, email) VALUES ('José Silva', 'jose@gmail.com');
INSERT INTO tb_participante (nome, email) VALUES ('Tiago Faria', 'tiago@gmail.com');
INSERT INTO tb_participante (nome, email) VALUES ('Maria do Rosário', 'maria@gmail.com');
INSERT INTO tb_participante (nome, email) VALUES ('Teresa Silva', 'teresa@gmail.com');

INSERT INTO tb_atividade (nome, descricao, preco) VALUES ('Curso de HTML', 'Aprenda HTML de forma pratica', 80.00);
INSERT INTO tb_atividade (nome, descricao, preco) VALUES ('Oficina de Github', 'Controle versões do seus projetos', 50.00);


INSERT INTO tb_ativ_part (ativid_id, partic_id) VALUES (1, 1);
INSERT INTO tb_ativ_part (ativid_id, partic_id) VALUES (2, 2);
INSERT INTO tb_ativ_part (ativid_id, partic_id) VALUES (2, 3);
