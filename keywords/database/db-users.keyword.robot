*** Settings ***
Library         Collections
Library         String

*** Keywords ***
Query User By Email
    [Arguments]    ${email}
    Connect ACT Database
    ${result}=    Query    SELECT * FROM users WHERE email = '${email}'
    Return From Keyword    ${result[0]}
