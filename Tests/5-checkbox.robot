*** Settings ***
Resource    ../Resources/Controller.robot

Test Setup    Abre a aplicação        
Test Teardown    Fecha a aplicação

*** Test Cases ***

Deve selecionar o CheckBox ROBOT FRAMEWORK
    Acessa tela Inputs
    Acessa tela CheckBox
    Click Element    ${CheckBox_Robot}
    Wait Until Element Is Visible    ${RefreshCheckbox}
    Element Attribute Should Match        ${CheckBox_Robot}    checked    true