*** Settings ***
Test Teardown     Close All browsers
Resource          ${CURDIR}/../keywords/common/common.keyword.robot
Resource          ${CURDIR}/../keywords/login.keyword.robot
Resource          ${CURDIR}/../keywords/admin.keyword.robot

*** Test Cases ***
Desktop - To verify system login by admin success
    [Tags]    login     regression     high     desktop
    Open Browser To Landing Page
    Go To Login Page
    Fill Input Login Form     ${USERNAME_ADMIN}     ${PASSWORD_ADMIN}
    Verify Admin Page Is Visible
    Sleep    2
