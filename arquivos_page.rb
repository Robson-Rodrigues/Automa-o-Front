class ArquivosPage < SitePrism::Page
    include RSpec::Matchers

    # button
    element :button_login, :css, "mat-card-actions > button"
    element :button_filtro_avançado, :css, "div.col-sm-1 > button"
    element :button_buscar_avançada, :css, "div.modal-body > form > button"
    element :button_buscar, :css, "button.btn.btn-danger.button-redDownload.btnConfig"
    element :button_detalhes, :css, "td:nth-child(12) > button:nth-child(3)"

    #input
    element :input_idArquivo, :css, "div.modal-body > form > div:nth-child(1) > div:nth-child(1) > input"
    element :input_primeiro_valor, :css,  "div:nth-child(3) > div > div:nth-child(2) > input"
    element :input_primeiro_valor, :css,  "div:nth-child(4) > div > div:nth-child(2) > input"
    element :input_primeiro_valor, :css,  "div:nth-child(5) > div > div:nth-child(2) > input"

    #busca_avançada
    element :selecionar_aplicação, :css, "div.modal-body > form > div:nth-child(1) > div:nth-child(2) > select"
    element :aplicação_checkup, :css, "div:nth-child(2) > select > option:nth-child(23)"

    #select
    element :select_categorias, :css, "form > div:nth-child(1) > select"
    element :categoria_pedidoMedico, :css, "div:nth-child(1) > select > option:nth-child(22)"

    #data
    element :dataModificaçãoInicial, :css, "div.mat-form-field-suffix.ng-tns-c74-0.ng-star-inserted > mat-datepicker-toggle > button > span.mat-button-wrapper > svg"
    element :dataModificaçãoFinal, :css, "div.mat-form-field-suffix.ng-tns-c74-1.ng-star-inserted > mat-datepicker-toggle > button > span.mat-button-wrapper > svg"
    element :dataCriaçãoInicial, :css, "div.mat-form-field-suffix.ng-tns-c74-2.ng-star-inserted > mat-datepicker-toggle > button > span.mat-button-wrapper > svg"
    element :dataCriaçãoFinal, :css, "div.mat-form-field-suffix.ng-tns-c74-3.ng-star-inserted > mat-datepicker-toggle > button > span.mat-button-wrapper > svg"
    element :selecionar_ano, :css, "button.mat-focus-indicator.mat-calendar-period-button.mat-button.mat-button-base > span.mat-button-wrapper"
    element :ano_2022, :css, "td.mat-calendar-body-cell.mat-calendar-body-active.ng-star-inserted"
    element :mes_março, :css, "#mat-datepicker-0 > div > mat-year-view > table > tbody > tr:nth-child(2) > td:nth-child(3)"
    element :dia_28, :css, "#mat-datepicker-0 > div > mat-month-view > table > tbody > tr:nth-child(6) > td:nth-child(2)"
    

    def busca(buscar_arquivo)
        case buscar_arquivo
        when "arquivo_valido"
            button_filtro_avançado.click
            input_idArquivo.set '623b7b1dd9b10400018f77b2'
            button_buscar_avançada.click
        when "arquivo_inexistente"
            button_filtro_avançado.click
            input_idArquivo.set '64156s4f8s4f8s984654189'
            button_buscar_avançada.click 
        end
    end

    def mensagem_arquivo(arquivo)
        case arquivo
        when "arquivo_valido"
            expect(page).to have_content('623b7b1dd9b10400018f77b2')
        when "mensagem_error"
            expect(page).to have_content('Error')
        when "mensagem_nenhum_arquivo"
            expect(page).to have_content('Nenhum arquivo encontrado')
        end
    end

    def buscar(categoria)
        case categoria
        when "pedidoMedico"
            select_categorias.click
            categoria_pedidoMedico.click
            button_buscar.click
        when "carteirinha"
            select_categorias.click
            categoria_carteirinha.click
            button_buscar.click
        end
    end

    def resultado(categoria)
        case categoria
        when "pedidoMedico"
            expect(page).to have_css('tr:nth-child(1) > td:nth-child(4)', text: 'pedidoMedico')
        when "carteirinha"
            expect(page).to have_css('tr:nth-child(1) > td:nth-child(4)', text: 'carteirinha')
        end
    end

    def modificacao(inicial)
        case inicial
        when "dataModificaçãoInicial"
            dataModificaçãoInicial.click
            selecionar_ano.click
            ano_2022.click
            mes_março.click
            dia_28.click
        when "dataCriaçãoInicial"
            dataCriaçãoInicial.click
            selecionar_ano.click
            ano_2022.click
            mes_março.click
            dia_28.click
        end
    end

    def criacao(final)
        case final
        when "dataModificaçãoFinal"
            dataModificaçãoFinal.click
            selecionar_ano.click
            ano_2022.click
            mes_março.click
            dia_28.click
            select_categorias.click
            categoria_pedidoMedico.click
            button_buscar.click
        when "dataCriaçãoFinal"
            dataCriaçãoFinal.click
            selecionar_ano.click
            ano_2022.click
            mes_março.click
            dia_28.click
            select_categorias.click
            categoria_pedidoMedico.click
            button_buscar.click
        end
    end

    def validar_data
        expect(page).to have_css('section:nth-child(8) > section > span.segment-value.ng-star-inserted', text: '2022-03-28')
    end

    def botao(buscar)
        case buscar
        when "busca"
            button_buscar.click
        when "busca_modal"
            button_buscar_avançada.click
        end
    end

    def buscar(idAplicacao)
        case idAplicacao
        when "checkup"
        button_filtro_avançado.click
        selecionar_aplicação.click
        aplicação_checkup.click
        when "api-arquivo"
        end
    end

    def resultado(idAplicacao)
        case idAplicacao
        when "checkup"
            expect(page).to have_css('div > ngx-json-viewer > section > section:nth-child(2) > section > span.segment-value.ng-star-inserted', text: 'checkup')
        when "api-arquivo"
            expect(page).to have_css('div > ngx-json-viewer > section > section:nth-child(2) > section > span.segment-value.ng-star-inserted', text: 'api-arquivo')
        end
    end

    def buscar(metadados)
        case metadados
        when "idPessoaFisica"
            select_categorias.click
            categoria_pedidoMedico.click
            input_primeiro_valor.set '1948522992'
        when "idReferencia"
            select_categorias.click
            categoria_pedidoMedico.click
            input_segundo_valor.set '123456'
        end
    end

    def resultado(metadados)
        case metadados
        when "idPessoaFisica"
            expect(page).to have_css('tr:nth-child(1) > td:nth-child(1)', text: '1948522992')
        when "idReferencia"
            expect(page).to have_css('tr:nth-child(2) > td:nth-child(1)', text: '123456')
        end
    end

end