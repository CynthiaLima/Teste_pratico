#language: pt
@login
Funcionalidade: Login Lendico  
Eu como usuario Lendico
Quero  acessar a área do usuário
Para ter acesso as informações do meu empréstimo

Esquema do Cenário: Realizar login 
Dado que digitei <email> <senha>
Quando clicar em "entrar"
Então o sistema apresentará <mensagem>

Exemplos:
|email                 |senha  |mensagem                |
|teste@gmail.com       |123456 |ok                      |
|teste@hotmail.com     |123456 |ok                      |
|teste@yahoo.com       |1234567|ok                      |
|teste@gmail.com       |!@#$%% |Senha Inválida!         |
|teste@!@#@$#.com      |123456 |Email Inválido!         | 
|                      | m     |Email e Senha inválidos!|

Cenário: Recuperar senha
Dado que o usuário não lembre a senha de acesso
Quando clicar em "esqueci minha senha"
E ser direcionado para tela "Recupere sua senha"
E digitar email do usuario
E clicar em "Resetar Senha"
Então o sistema envia para o email um link para cadastrar nova senha



