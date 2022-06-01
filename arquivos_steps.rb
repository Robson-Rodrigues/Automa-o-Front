  Quando('faço busca por {string}') do |buscar_arquivo|
    @arquivos_page.busca(buscar_arquivo)
  end

  Então('{string} deve ser exibido\(a)') do |arquivo|
    @arquivos_page.mensagem_arquivo(arquivo)
  end
  
  Quando('faço uma busca pela categoria {string}') do |categoria|
    @arquivos_page.buscar(categoria)
  end
  
  Então('arquivos cadastrado na categoria {string} devem ser exibidos') do |categoria|
    @arquivos_page.resultado(categoria)
  end

  Quando('faço uma busca com {string}') do |inicial|
    @arquivos_page.modificacao(inicial)
  end                                                                               
                                                                                    
  Quando('{string}') do |final|
    @arquivos_page.criacao(final)
  end

  Quando('realizo a {string}') do |buscar|
    @arquivos_page.botao(buscar)
  end
  
  Quando('ver detalhes do arquivo') do
    @arquivos_page.button_detalhes.click
  end            
  
  Então('arquivo cadastrado no periodo informado devem ser exibidos') do
    @arquivos_page.validar_data
  end

  Quando('faço uma busca pela Aplicação {string}') do |idAplicacao|                  
    @arquivos_page.buscar(idAplicacao)
  end                                                                                                                                                                                                                         
                                                                                
  Então('arquivos cadastrado na aplicacao {string} devem ser exibidos') do |idAplicacao|
    @arquivos_page.resultado(idAplicacao)
  end                                                                           

  Quando('faço uma busca pelo metadados {string}') do |metadados|
    @arquivos_page.buscar(metadados)
  end
  
  Então('arquivos cadastrado com metadados {string}') do |metadados|
    @arquivos_page.resultado(metadados)
  end

  Quando('eu faço login com fsdfsd') do
    
  end
  
  Então('devo ver efsafsdfsd') do
    
  end