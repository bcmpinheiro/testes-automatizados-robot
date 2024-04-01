*** Settings ***
Documentation    exercicios de pratica com LISTAS

*** Variable ***

@{CORES}    preto    azul    cinza    branco    roxo

*** Test Cases ***
Caso de teste de exercicio com listas
    Teste com listas 01

*** Keywords ***
Teste com listas 01
    Log    Essa cor tem que ser cinza: ${CORES[2]}, essa cor tem que ser roxo: ${CORES[4]}, essa cor tem que ser azul: ${CORES[1]}, essa cor tem que ser preto: ${CORES[0]} e essa cor tem que ser branco: ${CORES[3]}