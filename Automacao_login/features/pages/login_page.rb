class User < SitePrism::Page
 set_url 'https://outlook.live.com/mail/0/inbox'

 element :iniciar, "[Class='internal sign-in-link']"
 element :digite_login, '#i0116'
 element :proximo,  "[input='Entrar']"
 element :digite_senha, '#i0118'
 element :entrar,  "[input='Entrar']"


def iniciar_sessao
    iniciar.click
 end

 #def digitar_login
 #    digite_login.set 'qa_sp@outlook.com'
 #end

# def proximo
#     proximo.click
# end

 #def digitar_senha
 #   digite_senha.set 'QA_teste@2020'
 #end

 #def entrar
  #  entrar.click
#end



end
