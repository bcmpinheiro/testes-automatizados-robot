*** Settings ***
Documentation    exercicios de pratica com LISTAS

*** Variable ***

@{MESES}    jan    fev    mar    abr    mai    jun    jul    ago    set    out    nov    dez

*** Test Cases ***
Caso de teste de exercicio com listas
    Teste com listas 01

*** Keywords ***
Teste com listas 01
    Log    Esse mes deve ser jan: ${MESES[0]}, Esse mes deve ser fev: ${MESES[1]}, Esse mes deve ser mar: ${MESES[2]}, Esse mes deve ser abr: ${MESES[3]}, Esse mes deve ser mai: ${MESES[4]}, Esse mes deve ser jun: ${MESES[5]}, Esse mes deve ser jul: ${MESES[6]}, Esse mes deve ser ago: ${MESES[7]}, Esse mes deve ser set: ${MESES[8]}, Esse mes deve ser out: ${MESES[9]}, Esse mes deve ser nov: ${MESES[10]}, Esse mes deve ser dez: ${MESES[11]}