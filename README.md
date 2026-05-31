# 🌿 Cordialle Art - E-commerce & Painel Administrativo

![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=java&logoColor=white)
![JSP / Jakarta EE](https://img.shields.io/badge/JSP_Servlets-007396?style=for-the-badge&logo=java&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![Bootstrap](https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white)
![Maven](https://img.shields.io/badge/Maven-C71A36?style=for-the-badge&logo=apachemaven&logoColor=white)

> Sistema web full-stack desenvolvido sob o padrão MVC para a **Cordialle Art**, um ateliê fictício de papelaria artesanal. O projeto contempla uma vitrine pública para clientes e um sistema administrativo restrito (Dashboard) para a gestão completa do catálogo, administradores e emissão de relatórios financeiros.

## 📌 Sumário
- [Visão Geral e Funcionalidades](#-visão-geral-e-funcionalidades)
- [Tecnologias Utilizadas](#-tecnologias-utilizadas)
- [Configuração do Banco de Dados](#-configuração-do-banco-de-dados)
- [Diagrama Entidade-Relacionamento](#-diagrama-entidade-relacionamento-er)
- [Como Instalar e Executar](#-como-instalar-e-executar)
- [Estrutura do Projeto](#-estrutura-do-projeto)

---

## 🚀 Visão Geral e Funcionalidades

O projeto foi dividido em duas grandes áreas para simular um ambiente real de e-commerce:

**🛍️ Área Pública (Vitrine)**
* **Home & Quem Somos:** Apresentação da marca, conceitos de sustentabilidade e design autoral.
* **Galeria:** Catálogo dinâmico de produtos consumido diretamente do banco de dados.
* **Carrinho de Compras:** Interface de checkout simulada para gestão dos itens escolhidos.

**🔒 Área Administrativa (Dashboard)**
* **Autenticação:** Sistema de login com validação no banco de dados e controle de Sessão (`HttpSession`).
* **Proteção de Rotas:** Telas restritas acessíveis através do `WEB-INF`, garantindo que o usuário só acesse via Controller (Servlets).
* **Gestão de Produtos:** CRUD completo (Cadastro, Listagem, Edição e Exclusão) do catálogo da loja.
* **Gestão de Usuários:** CRUD de administradores, incluindo controle de status (Ativo/Inativo) e bloqueio de exclusão do próprio usuário logado.
* **📊 Relatórios e Estatísticas:** Dashboard analítico que processa os dados do banco para exibir métricas em tempo real, como: total de itens em estoque, valor total do catálogo, ticket médio de preços e destaques de maior/menor valor.

---

## 🛠️ Tecnologias Utilizadas

**Front-end:**
* **HTML5 & CSS3** (Módulos separados: `home.css`, `crud.css`, `galeria.css`, `relatorio.css`, etc.)
* **Bootstrap 5** (Layout e Responsividade)
* **JSP (JavaServer Pages) & JSTL 1.2** (Renderização dinâmica das views)

**Back-end & Infraestrutura:**
* **Java 17+** (com **Jakarta Servlet API 6.1.0**)
* **Arquitetura MVC** (Model, View, Controller) + DAO Pattern
* **PostgreSQL** (Banco de dados relacional via Driver JDBC `42.7.8`)
* **Maven** (Gerenciador de dependências e build `war`)
* **Servidor:** WildFly / Apache Tomcat

---

## 🗄️ Configuração do Banco de Dados

O sistema utiliza o PostgreSQL. Para que a conexão via JDBC funcione imediatamente, configure seu servidor local com as seguintes credenciais definidas na classe `ConectaDBPostgres`:

* **Banco de Dados:** `CordialleArt`
* **Porta:** `5432`
* **Usuário:** `postgres`
* **Senha:** `1124`

> 💡 **Nota para Avaliação:** Na pasta `src/main/resources/database/` do projeto, você encontrará o arquivo `CordialleArtDB.sql` contendo o dump do banco de dados. Restaure este arquivo no seu PostgreSQL para importar automaticamente toda a estrutura de tabelas e os dados de teste já cadastrados.

---
## 📊 Diagrama Entidade-Relacionamento (ER)

Abaixo está a representação visual de como as tabelas do sistema se relacionam:

![Diagrama ER](src/main/webapp/img/ER%20diagrama.png)

---
## ⚙️ Pré-requisitos do Ambiente

Antes de compilar e executar o projeto, certifique-se de que a máquina possui as seguintes ferramentas instaladas e configuradas:

* **Java Development Kit (JDK):** Versão 17 ou superior (usamos a API do Jakarta EE 6.1.0).
* **Servidor de Aplicação:** WildFly (Recomendado) ou Apache Tomcat (versão 10+).
* **Banco de Dados:** PostgreSQL (versão 12 ou superior).
* **Gerenciador de Pacotes:** Apache Maven.
* **IDE (Opcional):** IntelliJ IDEA, Eclipse ou VS Code.
---
## 🏃 Como Instalar e Executar

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/Arthur-Novak/CordialleArt.git
2. ### 🔑 Acesso para logar
Após iniciar o servidor, acesse a tela de login e utilize as credenciais de teste (já incluídas no banco de dados):
- **Email:** `admin@cordialle.com.br` 
- **Senha:** `123456` 
   
   
   
   
   
