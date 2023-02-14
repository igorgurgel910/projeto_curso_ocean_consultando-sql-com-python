CREATE DATABASE if not exists cursopythonsqlocean;
use cursopythonsqlocean;

CREATE TABLE if not exists aluno( 
id_aluno int auto_increment primary key,
nome_aluno varchar(30) not null,
UF_aluno char(2) not null,
telefone_aluno bigint not null,     
altura_aluno decimal(3,2)
);

-- varchar e char é nome, utiliza " "

CREATE TABLE if not exists professor(  -- Cria a tabela
id_professor int auto_increment primary key,
nome_professor varchar(30) not null,
UF_professor char(2) not null,
telefone_professor bigint not null,     
altura_professor decimal(3,2),
id_aluno int,
constraint fk_AlunoProfessor foreign key (id_aluno) references aluno (id_aluno)
);

-- comandos abaixo caso tenha criado a tabela sem relacionar as duas tabelas:
	-- alter table professor add column id_aluno int;
	-- alter table professor add constraint fk_AlunoProfessor foreign key (id_aluno) references aluno (id_aluno)


-- DML Manipulação de dados da tabela

-- INSERT INTO aluno(nome_aluno, UF_aluno, telefone_aluno, altura_aluno) values("Hebert", "SP", 1199885577, 1.80);

INSERT INTO aluno(nome_aluno, UF_aluno, telefone_aluno, altura_aluno) 
values("Hebert", "SP", 11985869585, 1.80),
("Wallace", "MG", 3598587777, 1.90),
("Defala", "RO", 11985822222, 1.95),
("Jonas", "PE", 82985869585, 1.85),
("Joselita", "SC", 1198581111, 1.75),
("Paula", "AM", 9285859999, 1.75);


-- UPDATE aluno set nome_aluno = "Herbert Frota" where id_aluno = '1' ; -- ' ' para argumento e não nome
-- UPDATE aluno set nome_aluno = "Paula Rocha" where id_aluno = '2' ; -- ' ' para argumento e não nome

-- DELETE FROM aluno where id_aluno = '47'; -- deleta apenas uma linha pelo id
-- DELETE FROM aluno where id_aluno;  -- deleta todos os campos ta bela pelo id
 
 INSERT INTO professor (nome_professor, UF_professor, telefone_professor, altura_professor, id_aluno)
values("Danilo", "MG", 11900001111, 1.78, 5);

select professor.nome_professor, aluno.nome_aluno from professor inner join aluno on aluno.id_aluno = professor.id_aluno;
 
 
 -- DQL Consulta de dados

-- SELECT * FROM aluno order by nome_aluno;
-- SELECT * FROM aluno order by nome_aluno desc;
-- SELECT nome_aluno, UF_aluno FROM aluno order by nome_aluno desc;
-- SELECT nome_aluno, UF_aluno FROM aluno WHERE UF_aluno = "MG";

SELECT * FROM aluno order by nome_aluno;
