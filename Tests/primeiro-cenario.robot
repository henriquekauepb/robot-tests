*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${username}    id:username
${password}    id:password

*** Keywords ***
Abrir navegador
    Open Browser    browser=chrome    url=https://practicetestautomation.com/practice-test-login/    

Preencher os dados de login
    Abrir navegador

    [Arguments]    ${usuario}    ${senha}  
    
    Input Text    locator=${username}    text=${usuario}
    Input Text    locator=${password}    text=${senha}  
    Click Button    locator=//button[@id="submit"]

Verificar se houve o redirecionamento para a página de login com sucesso
    Location Should Contain    expected=practicetestautomation.com/logged-in-successfully/

Verificar se a mensagem de login com sucesso foi exibida
    Page Should Contain    Logged In Successfully

Verificar se a mensagem de login inválido foi exibida
    Page Should Contain    Your username is invalid!

*** Test Cases ***
CT01 - Efetuar login com sucesso
    Preencher os dados de login    student    Password123
    Verificar se houve o redirecionamento para a página de login com sucesso
    Verificar se a mensagem de login com sucesso foi exibida

CT02 - Efetuar login com credenciais inválidas
    Preencher os dados de login    usuario_invalido    senha_invalida
    Verificar se a mensagem de login inválido foi exibida

