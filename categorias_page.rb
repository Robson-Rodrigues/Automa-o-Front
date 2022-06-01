class CategoriasPage < SitePrism::Page
    include RSpec::Matchers

#input
element :input_busca, :css,  "div.col-sm-2.align-items-center > input"

#button
element :button_buscar, :css,  "div.col-sm-auto > button:nth-child(2)"
element :button_cadastrar_categoria, :css,  "div.col-sm-auto > button:nth-child(3)"
element :button_modal_salvar, :css,  "div.modal-body > form > button:nth-child(4)"

def busca(categoria)
    case categoria
    when "categoria_valida"
        input_busca.set 'documento'
    when "categoria_invalida"
        input_busca.set 'testeQA'
    end
end

def botao(opcao)
    case opcao
    when "buscar_categoria"
        button_buscar.click
    when "cadastrar_categoria"
        button_cadastrar_categoria.click
    when "salvar_categoria" 
        button_modal_salvar.click
    end
end

end