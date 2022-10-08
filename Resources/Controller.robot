*** Settings ***
Library    AppiumLibrary
Resource    Functions.robot

*** Variables ***
${Login_Papito}    eu@papito.io
${Senha_Papito}    qaninja
${MSG_LoginSucesso}    Show! Suas credenciais são validas.

*** Keywords ***
Abre a aplicação
        # /wd/hub é o EndPoint do selenium
    Set Appium Timeout    8
    Open Application      http://127.0.0.1:4723/wd/hub
    ...        automationName=UiAutomator2
    ...        platformName=Android
    ...        deviceName=Emulator
    ...        app=${EXECDIR}/App/twp.apk
    Aguardar e clicar em COMEÇAR


Fecha a aplicação
    Close Application


