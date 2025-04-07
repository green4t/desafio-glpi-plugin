![green4t](https://www.green4t.com/wp-content/uploads/2021/10/logo-green4t.svg)


# Desafio GLPI Plugin green4T

Primeiramente, obrigado pelo seu interesse em trabalhar na **green4T**!
Abaixo você encontrará todos as informações necessárias para iniciar o seu teste.

## Avisos antes de começar

- Leia com atenção este documento todo e tente seguir ao **máximo** as instruções;
- Faça um clone desse repositório e publique no seu usuário GitHub;
- O seu repostório deverá ser **privado**;
- Convide o usuário da **green4T** que foi compartilhado por email pelo **recrutador responsável** para colaborar no seu repositório, dessa forma poderemos avaliar o seu trabalho;
- Faça seus commits no seu repositório;
- Envie o link do seu repositório para o email do **recrutador responsável**;
- Você poderá consultar o Google, Stackoverflow ou algum projeto particular na sua máquina;
- Dê uma olhada nos [Materiais úteis](#materiais-úteis);
- Fique à vontade para enviar qualquer perguntar aos recrutadores;


## Objetivo

Criar um novo Plugin simples, no padrão do GLPi, para extender as funcionalidades existentes da aplicação.


## User Story

Sendo um Gerente de Contrato, eu quero associar um valor financeiro a cada Ticket, para que eu possa ter um indicador financeiro para ajustar minha operação adequadamente.

### Critérios de Aceite
A seguir estão algumas regras de negócio e critérios de avaliação que são importantes para o funcionamento do plugin:

- Existir um novo campo "Preço", do tipo monetário, para associar um valor financeiro a um Ticket
- O valor do campo deve ser formatado em R$, com separadores de milhares e centavos
- O campo deve conter um valor monetário válido para representar um "Preço"
- Quando o Ticket for solucionado, o valor do campo deverá ser adicionado no final do texto da solução, com formatação adequada

## Sobre o ambiente da aplicação:

- O desafio está relacionado com uma aplicação de código aberto - o GLPi - e portanto espera-se que os padrões do projeto sejam seguidos

- Trata-se de uma aplicação para gestão de serviços através de tickets, ativos e outros conceitos de ITIL e ITSM

- Valorizamos uma boa estrutura de código criada por você

- O código que você criar deverá estar estruturado na pasta "plugins" desse repositório

- Gerencie o seu plugin na página http://localhost:8080/front/marketplace.php

# Avaliação

Ao finalizar seu desafio, avise ao **recrutador responsável** e confirme o link do seu repositório.
Nossa equipe irá executar a sua entrega no nosso ambiente e validar os critérios de aceite.

## O que será avaliado:

Habilidades básicas de criação de funcionalidades fullstack:
- Conhecimentos sobre a stack anunciada na vaga
- Uso do Git
- Capacidade analítica
- Apresentação de código limpo e organizado

Conhecimentos intermediários de construção de projetos manuteníveis:
- Conhecimentos sobre conceitos de containers (Docker, Docker-Compose etc)
- Documentação e descrição de funcionalidades e manuseio do projeto
- Implementação e conhecimentos sobre testes de unidade e integração
- Identificar e propor melhorias
- Boas noções de bancos de dados relacionais

Aptidões para criar e manter aplicações de alta qualidade:
- Aplicação de conhecimentos de observabilidade
- Utlização de CI para rodar testes e análises estáticas
- Boas habilidades na aplicação do conhecimento do negócio no software
- Implementação guiada por ferramentas de qualidade (análise estática, PHPMD, PHPStan, PHP-CS-Fixer etc)
- Noções de PHP assíncrono


## Materiais úteis

- https://www.green4t.com/sobre-nos/
- https://glpi-plugins.readthedocs.io/en/latest/


## Requisitos

- Docker
- Docker-compose

## Uso

### Iniciando o ambiente de desenvolvimento

1. Navegue até o diretório do projeto:

    ```sh
    cd ./desafio-glpi-plugin
    ```

2. Para iniciar o ambiente, execute o seguinte comando:

    ```sh
    docker-compose up -d
    ```

3. Para parar o ambiente, utilize o comando:

    ```sh
    docker-compose stop
    ```

4. Se precisar recriar o ambiente, siga estes passos:

    ```sh
    docker-compose down -v 
    docker-compose up -d
    ```

5. Para acompanhar os logs do ambiente, utilize o comando:

    1. Logs do ambiente:
    ```sh
    docker-compose logs -f 
    ```

    2. PHP errors:
    ```sh
    docker compose exec glpi_app tail -f /var/log/glpi/php-errors.log
    ```

6. Para listar os volumes do docker, utilize o comando:

    ```sh
    docker compose volume ls
    ```

### Acessando o ambiente de testes:

- URL: [http://localhost:8080](http://localhost:8080)
- Usuário: `glpi`
- Senha: `glpi`
