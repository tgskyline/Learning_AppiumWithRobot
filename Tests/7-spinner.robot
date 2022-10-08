*** Settings ***
Resource    ../Resources/Controller.robot

Test Setup    Abre a aplicação        
Test Teardown    Fecha a aplicação

*** Test Cases ***

Deve clicar no Spinner (ComboBox)
    Acessa tela FORMS
    Acessa tela CADASTRO
    Click Element    ${COMBOBOX_Perfil} 
    Wait Until Element Is Visible    ${LISTVIEW_Perfil}
    Lista de Perfis
    Click Text    ${Perfil_Random}

    