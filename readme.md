# Aprendizado de Automação de Teste com Appium e RobotFramework

### Instalação e configuração do Appium com RobotFramework

## Instale a versão LTS do NodeJs

https://nodejs.org/en/

## Instale o Appium

	npm install appium -g

## Instale o Appium-Doctor

	npm install appium-doctor -g

# Gerenciamento de Dependências e Versionamento de Automação de Teste com Poetry

### Instação do Poetry

Para instalar o Poetry de forma Global na pasta do Python utilize o comando abaixo, mas é importante ter conhecimento da documentação completa em <https://python-poetry.org/docs/>

	(Invoke-WebRequest -Uri https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py -UseBasicParsing).Content | python -


Execute o comando abaixo para listar as configurações atuais do Poetry

	poetry config --list


Será listado configurações similares conforme abaixo;

	cache-dir = "/path/to/cache/directory"
	virtualenvs.create = true
	virtualenvs.in-project = null
	virtualenvs.path = "{cache-dir}/virtualenvs"  # /path/to/cache/directory/virtualenvs

Para fazer com que o VsCode trabalhe com Máquina Virtual e utilize todo os recursos de extensões e também do Pytest execute o comando abaixo

	poetry config virtualenvs.in-project true

Adcione nas configurações do VsCode as duas linhas abaixo, lembre-se de editar o nome da pasta do seu usuário na linha abaixo

	"python.venvPath":"C:\\Users\\Tiago Gomes\\AppData\\Local\\pypoetry\\Cache\\virtualenvs\\",
    "python.poetryPath": "poetry",

Ativando o ambiente virtual

	poetry shell

Adicionar dependências 

    poetry add robotframework

	EXEMPLO

	Antes com PIP: pip install --upgrade robotframework-appiumlibrary
	Depois com Poetry: Poetry add --upgrade robotframework-appiumlibrary

Removendo dependências

    poetry remove robotframework

Exportando as dependências para o Requirements.txt

	poetry export -o requirements.txt --output requirements.txt

### Instalação do Appium para Robot Framework utilizando o Poetry

Para instalar o Appium for Robot, vamos instalar o Appium-Python-Client, pois ele é uma lib que tem como depedência o Appium for Robot, não vamos instalar diretamente o robotframework-appiumlibrary porque o Poetry não é capaz de gerenciar as dependências adequadas partindo dele.

	poetry add Appium-Python-Client@1.3.0

### Dependências locais para configuração do ambiente

#### Java JDK 8

Faça o download e instalação

	https://www.oracle.com/java/technologies/downloads/#java8-windows

Configure as variáveis do sistema JAVA_HOME e JAVA_HOME\bin 

<b>NOTA</b>: Caso tenha tenha conhecimento utilize o script abaixo em um Prompt de comando PowerShell como Administrador, editando o caminho da pasta JDK do seu computador.

	@echo off
	@echo ***************** SETANDO VARIAVEIS DE AMBIENTE *****************
	@echo off
	SETX JAVA_HOME "C:\Program Files (x86)\Java\jdkX.X.X_XXX\;%JAVA_HOME%" -m
	SETX PATH "C:\Program Files (x86)\Java\jdkX.X.X_XXX\bin\;%PATH%" -m
	@echo .
	@echo ***************** REINICIE O COMPUTADOR *****************
	@echo .
	pause


	