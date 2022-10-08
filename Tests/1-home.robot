*** Settings ***
Library     AppiumLibrary


*** Test Cases ***
Deve abrir a tela principal
    # /wd/hub é o EndPoint do selenium
    Open Application    http://127.0.0.1:4723/wd/hub
    ...    automationName=UiAutomator2
    ...    platformName=Android
    ...    deviceName=Emulator
    ...    app=${EXECDIR}/App/twp.apk

    Wait Until Page Contains    Training Wheels Protocol    5
    Wait Until Page Contains    Mobile Version    5
    Close Application
