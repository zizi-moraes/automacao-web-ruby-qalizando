Config Projeto:
----------------------------------------------------------------------------

1 - Cria o arquivo Gemfile
2 - No terminal digita do comando: gem install bundler 
3 - No arquivo Gemfile add as infos:
  - source "http://rubygems.org"
  - gem 'cucumber', '~> 9.0', '>= 9.0.2' // entre outros
4 - Executar o comando: bundler install
    Serão baixadas as gems e criado o arquivo Gemfile.lock
5 - Executar o comando: cucumber --init
    Será gerada a estrutura de pastas
6 - Acessar o arquivo env.rb e importar as gems para o nosso código - Fazer isso sempre que instalar uma gem - Para importar seguir o exemplo:
    - require 'cucumber'



Responsabilidade de cada Gem:
----------------------------------------------------------------------------

- Cucumber: é responsavel por documentar os cenários usando a linguagem gerkin e gerar relatórios

- Capybara: Facilita a automação de testes interativos para aplicativos web, permitindo simular interações de usuário de forma programática e realizar testes de aceitação.

- Selenium: Oferece ferramentas para automação de testes em aplicativos web, permitindo a interação com o navegador para simular ações do usuário e validar o comportamento da aplicação.

- SitePrism: É um padrão de design que ajuda a organizar e estruturar os testes de aceitação, fornecendo uma maneira de representar as páginas da web como objetos, facilitando a interação com os elementos da página durante os testes.
- Rspec: é um framework popular de testes em Ruby usado para BDD (Behavior-Driven Development) e TDD (Test-Driven Development). Ele oferece uma sintaxe clara para escrever testes e assertions que confirmam o comportamento desejado do código. Assertions são usadas para validar se os resultados obtidos durante o teste correspondem às expectativas definidas.



Design Patterns - Page Objects:
----------------------------------------------------------------------------

Web Page <--> Home Page  <--> Test Case

Tente criar o mesmo nome nos arquivos conforme o exemplo abaixo:
login.feature, login.page.rb e login.step.rb



Criando os testes
----------------------------------------------------------------------------

1 - Crie teste escrevendo o BDD
2 - No terminal execute o comando: cucumber
3 - Copie os steps gerados no terminal e cole no arquivo de steps.


Executando os testes
----------------------------------------------------------------------------
Rodando todo os testes: 
cucumber

Rodando os testes com tag específica: 
cucumber -t <tag>

Rodando os testes em ambiente específico: 
cucumber -p <env>



Criar e atualizar o arquivo "credentials.rb" em support
----------------------------------------------------------------------------

#coding: utf-8

CREDENTIALS = {
  userX: {
    email: '<email_valido>',
    password: '<senha_valida>'
  },
  userY: {
    email: 'email_um@gmail.com',
    password: '123456'
  }
}