*** Settings ***
Library  SeleniumLibrary
Resource  ./chico.resource
#Natali de Souza 
Test Setup    Abrir navegador e clicar em "Concordar" no aviso sobre Cookies
Test Teardown   Finalizar testes 

*** Test Cases ***

Processo de compra de uma camiseta " Amarelo é Desespero" no site do Chico Rei
    Pesquisar por "Amarelo é desespero" e selecionar a primeira opção da lista de resultados
    Validar o valor do produto
    Selecionar um tamanho, cor e clicar em comprar
    Clicar em "Ver sacola"
    Validar se a mensagem "Adquira o Chico Rei Prime para desfrutar de frete grátis por 1 ano em todos os pedidos, sem valor mínimo." está sendo exibida 
    Clicar em "Fechar pedido"

Processo de compra de uma camiseta "Erarr é humano" no site do Chico Rei
    Abrir navegador - Erarr 
    Clicar em "Concordar" no aviso sobre Cookies - Erarr
    Pesquisar por "Erarr" e selecionar a primeira opção da lista de resultados
    Validar o valor do produto -Erarr
    Selecionar um tamanho, cor e clicar em comprar -Erarr
    Clicar em "Ver sacola"-Erarr
    Validar se a mensagem "De segunda a sexta, das 8h às 20h." está sendo exibida
    Clicar em "Fechar pedido" -Erarr

Processo de compra de uma camiseta "Nem Te Vi" no site do Chico Rei
    Abrir navegador - Nem te vi 
    Clicar em "Concordar" no aviso sobre Cookies- Nem te vi 
    Pesquisar por "Nem Te Vi" e selecionar a primeira opção da lista de resultados
    Validar o valor do produto - Nem te vi 
    Selecionar um tamanho, cor e clicar em comprar- Nem te vi 
    Clicar em "Ver sacola"- Nem te vi 
    Validar se a mensagem "Compre parcelado com cartão ou á vista com boleto ou depósito" está sendo exibida
    Clicar em "Fechar pedido" - Nem te vi
   


        
