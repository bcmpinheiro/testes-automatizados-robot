*** Settings ***
Documentation   Exercicios de pratica com IF e FOR!

*** Variables ***
@{MINHA_LISTA_DE_NUMEROS}    0  1  5  8  10  11

*** Test Case ***
Teste de imprimir apenas alguns números
  Imprimir somente se for 5 e 10

*** Keywords ***
Imprimir somente se for 5 e 10
  Log To Console  ${\n}

    FOR    ${numero}   IN    @{MINHA_LISTA_DE_NUMEROS}
        IF    ${numero} == 5
            Log To Console  Eu sou o número 5
        ELSE IF    ${numero} == 10
            Log To Console  Eu sou o número 10
        ELSE 
            Log To Console  Eu não sou o numero 5 e nem o 10!
        END
    END

    Log To Console  ${\n}