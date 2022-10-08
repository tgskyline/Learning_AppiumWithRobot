*** Settings ***
Resource            ../Resources/Controller.robot

Test Setup          Abre a aplicação
Test Teardown       Fecha a aplicação


*** Test Cases ***
Deve clicar uma vez
    Acessa tela Botões
    Acessa tela Clique Simples
    Click Element    ${BTN_CliqueSimples}
    Wait Until Page Contains    ${MSG_BtnCliqueSimples}

Deve fazer um clique longo
    Acessa tela Botões
    Acessa tela Clique Longo
    Long Press    ${BTN_CliqueLongo}    1000
    Wait Until Page Contains    ${MSG_CliqueLongo}
