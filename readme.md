# Aprendizado de Automação de Teste com Appium e RobotFramework

### Instalação e configuração do Appium com RobotFramework

## Instale a versão LTS do NodeJs

https://nodejs.org/en/

## Instale o Appium

	npm install appium -g

## Instale o Appium-Doctor

	npm install appium-doctor -g

# Configurando o Poetry

### Instação do Poetry

Para instalar o Poetry de forma Global na pasta do Python utilize o comando abaixo

	pip install poetry

Execute o comando abaixo para listar as configurações atuais do Poetry

	poetry config --list

		Será listado configurações similares conforme abaixo;

			cache-dir = "/path/to/cache/directory"
			virtualenvs.create = true
			virtualenvs.in-project = null
			virtualenvs.path = "{cache-dir}/virtualenvs"  # /path/to/cache/directory/virtualenvs

Para fazer com que o VsCode trabalhe com Máquina Virtual e utilize todo os recursos de extensões e também do Pytest execute o comando abaixo

	poetry config virtualenvs.in-project true

Ativando o ambiente virtual

	poetry shell

Adicionar dependências 

    poetry add robotframework

Remevendo dependências

    poetry remove robotframework

Exportando as dependências para o Requirements.txt

	poetry export -o requirements.txt --output requirements.txt





	