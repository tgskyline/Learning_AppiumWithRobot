*** Settings ***
Resource    ../Resources/Controller.robot

Test Setup    Abre a aplicação        
Test Teardown    Fecha a aplicação

*** Test Cases ***

Deve selecionar o Botão Radio PYTHON
    Acessa tela Inputs
    Click Element    ${Radio_Python}
    Wait Until Element Is Visible    ${Radio_Python} 
    Element Attribute Should Match        ${Radio_Python}    checked    true