*** Settings ***
Library     SeleniumLibrary 
Library     String
#Resource    .robot .resource
#Variables    .json .yaml .robot
Test Setup
Test Teardown
Test Tags
Documentation    projeto exemplo

*** Variables ***
${variavel1}    teste
${variavel2}    teste2
${variavel3}    123456

@{lista}        valor 1    valor2    valor3

&{dicionario}
...    chave=valor
...    chave2=${variavel2} 

*** Keywords ***
abrir site do google
    Open Browser    browser=chrome    url=https://www.google.com
    Close Browser

abrir site da globo
    Open Browser    browser=chrome    url=https://www.globo.com/

fechar navegador
    Close Browser

*** Test Cases ***
Cenário 1: Teste de abrir site google
    abrir site do google
    fechar navegador

Cenário 2: Teste de abrir site da globo
    abrir site da globo
    fechar navegador

Cenário 3: Imprimir no console
    Log To Console    ${dicionario.chave2}