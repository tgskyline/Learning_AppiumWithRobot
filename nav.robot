*** Settings ***
Library    AppiumLibrary
Test Setup    Set Appium Timeout    5

*** Test Cases ***
Deve abrir a tela Dialogs
    # /wd/hub é o EndPoint do selenium
    Open Application      http://127.0.0.1:4723/wd/hub
    ...        automationName=UiAutomator2
    ...        platformName=Android
    ...        deviceName=Emulator
    ...        app=${EXECDIR}/APK/twp.apk
        
    Wait Until Page Contains        COMEÇAR    
    Click Text                      COMEÇAR

    Wait Until Element Is Visible    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]      
    Click Element                    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/navView        

    Click Text                       DIALOGS
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/toolbarTitle        
    Element Text Should Be           id=io.qaninja.android.twp:id/toolbarTitle    DIALOGS
    
    Close Application


Deve abrir a tela Formulário
    # /wd/hub é o EndPoint do selenium
    Open Application      http://127.0.0.1:4723/wd/hub
    ...        automationName=UiAutomator2
    ...        platformName=Android
    ...        deviceName=Emulator
    ...        app=${EXECDIR}/APK/twp.apk
        
    Wait Until Page Contains        COMEÇAR    
    Click Text                      COMEÇAR

    Wait Until Element Is Visible    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]        
    Click Element                    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/navView        

    Click Text                       FORMS
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/toolbarTitle      
    Element Text Should Be           id=io.qaninja.android.twp:id/toolbarTitle    FORMS
    
    Close Application
