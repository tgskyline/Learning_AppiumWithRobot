*** Settings ***
Library    AppiumLibrary
Test Setup    Abre a aplicação        
Test Teardown    Fecha a aplicação

*** Keywords ***

Abre a aplicação
        # /wd/hub é o EndPoint do selenium
    Set Appium Timeout    8
    Open Application      http://127.0.0.1:4723/wd/hub
    ...        automationName=UiAutomator2
    ...        platformName=Android
    ...        deviceName=Emulator
    ...        app=${EXECDIR}/APK/twp.apk

Fecha a aplicação
    Close Application

*** Test Cases ***
Deve abrir a tela Dialogs
    Wait Until Page Contains        COMEÇAR    
    Click Text                      COMEÇAR

    Wait Until Element Is Visible    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]      
    Click Element                    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/navView        

    Click Text                       DIALOGS
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/toolbarTitle        
    Element Text Should Be           id=io.qaninja.android.twp:id/toolbarTitle    DIALOGS
    
Deve abrir a tela FORMS
    Wait Until Page Contains        COMEÇAR    
    Click Text                      COMEÇAR

    Wait Until Element Is Visible    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]        
    Click Element                    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/navView        

    Click Text                       FORMS
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/toolbarTitle      
    Element Text Should Be           id=io.qaninja.android.twp:id/toolbarTitle    FORMS
    
Deve abrir a tela AVENGERS
    Wait Until Page Contains        COMEÇAR    
    Click Text                      COMEÇAR

    Wait Until Element Is Visible    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]        
    Click Element                    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/navView        

    Click Text                       AVENGERS
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/toolbarTitle      
    Element Text Should Be           id=io.qaninja.android.twp:id/toolbarTitle    AVENGERS