*** Settings ***
Resource    Controller.robot
Library     FakerLibrary


*** Variables ***
#LOCATORS
${Hamburguer}               xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NavView}                  id=io.qaninja.android.twp:id/navView
${Campo_Email}              id=io.qaninja.android.twp:id/etEmail
${Campo_Senha}              id=io.qaninja.android.twp:id/etPassword
#BOTÕES
${BTN_Entrar}               id=io.qaninja.android.twp:id/btnSubmit
${BTN_CliqueSimples}        id=io.qaninja.android.twp:id/short_click
${BTN_CliqueLongo}          id=io.qaninja.android.twp:id/long_click
${BTN_RemoveVingador}       id=io.qaninja.android.twp:id/btnRemove
#MENSAGENS
${MSG_LoginSucesso}         Show! Suas credenciais são validas.
${MSG_EscolhaRadioBTN}      Escolha sua linguagem preferida
${MSG_MarqueTechs}          Marque as techs que usam Appium
${MSG_BtnCliqueSimples}     Botão clique simples
${MSG_BtnCliqueLongo}       Botão clique longo
${MSG_CliqueSimples}        Isso é um clique simples
${MSG_CliqueLongo}          CLIQUE LONGO OK
${MSG_BemVindoCad}          Bem-vindo, crie sua conta.
#RADIO BUTTON
${Radio_Python}             xpath=//android.widget.RadioButton[contains(@text, 'Python')]
#CHECKBOX
${CheckBox_Robot}           xpath=//android.widget.CheckBox[contains(@text, 'Robot Framework')]
#COMBO BOX / SPINNER
${COMBOBOX_Perfil}          id=io.qaninja.android.twp:id/spinnerJob
${LISTVIEW_Perfil}          class=android.widget.ListView
#SWIPE
${DRAG_Vingador}            id=io.qaninja.android.twp:id/drag_handle
#LISTAS
${LISTA_Vingadores}         id=io.qaninja.android.twp:id/rvList
#OUTROS
${RefreshCheckbox}          id=io.qaninja.android.twp:id/rvContainer


*** Keywords ***
Aguardar e clicar em COMEÇAR
    Wait Until Page Contains    COMEÇAR
    Click Text    COMEÇAR

Clica no botão hamburguer e valida resultado
    Wait Until Element Is Visible    ${Hamburguer}
    Click Element    ${Hamburguer}
    Wait Until Element Is Visible    ${NavView}

Acessa tela FORMS
    Clica no botão hamburguer e valida resultado
    Click Text    FORMS
    Wait Until Page Contains    FORMS

Acessa tela Login
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

Acessa tela Botões
    Clica no botão hamburguer e valida resultado
    Click Text    BOTÕES
    Wait Until Page Contains    BOTÕES

Acessa tela Clique Simples
    Click Text    CLIQUE SIMPLES
    Wait Until Page Contains    ${MSG_BtnCliqueSimples}

Acessa tela Clique Longo
    Click Text    CLIQUE LONGO
    Wait Until Page Contains    ${MSG_BtnCliqueLongo}

Acessa tela CADASTRO
    Click Text    CADASTRO
    Wait Until Page Contains    ${MSG_BemVindoCad}

Lista de Perfis
    @{Lista_Perfil}    Create List    UX    Desenvolvedor    QA    DevOps
    ${Perfil_Random}    Evaluate    random.choice(@{Lista_Perfil})
    Set Test Variable    ${Perfil_Random}
    Log To Console    ${\n}PERFIL ESCOLHIDO: ${Perfil_Random}

Acessa tela AVENGERS
    Clica no botão hamburguer e valida resultado
    Click Text    AVENGERS
    Wait Until Page Contains    AVENGERS

Acessa tela LISTA
    Click Text    LISTA
    Wait Until Page Contains    LISTA
