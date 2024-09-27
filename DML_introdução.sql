CREATE DATABASE gersalarios;


create table cargo(
cargo_id int auto_increment PRIMARY KEY not null,
nome varchar (100) not null,
salario decimal (10,2) not null,
descricao text (100)
);


create table funcionario(
	id int auto_increment PRIMARY KEY not null,
    nome varchar(100) not null,
    sobrenome varchar(100) not null,
    email varchar(50) not null,
    cargo_id int not null,
    data_contratacao date not null,
    foreign key(cargo_id) references cargo(cargo_id)
);

insert into cargo(nome,salario,descricao)
values ("DEV front end", 25000.00, "Trabalha na interface"),
       ("DEV front end", 30000.00, "Trabalha nos bastidores"),
       ("DEv full Stack", 40000.00, "Trabalha em ambos");
       
       select * from cargo
       where salario > 30000.00;
       
       delete from cargo
        where cargo_id = 7;

       select * from cargo;
       
       select * from funcionario
       where id = 1;
       
       select * from funcionario
       where data_contratacao = "2020-04-26";
       
       insert into funcionario(nome,sobrenome,email,cargo_id,data_contratacao)
       values ("Ana", "Julya","AnaJulya@gmail.com",15,"2020-04-26"),
			  ("Beatriz", "da Silva","BeatrizSilva@gmail.com",15,"2023-01-10"),
			  ("Lucas" ,"Prestes","LucasPrestes@gmail.com",14,"2024-09-30"),
			  ("Paola", "Vieira","PaolaVieira@gmail.com",14,"2022-05-23"),
			  ("Rafaella", "Seabra","RafaellaSeabra@gmail.com",13,"2021-08-20");
       
        select * from funcionario;
        
        update funcionario
        set data_contratacao = "2022-05-27"
        where id = 4;
        
        update funcionario
        set data_contratacao = "2021-08-22"
        where id = 5;
        
        delete from funcionario
        where id = 1;
