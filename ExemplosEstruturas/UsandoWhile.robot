*** Settings ***
Documentation   Suíte para exemplificar o uso de LOOPS nos testes
...             Os LOOPS devem ser pouco utilizados, mas tem hora que não tem jeito
...             e precisamos dele mesmo, então vamos ver como é!
...             LOOPS: use com moderação!
...             Infelizmente o Loop FOR ainda não tem uma estrutura keyword-driven
...             Mas o criador do Robot já disse que estão estudando uma solução!
Test Setup      Log To Console    ${\n}
Test Teardown   Log To Console    ${\n}


*** Variables ***
${STATUS}  ${1}


*** Test Case ***
Caso de teste exemplo de WHILE
    Usando WHILE para loop

*** Keywords ***
Usando WHILE para loop
    Log To Console    ${\n}
    WHILE  ${STATUS} <= 5
        Log  Executando esse bloco enquanto o valor da variável STATUS [${STATUS}] for menor ou igual a 5!
        Log To Console  Executando esse bloco enquanto o valor da variável STATUS [${STATUS}] for menor ou igual a 5!
        ${STATUS}  Set Variable  ${STATUS+1}
    END
