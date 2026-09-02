*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${username}    name:matricula
${password}    name:password


*** Keywords ***

Acessar site
    Open Browser    https://gestao-riscos-devdif.terracap.df.gov.br/login    chrome
    Maximize Browser Window

Preencher campos
    Input Text    ${username}    C9020840
    Input Text    ${password}    welcome_1
    Click Element    //button[@type="submit"] 

Fechar navegador
    Close Browser


*** Test Cases ***

Cenário 1: Preencher formulário
    Acessar site
    Preencher campos
    Fechar navegador