Dado('que eu acesse a API do correio com o cep {string}') do |cep|
    @response = HTTParty.get('viacep.com.br/ws/01001000/json/')
    puts cep
  end
  
  Dado('o código de retorno da página seja {string}') do |arg1|
    expect(@response.code).to be(200)
  end
  
  Dado(/^eu verei no campo "([^"]*)" o valor "([^"]*)"$/) do |campo, valor| 
    expect(@response[campo]).to eq(valor)
  end
  
  Dado('eu verei no campo {string}') do |campo|
  expect(@response.body).to include(campo)
  end