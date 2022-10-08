*** Settings ***
Resource    ../Resources/Controller.robot

Test Setup    Abre a aplicação        
Test Teardown    Fecha a aplicação


*** Variables ***
${Toolbar_Title}    id=io.qaninja.android.twp:id/toolbarTitle

*** Test Cases ***
Deve abrir a tela Dialogs
    Clica no botão hamburguer e valida resultado     

    Click Text                       DIALOGS
    Wait Until Element Is Visible    ${Toolbar_Title}        
    Element Text Should Be           ${Toolbar_Title}   DIALOGS
    
Deve abrir a tela FORMS
    Clica no botão hamburguer e valida resultado     

    Click Text                       FORMS
    Wait Until Element Is Visible    ${Toolbar_Title}     
    Element Text Should Be           ${Toolbar_Title}    FORMS
    
Deve abrir a tela AVENGERS
    Clica no botão hamburguer e valida resultado     
    
    Click Text                       AVENGERS
    Wait Until Element Is Visible    ${Toolbar_Title}
    Element Text Should Be           ${Toolbar_Title}    AVENGERS