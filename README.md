# 💅 Banco de Dados — Salão de Beleza “Beleza Única”
Projeto desenvolvido para a disciplina de **Modelagem e Manipulação de Dados**, contendo a criação e manipulação de um banco de dados relacional completo, seguindo boas práticas de SQL, integridade referencial e organização profissional de repositório.

## 📌 **Objetivo do Projeto**
Construir um banco de dados funcional para o salão de beleza fictício **Beleza Única**, permitindo:

- Cadastro de clientes  
- Registro de profissionais  
- Controle de serviços  
- Agendamentos  
- Pagamentos  
- Produtos utilizados nos procedimentos  

Além disso, o projeto demonstra **manipulação real de dados (DML)** usando INSERT, SELECT, UPDATE e DELETE.

## 🧱 **Estrutura do Repositório**

O repositório está organizado em arquivos separados, seguindo uma ordem lógica de execução:
📁 bd-beleza-unica-sql
├── 01_criacao_tabelas.sql        → Criação de todas as tabelas do banco
├── 02_inserts.sql                → Inserção de dados iniciais (povoamento)
├── 03_selects.sql                → Consultas SELECT com WHERE, ORDER BY, JOIN e LIMIT
├── 04_updates_deletes.sql        → Comandos UPDATE e DELETE com integridade
├── init.sql                      → Script completo com todas as etapas integradas
└── selects.sql                   → Consultas adicionais (arquivo auxiliar)
--

## 🛠️ **Tecnologias Utilizadas**
- **MySQL**
- OneCompiler / DB-Fiddle (para execução online)
- Git & GitHub (versionamento e entrega)


## 🧪Como Executar
Você pode copiar cada arquivo e executar em qualquer ambiente MySQL:

1️⃣ Criação das tabelas
```bash
Execute o arquivo 01_criacao_tabelas.sql

2️⃣ Inserção dos dados

Execute o arquivo 02_inserts.sql

3️⃣ Consultas
 Execute o arquivo 03_selects.sql

4️⃣ Updates e Deletes
Execute o arquivo 04_updates_deletes.sql

Ou, se preferir:
Execute o arquivo init.sql (completo)

📊 Modelagem Aplicada

O projeto segue rigorosamente:
	•	Integridade referencial
	•	Chaves primárias e estrangeiras
	•	Normalização até 3FN
	•	Relacionamentos 1:N e N:N



🔎 Exemplos de Consultas Implementadas
	•	Clientes em ordem alfabética
	•	Serviços acima de R$ 50
	•	JOIN entre clientes, agendamentos e serviços
	•	Serviços mais rápidos (LIMIT)
	•	Produtos utilizados em cada atendimento



✔️ Requisitos Atendidos (Checklist da Professora)
	•	Script de criação das tabelas
	•	Script de INSERTs
	•	Script com consultas SELECT
	•	Script com UPDATE e DELETE
	•	Repositório público no GitHub
	•	Organização profissional por arquivos
	•	README.md completo

👩‍💻 Desenvolvido por:

Munique Castilho Leon Martinez
Curso: Análise e Desenvolvimento de Sistemas — Cruzeiro do Sul
