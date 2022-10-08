*** Settings ***
Resource    ../Resources/Controller.robot

Test Setup    Abre a aplicação        
Test Teardown    Fecha a aplicação

*** Test Cases ***

Deve remover o Capitão América
    Acessa tela AVENGERS
    Acessa tela LISTA
    Swipe By Percent    88.88   17.50   50    17.50
    Wait Until Element Is Visible    ${BTN_RemoveVingador}
    Click Element  ${BTN_RemoveVingador}
    Sleep    1s
    Page Should Not Contain Text    Capitão América