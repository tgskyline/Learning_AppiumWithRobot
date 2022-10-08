*** Settings ***
Resource            ../Resources/Controller.robot

Test Setup          Abre a aplicação
Test Teardown       Fecha a aplicação

*** Test Cases ***
Deve mover o Hulk para primeiro da lista
    Acessa tela AVENGERS
    Acessa tela LISTA
    Drag and Drop    io.qaninja.android.twp:id/drag_handle    3    0
