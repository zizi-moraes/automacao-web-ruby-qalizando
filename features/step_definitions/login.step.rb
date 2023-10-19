Dado('que o usuario acessa a pagina de Login') do
  login.load
end

Quando('preenche os dados de login e senha corretamente') do
  login.userLogin(CREDENTIALS[:userX][:email], CREDENTIALS[:userX][:password])
end

Então('visualiza a home da página logada.') do
  home.checkLogInSuccessful
end
