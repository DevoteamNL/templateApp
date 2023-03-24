*** Settings ***
Library            collections
Library           SeleniumLibrary
Library           OperatingSystem
Documentation     Smoketesting someApp.
*** Variables ***
${BROWSER1}         headlessfirefox
${DELAY}            0
${WEBSITE URL}      https://gitea.tooling.provider.test:3000/

*** Tasks ***
Validate smoke
    See if the server is running

*** Keywords ***

See if the server is running
    Open Browser                ${WEBSITE URL}       ${BROWSER1}
    Maximize Browser Window
    Set Selenium Speed          ${DELAY}
    Keycloak Page Should Be Open
    Close Browser

Keycloak Page Should Be Open
    Sleep                       1
    Title Should Be    Sign in to Welcome to your Development Toolkit
