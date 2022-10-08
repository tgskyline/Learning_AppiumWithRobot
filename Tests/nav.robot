*** Settings ***
Resource    ../Resources/Controller.robot

Test Setup    Abre a aplicação        
Test Teardown    Fecha a aplicação


*** Test Cases ***
Deve abrir a tela Dialogs
    Aguardar e clicar em COMEÇAR
    Clica no botão hamburguer e valida resultado     

    Click Text                       DIALOGS
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/toolbarTitle        
    Element Text Should Be           id=io.qaninja.android.twp:id/toolbarTitle    DIALOGS
    
Deve abrir a tela FORMS
    Aguardar e clicar em COMEÇAR
    Clica no botão hamburguer e valida resultado     

    Click Text                       FORMS
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/toolbarTitle      
    Element Text Should Be           id=io.qaninja.android.twp:id/toolbarTitle    FORMS
    
Deve abrir a tela AVENGERS
    Aguardar e clicar em COMEÇAR
    Clica no botão hamburguer e valida resultado     
    
    Click Text                       AVENGERS
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/toolbarTitle      
    Element Text Should Be           id=io.qaninja.android.twp:id/toolbarTitle    AVENGERS