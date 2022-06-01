class LoginPage < SitePrism::Page
    include RSpec::Matchers

    # button
    element :button_login, :css, "mat-card-actions > button"
   
    # input
    element :input_user, :css, "#mat-input-0"
    element :input_pass, :css, "#mat-input-1"

    # certificado
    element :button_details, :css, "#details-button"
    element :proceed_link, :css, "#proceed-link"
    
    # metodo que realiza login
    def login(realizar_login)
        case realizar_login
        when "dados_validos"
            input_user.set "gft.robsonr"
            input_pass.set "Rafinha20200720!"
            button_login.click
        when "dados_invalidos"
            input_user.set "gft.robsonr"
            input_pass.set "testeQA"
            button_login.click
        end
      end

    def go_error
        visit('https://web-arquivos-internal-hml.internaldh-ocp.grupofleury.com.br/')
        button_details.click
        proceed_link.click
        button_details.click
        proceed_link.click    
    end

    def go
        visit('https://web-arquivos-internal-hml.internaldh-ocp.grupofleury.com.br/')
    end

    def mensagem_after(mensagem)
        case mensagem
        when "mensagem_logado"
            expect(page).to have_content('Olá')
        when "mensagem_erro"
            expect(page).to have_content('Verifique seus dados de acesso.')
        end
    end


end