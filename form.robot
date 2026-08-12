*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${input_fullName}      //input[@id="full-name"]
${input_password}      id:password
${input_email}         id:email
${select_tool}         id:tool
${textarea_notes}      id:notes

*** Keywords ***
Acessar site
    Open Browser    https://www.way2automation.com/practicesite/#forms    chrome
    Maximize Browser Window

Preencher campos
    Input Text      ${input_fullName}   Henrique
    Input Text      ${input_password}   senha1234
    Input Text      ${input_email}      teste@teste.com
    Input Text      ${textarea_notes}   Teste de Automação Robot
    Select From List By Label    ${select_tool}      Robot Framework

Clicar em submit
    Scroll Element Into View         //button[@data-testid="practice-submit"]
    Click Element    //button[@data-testid="practice-submit"] 

Fechar navegador
    Close Browser


*** Test Cases ***
Cenário 1: Preencher formulário
    Acessar site
    Preencher campos
    Clicar em submit
    Close Browser
