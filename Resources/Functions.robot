
*** Settings ***
Resource    Controller.robot


*** Variables ***
${Hamburguer}     xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]      
${NavView}        id=io.qaninja.android.twp:id/navView
${Campo_Email}    id=io.qaninja.android.twp:id/etEmail
${Campo_Senha}    id=io.qaninja.android.twp:id/etPassword
${BTN_Entrar}     id=io.qaninja.android.twp:id/btnSubmit
${MSG_LoginSucesso}    Show! Suas credenciais são validas.
${MSG_EscolhaRadioBTN}    Escolha sua linguagem preferida
${MSG_MarqueTechs}    Marque as techs que usam Appium
${Radio_Python}    xpath=//android.widget.RadioButton[contains(@text, 'Python')]
${CheckBox_Robot}    xpath=//android.widget.CheckBox[contains(@text, 'Robot Framework')]
${RefreshCheckbox}    id=io.qaninja.android.twp:id/rvContainer

*** Keywords ***

Aguardar e clicar em COMEÇAR
    Wait Until Page Contains        COMEÇAR    
    Click Text                      COMEÇAR

Clica no botão hamburguer e valida resultado
    Wait Until Element Is Visible    ${Hamburguer}
    Click Element                    ${Hamburguer}
    Wait Until Element Is Visible    ${NavView}

Acessa a tela de Login
    Clica no botão hamburguer e valida resultado
    Click Text    FORMS
    Wait Until Page Contains    FORMS
    Click Text    LOGIN
    Wait Until Page Contains    Fala QA, vamos testar o login?

Acessa tela Inputs
    Clica no botão hamburguer e valida resultado
    click Text    INPUTS
    Wait Until Page Contains    INPUTS

Acessa tela Botões de Radio
    Click Text    BOTÕES DE RADIO
    Wait Until Page Contains    ${MSG_EscolhaRadioBTN}

Acessa tela CheckBox
    Click Text    CHECKBOX
    Wait Until Page Contains    ${MSG_MarqueTechs}
    