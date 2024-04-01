*** Settings ***
Documentation    exercicios de pratica com DICIONARIO

*** Variable ***

&{MESES}    jan=31    fev=28    mar=31    abr=30   mai=31    jun=30    jul=31    ago=31    set=30    out=31    nov=30    dez=31

*** Test Cases ***
Caso de teste de exercicio com dicionario
    Teste com dicionario

*** Keywords ***
Teste com dicionario
    Log To Console    jan: ${MESES.jan}
    Log To Console    fev: ${MESES.fev} 
    Log To Console    mar: ${MESES.mar}
    Log To Console    abr: ${MESES.abr}
    Log To Console    mai: ${MESES.mai}
    Log To Console    jun: ${MESES.jun}
    Log To Console    jul: ${MESES.jul}
    Log To Console    ago: ${MESES.ago}
    Log To Console    set: ${MESES.set}
    Log To Console    out: ${MESES.out}
    Log To Console    nov: ${MESES.nov}
    Log To Console    dez: ${MESES.dez}