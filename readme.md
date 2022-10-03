# Aprendizado de Automação de Teste com Appium e RobotFramework

### Instalação e configuração do Appium com RobotFramework

## Instale a versão LTS do NodeJs

https://nodejs.org/en/

## Instale o Servidor do Appium

<b>NOTA:</b> Abra o PowerShell como Administrador

	npm install appium -g

## Instale o Appium-Doctor

	npm install appium-doctor -g

# Dependências locais para configuração do ambiente

## Java JDK 8

Faça o download e instalação

	https://www.oracle.com/java/technologies/downloads/#java8-windows

#### Configure as variáveis do sistema:

- <b>JAVA_HOME</b>: C:\Program Files (x86)\Java\jdkX.X.X_XXX\
- <b>PATH</b>: %JAVA_HOME%\bin

<b>NOTA</b>: Caso tenha tenha conhecimento utilize o script abaixo em um Prompt de comando PowerShell como Administrador, editando o caminho da pasta JDK do seu computador.

	@echo off
	@echo ***************** SETANDO VARIAVEIS DE AMBIENTE *****************
	@echo off
	SETX JAVA_HOME "C:\Program Files (x86)\Java\jdkX.X.X_XXX\;%JAVA_HOME%" -m
	SETX PATH "C:\Program Files (x86)\Java\jdkX.X.X_XXX\bin\;%PATH%" -m
	@echo .
	@echo .
	@echo **************** FECHE E ABRA NOVAMENTE O PROMPT ****************
	@echo .
	pause

Execute o comando abaixo e válide se as variáveis foram criadas adequadamente sejam manualmente ou pelo script.

	echo %JAVA_HOME%

<br>
	
	echo %PATH%

## Android Studio

Faça o download e instalação

[Clique aqui para o download do Android Studio](https://developer.android.com/studio?hl=pt&gclid=Cj0KCQjwsrWZBhC4ARIsAGGUJurRKSxt-NBHqwCdhhUbUZCqeH6qRINA8nHFWwnVokq_cc0oWr2e_VEaAvj0EALw_wcB&gclsrc=aw.ds)

-<b>ATENÇÃO:</b> Marque a opção "Android Device Manager"

#### Configure as variáveis do sistema:

 - <b>ANDROID_HOME</b>: C:\Users\SEU-USUARIO\AppData\Local\Android\Sdk\
 - <b>PATH</b>: C:\Users\SEU-USUARIO\AppData\Local\Android\Sdk\platform-tools\
 - <b>PATH</b>: C:\Users\SEU-USUARIO\AppData\Local\Android\Sdk\tools\
 - <b>PATH</b>: C:\Users\SEU-USUARIO\AppData\Local\Android\Sdk\tools\bin\
 - <b>PATH</b>: C:\Users\SEU-USUARIO\AppData\Local\Android\Sdk\tools\lib\


<b>NOTA</b>: Caso tenha tenha conhecimento utilize o script abaixo em um Prompt de comando PowerShell como Administrador, editando o caminho da pasta do seu usuário no computador que esta como SEU-USUARIO.

	@echo off
	@echo ***************** SETANDO VARIAVEIS DE AMBIENTE *****************
	@echo off
	SETX ANDROID_HOME -m "C:\Users\SEU-USUARIO\AppData\Local\Android\Sdk\;%ANDROID_HOME%" -m
	SETX PATH "C:\Users\SEU-USUARIO\AppData\Local\Android\Sdk\platform-tools\;C:\Users\SEU-USUARIO\AppData\Local\Android\Sdk\tools\;C:\Users\SEU-USUARIO\AppData\Local\Android\Sdk\tools\bin\;C:\Users\SEU-USUARIO\AppData\Local\Android\Sdk\tools\lib\;%PATH%" -m
	@echo .
	@echo **************** FECHE E ABRA NOVAMENTE O PROMPT ****************
	@echo .
	pause

Execute o comando abaixo e válide se as variáveis foram criadas adequadamente sejam manualmente ou pelo script.

	echo %ANDROID_HOME%

<br>
	
	echo %PATH%

## Appium para Desktop

Faça download e instale

	https://appium.io/

Faça download e instale 

	https://github.com/appium/appium-inspector

Configure os Capabilities

<b>NOTA</b>: Para identificar o seu 'udid' utilize o comando abaixo em um prompt PowerShell

	abd devices

<b>Atenção</b>: Caso o retorno do comando seja 'unauthorized', feche o APK, no Android Studio > AVD, localize a opção 'Wipe Data' ele irá reconfigurar as parametrizações de fábricxa do emulador ou dispositivo, após o emulador carregar execute novamente o comando.

<br>

Na sessão Appium Server confuigure da seguinte forma

- <b>Remote Host</b>: Pode ser IP ou 'localhost'
- <b>Remote Port</b>: Pode ser a padrão 4723
- <b>Remote Path</b>:/wd/hub

<b>OBS</b>: As paremetrizações de Remote Host e Port devem ser replicadas no Appium Server

<br>

	{
	"appium:automationName": "UiAutomator2",
	"platformName": "Android",
	"appium:deviceName": "Emulator",
	"appium:app": "<Loca do APK>",
	"appium:udid": "emulator-5554"
	}



## Appium para Robot Framework

[Link do Repositório da Library Appium para Robot](https://github.com/serhatbolsu/robotframework-appiumlibrary)

Execute o comando abaixo

	pip install --upgrade robotframework-appiumlibrary


Uma vez instalado o Appium será utilizado a keyword "Open application" e sua configuração é similar ao dos capabilites.

    Open Application     http://127.0.0.1:4723/wd/hub
    ...        			 automationName=UiAutomator2
    ...        			 platformName=Android
    ...        			 deviceName=Emulator
    ...        			 app=${EXECDIR}/APK/twp.apk








<<<<<<<<<<<<<<<< <b><font color="RED">SESSÃO ABAIXO EM DESENVOLVIMENTO</font></red></b> >>>>>>>>>>>>>>>> 



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

