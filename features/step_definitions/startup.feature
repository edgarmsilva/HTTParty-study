# language: pt 

@startup
Funcionalidade: Manter dados de Startup através de API
Como um usuário o sistema
Eu quero realizar as requisições na API
A fim de manipular as informações do cadastro de startup

Cenário: cadastrar uma Startup
    Dado o endereço da API para manter o cadastro de Startup
    Quando realizar uma requisição para cadastrar uma startup
    Então a API irá retornar os dados do cadastro da startup respondendo o código 201

Cenário: Consultar uma Startup
    Dado o endereço da API para manter o cadastro de Startup
    Quando realizar uma requisição passando o ID da startup
    Então a API irá retornar os dados do cadastro da startup correspondente respondendo o código 200

Cenário: Alterar uma Startup
    Dado o endereço da API para manter o cadastro de Startup
    Quando realizar uma requisição para alterar a startup
    Então a API irá retornar os dados do cadastro da startup alterados respondendo o código 200

Cenário: Deletar uma Startup
    Dado o endereço da API para manter o cadastro de Startup
    Quando realizar uma requisição para excluir uma startup
    Então a API irá retornar os dados da exclusão respondendo o código 200
