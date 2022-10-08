*** Settings ***
Resource    ../Resources/Controller.robot

Test Setup    Abre a aplicação        
Test Teardown    Fecha a aplicação

*** Variables ***
${Campo_Email}    id=io.qaninja.android.twp:id/etEmail
${Campo_Senha}    id=io.qaninja.android.twp:id/etPassword
${BTN_Entrar}     id=io.qaninja.android.twp:id/btnSubmit
${Login_Papito}    eu@papito.io
${Senha_Papito}    qaninja
${MSG_LoginSucesso}    Show! Suas credenciais são validas.

*** Test Cases ***

Deve logar com sucesso
    Clica no botão hamburguer e valida resultado
    Click Text    FORMS
    Wait Until Page Contains    FORMS
    Click Text    LOGIN
    Wait Until Page Contains    Fala QA, vamos testar o login?
    Input Text    ${Campo_Email}    ${Login_Papito}
    Input Text    ${Campo_Senha}    ${Senha_Papito}
    Click Element    ${BTN_Entrar}
    Wait Until Page Contains   ${MSG_LoginSucesso}




    