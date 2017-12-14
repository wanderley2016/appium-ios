Dado("que estou na home do app") do
  @page = Hellow_app.new
  @page.acessar_home
end
  
Dado("que o nome esteja inserido") do
  steps %Q(
    E que estou na home do app
    E informo o "jurema"  
    E toco no botão gravar
    E vejo mensagem de alerta com o nome inserido
    )
  end

Dado(/^informo o "([^"]*)"$/)do |nome|
  @page.adicionar_nome(nome)
end  

Quando("toco no botão gravar") do
  @page.tocar_saudar
end

Quando("toco no botão limpar") do
  @page.tocar_limpar 
end

Entao("vejo mensagem de alerta com o nome inserido") do
  @page.verifica_mensagem_existe  
end

Então("deve ser apagado o nome") do
  raise 'O nome não foi apagado' unless @page.verificar_nome_foi_apagado
end