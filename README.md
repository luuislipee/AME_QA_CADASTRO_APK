# AME QA APK
Repositório do AME QA Challenge - APK Android App

## Como executar o projeto

* Importante ter o Ruby instalado (versão 2.5 ou superior)
* Importante ter o Appium instalado e configurado
* Importante ter o allure instalado

### Instalar o Bundler
`
gem install bundler
`

### Instalar as dependencias do ruby (projeto)
`
bundle install
`

### Instalar o Allure para o report
#### macOS
`
brew install allure
`

#### Windows
`
scoop install allure
`

#### Linux
`
sudo apt-add-repository ppa:qameta/allure
`
`
sudo apt-get update 
`
`
sudo apt-get install allure
`

#### Mais infos em
* https://docs.qameta.io/allure/#_installing_a_commandline

### Executar localmente (minha maquina)
`
bundle exec cucumber
`

### Executar o report do Allure
`
allure serve logs
`
