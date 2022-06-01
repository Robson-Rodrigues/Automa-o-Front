#language: pt

Funcionalidade: Permissões

    @permissoes @regressivo
    Cenario: removendo uma permissão 
        Quando eu faço login com "dados_validos"
        Então devo ver "mensagem_logado" na tela
        Quando vou para tela de "permissoes"
        E busco por uma "permissao_valida"
        E clico no botão "buscar_permissao"
        Quando clico no botão "apagar_permissao"
        E clico no botão "modal_apagar_permissao"
        Então "mensagem_permissao_apagada" deve ser exibido(a)

    @permissoes @regressivo
    Cenario: Busca por uma permissão valida
        Quando eu faço login com "dados_validos"
        Então devo ver "mensagem_logado" na tela
        Quando vou para tela de "permissoes"
        E busco por uma "permissao_valida"
        E clico no botão "buscar_permissao"
        Então "permissao_valida" deve ser exibida

    @permissoes @regressivo
    Cenario: Busca por uma permissão invalida
        Quando eu faço login com "dados_validos"
        Então devo ver "mensagem_logado" na tela
        Quando vou para tela de "permissoes"
        E busco por uma "permissao_invalida"
        E clico no botão "buscar_permissao"
        Então "mensagem_item_nao_encontrado" deve ser exibido(a)
        
    @permissoes @regressivo
    Cenario: Criando uma nova permissão 
        Quando eu faço login com "dados_validos"
        Então devo ver "mensagem_logado" na tela
        Quando vou para tela de "permissoes"
        E clico no botão "novo"
        E preencho com "dados_validos"
        E clico no botão "salvar_permissao"
        Então "mensagem_permissao_criada" deve ser exibido(a)

    @permissoes @regressivo
    Cenario: Editando uma permissão
        Quando eu faço login com "dados_validos"
        Então devo ver "mensagem_logado" na tela
        Quando vou para tela de "permissoes"
        E busco por uma "permissao_valida"
        Quando clico no botão "editar_permissao"
        E preencho com "dados_validos_editados"
        Então "mensagem_permissao_editada" deve ser exibido(a)