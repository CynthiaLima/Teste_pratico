#language: pt 

Funcionalidade: Login  
Eu como usuario 
Quero acessar meu e-mail atráves de login e senha 
Para manter a segurança dos meus dados. 

Cenário: Realizar login sem inserir e-mail 
Dado acesso a url do email  
E cliquei em Inicie sessão 
Quando clicar no botão próximo 
Então  Eu verifico mensagem de erro 

Cenário: Realizar login sem inserir senha
Dado acesso a url do email 
E cliquei em Inicie sessão   
Quando digitar login válido
E clicar no botão próximo 
E clicar em entrar  
Então  Eu verifico mensagem de erro de senha

Cenário: Realizar login com sucesso  
Dado acesso a url do email  
E cliquei em Inicie sessão  
Quando digitar login válido
E clicar no botão próximo 
E digitar a senha 
E clicar em entrar  
Então Eu verifico se estou na página correta.  

