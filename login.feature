#language: pt

Funcionalidade: Login
    Para que ue possa buscar/editar arquivos
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com meu usuario e senha Fleury

    @login @login_valido @regressivo
    Cenario: Login valido
        Quando eu faço login com "dados_validos"
        Então devo ver "mensagem_logado" na tela

    @login @login_invalido @regressivo
    Cenario: Login invalido
        Quando eu faço login com "dados_invalidos"
        Então devo ver "mensagem_erro" na tela