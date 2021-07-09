*** Settings ***
Documentation    This suite will handle all the tc related to
...     the valid credentials - OEM - 102

Resource     ../Resource/Base/common_functionality.resource

Test Setup   Launch Browser

Test Teardown    End Browser


*** Test Cases ***
Verify Valid Credential Tests
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element   xpath=//button[@type='submit']
    Wait Until Page Contains    Flow Board      50s
    Title Should Be    OpenEMR
    #[Teardown]   Log To Console    End

*** Comments ***
 TC2
     [Setup]
     Log To Console    New
     [Teardown]  Log To Console    End

 TC3
     [Setup]    Log To Console    Start
     Log   New
     [Teardown]
