💅 **Banco de Dados — Salão de Beleza “Beleza Única”**

Este repositório contém o projeto completo de criação e manipulação de um banco de dados relacional para o salão de beleza fictício Beleza Única, atendendo a todos os requisitos da atividade, incluindo modelagem lógica, inserção de dados, consultas, atualizações e exclusões.
O objetivo é demonstrar domínio de SQL, integridade referencial, normalização e organização profissional de scripts.


📌 **Sobre o Projeto**

O projeto foi construído em MySQL e representa um banco de dados realista contendo:
	•	Cadastro de clientes
	•	Cadastro de profissionais
	•	Catálogo de serviços
	•	Controle de agendamentos
	•	Registro de pagamentos
	•	Produtos utilizados nos atendimentos
	•	Relacionamento N:N entre agendamentos e produtos

Toda a estrutura foi planejada seguindo boas práticas de modelagem e normalização.



🧱 **Estrutura do Repositório**

Os arquivos estão organizados por ordem de execução e propósito:
		•	**01_criacao_tabelas.sql**
Contém toda a estrutura do banco de dados, com criação de entidades, chaves primárias e estrangeiras, relacionamentos e regras de integridade.
	    •	**02_inserts.sql**
Povoamento inicial das tabelas com dados coerentes com o minimundo.
	    •	**03_selects.sql**
Conjunto de consultas SQL utilizando WHERE, ORDER BY, LIMIT e JOIN.
	    •	**04_updates_deletes.sql**
Atualização e remoção de registros com condições, mantendo integridade das FK.
		•	**init.sql**
Arquivo completo contendo criação das tabelas + inserts + consultas base.



🛠️ **Tecnologias Utilizadas**
	•	MySQL
	•	OneCompiler / DB-Fiddle (execução e testes)
	•	Git & GitHub (versionamento)
	•	Ambiente web de consultas e depuração



▶️ **Como Executar o Projeto**

1️⃣ Execute a criação das tabelas:

01_criacao_tabelas.sql

2️⃣ Insira os dados:

02_inserts.sql

3️⃣ Teste as consultas:

03_selects.sql

4️⃣ Realize updates e deletes:

04_updates_deletes.sql



👉 **OU execute tudo de uma vez:**

init.sql



🔎 **Consultas Implementadas**

As consultas SELECT incluem:
	•	Listagem ordenada de clientes
	•	Serviços com valor acima de um limite
	•	JOIN entre clientes, agendamentos e serviços
	•	Listagem apenas de serviços rápidos
	•	Listagem de produtos utilizados em cada atendimento

Também foram implementados UPDATE e DELETE garantindo integridade referencial.



✔️ **Checklist da Atividade**
	•	Criação completa das tabelas
	•	Povoamento (INSERTs)
	•	SELECTs com WHERE, ORDER BY, LIMIT, JOIN
	•	UPDATEs e DELETEs com condições
	•	Scripts separados e organizados
	•	Repositório GitHub público
	•	README profissional e completo
	•	Execução testada e validada sem erros



👩‍💻 **Autoria**

Munique Castilho Leon Martinez
Estudante de Análise e Desenvolvimento de Sistemas
Cruzeiro do Sul — EAD



🏁 **Conclusão**

Este projeto demonstra o ciclo completo de construção e manipulação de um banco de dados real, desde a modelagem até a execução prática da linguagem SQL.
A entrega contém todos os scripts organizados, limpos, comentados e funcionais, atendendo plenamente aos requisitos da disciplina.
