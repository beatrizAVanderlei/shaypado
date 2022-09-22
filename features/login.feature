Feature: login
  As a usuario
  I want to realizar login, logout e cadastro
  So that eu consiga acessar o sistema e realizar operacoes

  Scenario: registro com sucesso
    Given eu estou na pagina de cadastro
    When preencho meu email 'email@email.com' e senha '123456senha'
    And eu clico no botao Sign Up
    Then eu vejo a mensagem 'Welcome! You have signed up successfully.'

  Scenario: login com sucesso
    Given eu estou na pagina de cadastro
    When preencho meu email 'email@email.com' e senha '123456senha'
    And eu clico no botao Sign Up
    And eu faco logout
    And eu estou na pagina de login
    When eu preencho o campo email com 'email@email.com' e senha '123456senha'
    And eu clico no botao Log in
    Then eu vejo a mensagem 'Signed in successfully.'

