*** Settings ***
Resource    ../Resources/Controller.robot

Test Setup    Abre a aplicação        
Test Teardown    Fecha a aplicação

*** Test Cases ***

Deve logar com sucesso
    Acessa tela FORMS
    Acessa tela Login
    Input Text    ${Campo_Email}    ${Login_Papito}
    Input Text    ${Campo_Senha}    ${Senha_Papito}
    Click Element    ${BTN_Entrar}
    Wait Until Page Contains   ${MSG_LoginSucesso}




    