*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
Deve abrir a tela Dialogs
    # /wd/hub é o EndPoint do selenium
    Open Application     http://localhost:4723/wd/hub
    ...        automationName=UiAutomator2
    ...        platformName=Android
    ...        deviceName=Emulator
    ...        app=${EXECDIR}/APK/twp.apk
        
    Wait Until Page Contains        COMEÇAR    5
    Click Text                      COMEÇAR

    Wait Until Element Is Visible    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]        20
    Click Element                    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/navView        5

    Click Text                       DIALOGS
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/toolbarTitle     5   
    Element Text Should Be           id=io.qaninja.android.twp:id/toolbarTitle    DIALOGS
    
    Close Application
