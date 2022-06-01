Quando('vou para tela de {string}') do |categorias|
    @permissoes_page.tela(categorias)
  end        

  Quando('busco por uma {string}') do |categoria|                                 
    @categorias_page.busca(categoria)
  end                                                                           
                                                                                
  Então('{string} deve ser exibida') do |validar|                    
    expect(page).to have_css('#tabela > tbody > tr > td > span', text: 'documento')
  end

  Quando('clico no botão {string}') do |opcao|
    @categorias_page.botao(opcao)
  end

  Quando('preencho com {string}') do |formulario|
    
  end