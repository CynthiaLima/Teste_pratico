Dado('acesso a url do email') do
    user.load
    sleep (5)
   end

Dado('cliquei em Inicie sessão') do
    user.iniciar_sessao
    sleep(5) 
end
    
Quando('digitar login válido') do
    fill_in(id: 'i0116', with: 'qa_sp@outlook.com')   
    #user.digite_login
    sleep (10)
end
  
Quando('clicar no botão próximo') do
    #user.proximo
    click_on('Próximo')
    sleep(5)    
end
  
Quando('digitar a senha') do
    fill_in(id: 'i0118', with: 'QA_teste@2020' )   
end
  
  Quando('clicar em entrar') do
    click_on('Entrar')
    sleep(5) 
  end

Então('Eu verifico se estou na página correta.') do
    expect(page).to have_content('Painel de navegação') 
    sleep (5) 
end

Então('Eu verifico mensagem de erro') do
    expect(page).to have_content('Insira um endereço de email, número de telefone ou nome Skype válidos.')
    sleep (10)
end
  
Então('Eu verifico mensagem de erro de senha') do
    expect(page).to have_content('Digite a senha da sua conta da Microsoft.')
end
  
