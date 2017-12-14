# Appium-ios x  Calabash-ios                                [![Build Status]

## Quem tem a melhor Performance em Execução?

Ao invés de falar, melhor mostrar, esse projeto tem como objetivo 
criar um repositorio com Appium Android e nesse <a href="https://github.com/danilopolicarpos/calabash-android">Calabash Android</a>
para medir-mos a performance dos dois.

## Criando o projeto

Na pasta do projeto digito o comando:

```
bundle init         # cria o arquivo GEMFILE
```
## Gemfile

Abra o arquivo Gemfile e adicione as gems:
```
source 'https://rubygems.org'

gem 'appium_lib'
gem 'appium_console'
gem 'rspec'
gem 'pry'
```

Abra o terminal e execute o comando abaixo :
```
bundle install      
```

## Desired Capabilities

São um conjunto de chave/valor que são enviados ao Appium Server para informar qual tipo de sessão desejamos iniciar.
É através do Desired Capabilities que informamos em qual dispositivo queremos executar, e quais as configurações iniciais.
No terminal e execute o comando abaixo :
```
Arc setup ios  # cria um txt. para android (Capabilities para iOS)
```
Exemplos:

Capabilities para iOS
```
[caps]
platformName = "iOS"
platformVersion = 11.2
deviceName = "iPhone 7 Plus"
app = "/Users/[SEU USUARIO]/Documents/appium-ios/build/ipa/HellowXcode-cal.app"
```

## Inspecionando elemento

  Para inspecionar os elementos na plataforma iOS podemos usar essas opções:
  
  - Console (Arc)

      Inicie o servidor do Appium pelo seguinte comando:
      ```
      appium        # inicia o servidor do appium
      ```
      Abre uma nova aba e digite o comando
      ```
      Arc           # inicia o modo console
      page          # inspeciona os elementos da tela
      source        # inspeciona os elementos da tela em HTML
      exit          # sair do console
      ```


  -  Macacajs

      Para inspecionar os elemento na tela usando o Macacajs acesse o link https://medium.com/@deyvirsonmendona/inspecionando-elementos-no-app-ios-com-macacajs-cad962719ce2


## Executando seus testes

  Para rodar os testes execute os comandos no terminal:
  ```
  cucumber                          # rodar todos seus testes
  cucumber feature/<nomefeature>    # executa todos os cenários de uma feature especifica.
  ```
  Atenção "Antes de rodar seus testes inicia o servidor do appium "

## Gerando relatório de teste

  Para gerar o relatório no final dos teste, basta colocar o comando:
  ```
  <--format html --out reports.html>
  ```
  exemplo: cucumber feature/<nomefeature> --format html --out reports.html

## Respostas

Respondendo então pergunta do tópico. "Até o momento a execução dos testes
com o calabash android é bem mais rápida do que o appium android".Se ficou 
curioso é só olhar o "reports" nos repositorios e verificar o time.