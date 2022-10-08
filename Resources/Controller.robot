*** Settings ***
Library     AppiumLibrary
Resource    Functions.robot
Library     ../settings/libs/DragAndDrop.py


*** Variables ***
${Login_Papito}     eu@papito.io
${Senha_Papito}     qaninja


*** Keywords ***
Abre a aplicação
    # /wd/hub é o EndPoint do selenium
    Set Appium Timeout    8
    Open Application    http://127.0.0.1:4723/wd/hub
    ...    automationName=UiAutomator2
    ...    platformName=Android
    ...    deviceName=Emulator
    ...    app=${EXECDIR}/App/twp.apk
    Aguardar e clicar em COMEÇAR

Fecha a aplicação
    Capture Page Screenshot
    Close Application
