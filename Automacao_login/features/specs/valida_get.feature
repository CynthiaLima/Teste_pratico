# language: pt
# encoding: UTF-8


Funcionalidade: Validar o retorno da API Via CEP
Eu como usuário
Quero conseguir realiza uma pesquisa
Para validar o retorno da API


Cenário: Validar CEP existente
Dado que eu acesse a API do via cep correio com o cep "07910-210"
E o código de retorno da página seja "200"
E eu verei no campo "bairro" o valor "Jardim Professor Francisco Morato"
E eu verei no campo "logradouro" o valor "Rua João Mendes Júnior" 
E eu verei no campo "uf" o valor "SP"
E eu verei no campo "localidade" o valor "Francisco Morato"


Cenário: Validar CEP não existente
Dado que eu acesse a API do via cep com o cep "00000-000"
E o código de retorno da página seja "200"
E eu verei no campo "erro"