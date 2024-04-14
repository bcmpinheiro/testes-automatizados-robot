*** Settings ***
Documentation   Suíte de exmeplo didático para exemplificar o uso de IF nos testes
Test Setup      Log To Console    ${\n}
Test Teardown   Log To Console    ${\n}


*** Variables ***
${STATUS}   ${0}


*** Test Case ***
01: Exemplo bloco IF
    IF  ${STATUS} > 0
        Logar informações quando o status for maior que zero
        Log  message=Aqui executei um bloco de IF simples, pois a condição dada é VERDADEIRA!!!!  console=True
    END

02: Exemplo com dois blocos IF e ELSE
    IF  ${STATUS} > 0
        Logar informações quando o status for maior que zero
        Log  message=Aqui executei um bloco de IF com ELSE e caiu no bloco que corresponde a condição VERDADEIRA!!!!  console=True
    ELSE
        Logar informações quando o status for menor ou igual que zero
        Log  message=Aqui executei um bloco de IF com ELSE e caiu no bloco que corresponde a condição FALSA!!!!  console=True
    END

03: Exemplo blocos IF - ELSE IF
    IF  ${STATUS} > 0
        Logar informações quando o status for maior que zero
        Log  message=Aqui executei um bloco de IFs aninhados e caiu no bloco que corresponde a condição VERDADEIRA do primeiro IF!!!!  console=True
    ELSE IF    ${STATUS} < 0
        Logar informações quando o status for menor que zero
        Log  message=Aqui executei um bloco de IFs aninhados e caiu no bloco que corresponde a condição VERDADEIRA do segundo IF!!!!  console=True
    ELSE IF    ${STATUS} == 0
        Logar informações quando o status for igual a zero
        Log  message=Aqui executei um bloco de IFs aninhados e caiu no bloco que corresponde a condição VERDADEIRA do terceiro IF!!!!  console=True
    ELSE
        IF  ${STATUS} == ${EMPTY}
            Fail   O STATUS está vazio!
        ELSE
            Fail   O STATUS ${STATUS} tem um valor desconhecido!
        END
    END

*** Keywords ***
Logar informações quando o status for maior que zero
    Log   O STATUS [${STATUS}] é maior que zero!
    Log To Console    O STATUS [${STATUS}] é maior que zero!

Logar informações quando o status for menor que zero
    Log   O STATUS [${STATUS}] é menor que zero!
    Log To Console    O STATUS [${STATUS}] é menor que zero!

Logar informações quando o status for menor ou igual que zero
    Log   O STATUS [${STATUS}] é menor ou igual a zero!
    Log To Console    O STATUS [${STATUS}] é menor ou igual a zero!

Logar informações quando o status for igual a zero
    Log   O STATUS [${STATUS}] é igual a zero!
    Log To Console    O STATUS [${STATUS}] é igual a zero!