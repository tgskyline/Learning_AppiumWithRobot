*** Settings ***

library    hello.py

*** Test Cases ***
Deve retornar mensadem de boas vindas
   ${resultado}=     Hello Robot
   Should Be Equal    ${resultado}    Olá, Tiago Gomes.
