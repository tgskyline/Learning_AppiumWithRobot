*** Settings ***
Resource    ../Resources/Controller.robot

Test Setup    Abre a aplicação        
Test Teardown    Fecha a aplicação

*** Test Cases ***

Deve clicar uma vez
    Acessa tela Botões
    Acessa tela Clique Simples
    Click Element    ${BTN_CliqueSimples}
    Wait Until Page Contains    ${MSG_BtnCliqueSimples}

