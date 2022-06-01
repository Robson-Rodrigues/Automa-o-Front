Quando('vou para tela de {string}') do |permissao|
    @permissoes_page.tela(permissao)
  end                       
                                                                                
  Quando('busco por uma {string}') do |permissao|                                 
    @permissoes_page.busca(permissao)
  end                                                                           
                                                                                
  Então('{string} deve ser exibida') do |validar|                              
    expect(page).to have_css('#tabela > tbody > tr > td:nth-child(2)', text: 'TesteQA_teste')
  end

  Quando('clico no botão {string}') do |opcao|
    @permissoes_page.botao(opcao)
  end

  Quando('preencho com {string}') do |formulario|
    @permissoes_page.preencher(formulario)
  end