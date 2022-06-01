#language: pt

Funcionalidade: Categorias


    @categorias @regressivo @teste
    Cenario: Buscar categoria valida
        Quando eu faço login com "dados_validos"
        Então devo ver "mensagem_logado" na tela
        Quando vou para tela de "categorias"
        E busco por uma "categoria_valida"
        E clico no botão "buscar_categoria"
        Então "categoria_valida" deve ser exibido(a)

    Cenario: Buscar categoria invalida
        Quando eu faço login com "dados_validos"
        Então devo ver "mensagem_logado" na tela
        Quando vou para tela de "categorias"
        E busco por uma "categoria_invalida"
        E clico no botão "buscar_categoria"
        Então "mensagem_item_nao_encontrado" deve ser exibido(a)

     Cenario: Criar categoria
        Quando eu faço login com "dados_validos"
        Então devo ver "mensagem_logado" na tela
        Quando vou para tela de "categorias"
        E clico no botão "criar_categoria"
        E preencho com "dados_validos"
        E clico no botão "salvar_categoria"
        Então "mensagem_categoria_criada" deve ser exibido(a)

