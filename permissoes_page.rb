class PermissoesPage < SitePrism::Page
    include RSpec::Matchers

    #perfil
    element :perfil, :css, "#navbarDropdown > em > span"
    element :perfil_permissoes, :css, "div.col-sm-2.text-center > div > a:nth-child(2)"
    element :perfil_categorias, :css, "div.col-sm-2.text-center > div > a:nth-child(3)"

    #button
    element :botao_busca_permissao, :css, "div:nth-child(1) > div > div.col-sm-auto > button:nth-child(2)"
    element :botao_nova_permissao, :css, "div:nth-child(1) > div > div.col-sm-auto > button:nth-child(3)"
    element :botao_salvar_permissao, :css, "div.modal-body > form > button:nth-child(5)"
    element :botao_apagar_permissao, :css, "tr:nth-child(1) > td:nth-child(3) > button:nth-child(2)"
    element :botao_modal_apagar_permissao, :css, "div.modal-footer > button:nth-child(1)"
    element :botao_editar_permissao, :css, "tr:nth-child(1) > td:nth-child(3) > button:nth-child(1)"

    #select
    element :selecionar_categoria, :css,  "div.modal-body > form > div:nth-child(1) > select"
    element :selecionar_carteirinha, :css,  " form > div:nth-child(1) > select > option:nth-child(8)"

    #input
    element :input_grupoAd, :css,  "div.modal-body > form > div:nth-child(2) > input"
    element :input_valor1, :css,  "div:nth-child(4) > div:nth-child(2) > div > input"
    element :input_busca_permissao, :css,  "div:nth-child(1) > div > div.col-sm-2.align-items-center > input"


    def tela(permissao)
        case permissao
        when "permissoes"
            perfil.click
            perfil_permissoes.click
        when "categorias"   
            perfil.click
            perfil_categorias.click
        end
    end

    def busca(permissao)
    case permissao
    when "permissao_valida"
        input_busca_permissao.set 'TesteQA_teste'
    when "permissao_invalida"
        input_busca_permissao.set 'Acesso_teste_qa'
    end
end

    def botao(opcao)
        case opcao
        when "buscar_permissao"
            botao_busca_permissao.click
        when "novo" 
            botao_nova_permissao.click
        when "salvar_permissao"
            botao_salvar_permissao.click
        when "apagar_permissao"
            botao_apagar_permissao.click
        when "modal_apagar_permissao"
            botao_modal_apagar_permissao.click
        when "editar_permissao"
            botao_editar_permissao.click
        end
    end

    def mensagem(opcao)
        case opcao
        when "mensagem_item_nao_encontrado"
            expect(page).to have_css('div.container.ng-star-inserted > div > div > div', text: 'Nenhum item encontrado')
        when "mensagem_permissao_criada"
            expect(page).to have_css('div > ngx-json-viewer > section > section:nth-child(2) > section > span.segment-value.ng-star-inserted', text: 'api-arquivo')
        when "mensagem_permissao_apagada"
            expect(page).to have_content('Ação realizada com sucesso')
        when "mensagem_permissao_editada"
        end
    end

    def preencher(formulario)
        case formulario
        when "dados_validos"
            selecionar_categoria.click
            selecionar_categoria.click
            input_grupoAd.set 'TesteQA_teste'
            input_valor1.set '123456789'
        when "dados_invalidos"
            selecionar_categoria.click
            selecionar_categoria.click
            input_grupoAd.set 'Acesso_SGA_Gerenciador'
            input_valor1.set '123456789'
        end
    end

  
end