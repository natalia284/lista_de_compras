# :memo: Lista de Compras

Este é um projeto básico de CRUD (Create, Read, Update, Delete) usando o framework Ruby on Rails, com o banco de dados PostgreSQL rodando em um container Docker. Siga os passos abaixo para configurar e rodar a aplicação em seu ambiente local.

# :round_pushpin: Pré-Requisitos

Antes de começar, verifique se você possui os seguintes softwares instalados:

- **Ruby** (versão utilizada: 3.0.2)
- **Rails** (versão utlizada: 6.1.7.10)
- **Node.js** e **Yarn** para gerenciamento de pacotes JavaScript
- **Docker** e **Docker Compose** para gerenciar o container do PostgreSQL

# :gear: Instalação

``` bash
# Clone o repositório para seu ambiente local usando o comando abaixo:

git clone https://github.com/natalia284/lista_de_compras.git

```
# :game_die: Configuração do Banco de Dados

O banco de dados utilizado no projeto foi o PostgreSQL. Com o docker instalado, crie o contâiner com o comando: 
``` bash
# Modifique o comando colocando a senha que deseja para o contâiner do seu banco

docker run --name banco-ruby -e POSTGRES_PASSWORD=sua-senha -e POSTGRES_USER=natalia -e POSTGRES_DB=banco -p 5432:5432 -d postgres

```
Para visualizar o contâiner, digite: 

```bash 
# Comando para ver o contâiner 

docker ps

```
No arquivo config/database.yml altere todos os campos `password: sua-senha` para que aconteça a conexão do banco com o projeto. 

# :computer: Dependências

Instale as dependências do projeto listadas no `Gemfile`:

```bash
# Instala as gems

bundle install

```
Instale também as dependências JavaScript necessárias com o Yarn:

```bash
# Instala as depêndencias do JavaScript

yarn install

```

Com o container Docker rodando e o database.yml configurado, crie e configure o banco de dados para o ambiente de desenvolvimento:

```bash

rails db:create
rails db:migrate

```

Por fim, inicie o servidor Puma: 


```bash

rails server

```

