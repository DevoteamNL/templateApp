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
    Gitea Page Should Be Open
    Close Browser

Gitea Page Should Be Open
    Sleep                       1
    Title Should Be    Our single source of truth