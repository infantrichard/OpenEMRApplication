*** Settings ***
Documentation    This file handles browser\application configurations

Library    SeleniumLibrary
Library    OperatingSystem
*** Keywords ***
Launch Browser
     [Documentation]     This will launch the browser
     ...     and set implicit wait
     ...     example
     ...     |Launch Browser|
     Append To Environment Variable    Path      ${EXECDIR}${/}drivers
     Open Browser    browser=gc
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=https://demo.openemr.io/b/openemr/index.php
End Browser
    Close Browser
