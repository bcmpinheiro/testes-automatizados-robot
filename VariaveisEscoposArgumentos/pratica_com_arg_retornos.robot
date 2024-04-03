*** Settings ***
Library   String

*** Variables ***
&{PESSOA}   nome=Fulano   sobrenome=deTal

*** Test Cases ***
Imprimindo um e-mail customizado e aleatório
    ${EMAIL_CRIADO}    Criar e-mail customizado e aleatório    ${PESSOA.nome}    ${PESSOA.sobrenome}
    Log To Console     ${EMAIL_CRIADO}


*** Keywords ***
Criar e-mail customizado e aleatório
    [Arguments]       ${NOME}  ${SOBRENOME}
    ${ALEATORIA}      Generate Random String
    ${EMAIL_FINAL}    Set Variable    ${NOME}${SOBRENOME}${ALEATORIA}@testerobot.com
    [Return]          ${EMAIL_FINAL}