Quando('eu faço login com {string}') do |realizar_login|
    @login_page.go
    @login_page.login(realizar_login)
  end

Quando('eu faço login comm {string}') do |realizar_login|
    @login_page.go
    @login_page.login(realizar_login)
  end
  
  Então('devo ver {string} na tela') do |mensagem|
    @login_page.mensagem_after(mensagem)
  end 