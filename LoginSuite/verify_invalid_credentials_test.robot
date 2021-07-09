*** Settings ***
Documentation    This suite will handle all the tc related to
...     the invalid credentials - OEM - 102

Resource     ../Resource/Base/common_functionality.resource

*** Test Cases ***
Verify Valid Credential Tests
    Launch Browser
    Input Text    id=authUser    admin1
    Input Password    id=clearPass    pass1
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element   xpath=//button[@type='submit']
    Element Should Contain    xpath=//div[contains(text(),'Invalid')]    Invalid username or password
    Wait Until Page Contains    Flow Board      50s
    Title Should Be    OpenEMR
    Close Browser
