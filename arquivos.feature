#language: pt

Funcionalidade: Arquivos
    Para que ue possa buscar/editar arquivos
    Sendo arquivo cadastrado na base
    Posso buscar/editar/baixar um arquivo


    @arquivos @regressivo
    Cenario: Busca por arquivo valido
        Quando eu faço login comm "dados_validos"
        Então devo ver "mensagem_logado" na tela
        Quando faço busca por "arquivo_valido"
        Então "arquivo_valido" deve ser exibido(a)

    @arquivos @regressivo
    Cenario: Busca por arquivo inexistente
        Quando eu faço login com "dados_validos"
        Então devo ver "mensagem_logado" na tela
        Quando faço busca por "arquivo_inexistente"
        Então "mensagem_error" deve ser exibido(a)
    
    @arquivos @regressivo
    Cenario: Busca por categoria
        Quando eu faço login com "dados_validos"
        Então devo ver "mensagem_logado" na tela
        Quando faço uma busca pela categoria "pedidoMedico"
        Então arquivos cadastrado na categoria "pedidoMedico" devem ser exibidos

    @arquivos @regressivo
    Cenario: Busca por data modificação inicial e final
        Quando eu faço login com "dados_validos"
        Então devo ver "mensagem_logado" na tela
        Quando faço uma busca com "dataModificaçãoInicial"
        E "dataModificaçãoFinal"
        Quando ver detalhes do arquivo
        Então arquivo cadastrado no periodo informado devem ser exibidos

    @arquivos @regressivo
    Cenario: Busca por data criação inicial e final
        Quando eu faço login com "dados_validos"
        Então devo ver "mensagem_logado" na tela
        Quando faço uma busca com "dataCriaçãoInicial"
        E "dataCriaçãoFinal"
        Quando ver detalhes do arquivo
        Então arquivo cadastrado no periodo informado devem ser exibidos

    @arquivos @regressivo
    Cenario: Busca somente por data modificação inicial
        Quando eu faço login com "dados_validos"
        Então devo ver "mensagem_logado" na tela
        Quando faço uma busca com "dataCriaçãoInicial"
        E realizo a "busca"
        Então "mensagem_error" deve ser exibido(a)

    @arquivos @regressivo
    Cenario: Busca somente por data modificação inicial
        Quando eu faço login com "dados_validos"
        Então devo ver "mensagem_logado" na tela
        Quando faço uma busca com "dataCriaçãoInicial"
        E realizo a "busca"
        Então "mensagem_error" deve ser exibido(a)

    @arquivos @regressivo
    Cenario: Busca somente por data criação inicial
        Quando eu faço login com "dados_validos"
        Então devo ver "mensagem_logado" na tela
        Quando faço uma busca com "dataCriaçãoInicial"
        E realizo a "busca"
        Então "mensagem_error" deve ser exibido(a)

    @arquivos @regressivo
    Cenario: Busca somente por data criação final
        Quando eu faço login com "dados_validos"
        Então devo ver "mensagem_logado" na tela
        Quando faço uma busca com "dataCriaçãoInicial"
        E realizo a "busca"
        Então "mensagem_error" deve ser exibido(a)

    @arquivos @regressivo
    Cenario: Busca somente por data criação final
        Quando eu faço login com "dados_validos"
        Então devo ver "mensagem_logado" na tela
        Quando faço uma busca com "dataCriaçãoInicial"
        E realizo a "busca"
        Então "mensagem_error" deve ser exibido(a)      

    @arquivos @regressivo
    Cenario: Busca por idAplicação
        Quando eu faço login com "dados_validos"
        Então devo ver "mensagem_logado" na tela
        Quando faço uma busca pela Aplicação "checkup"
        E realizo a "busca_modal"
        Quando ver detalhes do arquivo
        Então arquivos cadastrado na aplicacao "checkup" devem ser exibidos

    @arquivos @regressivo
    Cenario: Busca por um metadados
        Quando eu faço login com "dados_validos"
        Então devo ver "mensagem_logado" na tela
        Quando faço uma busca pelo metadados "idPessoaFisica"
        E realizo a "busca"
        Então arquivos cadastrado com metadados "idPessoaFisica"

        

