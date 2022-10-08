*** Settings ***
Library    AppiumLibrary

*** Variables ***
${Hamburguer}    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]      
${NavView}       id=io.qaninja.android.twp:id/navView


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

Aguardar e clicar em COMEÇAR
    Wait Until Page Contains        COMEÇAR    
    Click Text                      COMEÇAR

Clica no botão hamburguer e valida resultado
    Wait Until Element Is Visible    ${Hamburguer}
    Click Element                    ${Hamburguer}
    Wait Until Element Is Visible    ${NavView}
