*** Settings ***
Resource    ../../imports/package.resource
Variables    ../../element/login/login_element.py

*** Keywords ***
Preencher Usuário
    [Arguments]    ${usuario}

    Input Text    
    ...    ${USERNAME_CAMPO}    
    ...    ${usuario}

Preencher Senha
    [Arguments]    ${senha}
    
    Input Password
    ...    ${PASSWORD_CAMPO}
    ...    ${senha}

Botão Realizar Login
    Click Element    ${BTN_LOGIN}


