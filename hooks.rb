Before do
    @login_page = LoginPage.new
    @arquivos_page = ArquivosPage.new
    @permissoes_page = PermissoesPage.new
    @categorias_page = CategoriasPage.new
  
    page.current_window.resize_to(800, 600)
end