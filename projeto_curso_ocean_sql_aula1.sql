CREATE DATABASE if not exists cursopythonsqlocean;  -- Cria o banco de dados
use cursopythonsqlocean;   -- seleciona o banco de dados 

CREATE TABLE if not exists aluno(  -- Cria a tabela
id_aluno int auto_increment primary key,
nome_aluno varchar(30) not null,
UF_aluno char(2) not null,
telefone_aluno bigint not null,     
altura_aluno decimal(4,3)  -- 1,078 
);

-- DDL CREATE, ALTER, DROP (deletar)

-- alter table aluno add column naturalidade varchar(30) not null;
-- alter table aluno add column naturalidade varchar(30) not null first;
-- alter table aluno add column naturalidade varchar(30) not null after nome_aluno ;
-- alter table aluno modify column UF_aluno varchar(2) not null;
alter table aluno drop column altura_aluno;
describe aluno; -- mostra a tabela completa

show tables;
-- alter table aluno change column UF_aluno estado_aluno char(2) not null;
alter table aluno rename to aluno_ocean;
show tables;

drop table if exists aluno_ocean;
show tables;