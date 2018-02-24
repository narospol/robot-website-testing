*** Settings ***
Library           Selenium2Library
Resource          ${CURDIR}/../locators/login.locator.robot
Resource          ${CURDIR}/../locators/admin.locator.robot

*** Keywords ***
Go To Login Page
    Go To    ${WEB_BASE_URL}/login
    Wait Until Element Is Visible    ${login_div_block}

Fill Input Login Form
    [Arguments]    ${username}    ${password}
    Input Text    ${login_input_username}    ${username}
    Input Password    ${login_input_password}    ${password}
    Click Element    ${login_button_submit}
    Sleep    2
