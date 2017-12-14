class Hellow_app

  def initialize
    @layout_name = 'home_meu_app'   
    @btn_gravar = 'btnGravar'
    @btn_limpar = 'btnLimpar'
    @lbl_name = 'labelname'
    @txt_name = 'txtname'
    @btn_ok = "marked:'OK'"

  end 

  def acessar_home
    find_element(id: @layout_name)
  end 
  
  def adicionar_nome(nome)
    $nome = nome
    find_element(id: @txt_name).send_keys $nome
  end

  def tocar_saudar
    find_element(id: @btn_gravar ).click
  end

  def tocar_ok
    find_elements(class:'XCUIElementTypeButton')[0].click
  end
  
  def tocar_limpar
    find_element(id: @btn_limpar).click
  end

  def verificar_nome_foi_apagado
    find_element(id: @lbl_name).label == nil
  end
  
  def verifica_mensagem_existe  
    raise 'mensagem não exibida'  unless find_elements(class:'XCUIElementTypeStaticText')[1].text == "Adicionado com sucesso, #{$nome}"
    tocar_ok
  end  
end