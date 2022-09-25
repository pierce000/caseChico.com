*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                    https://chicorei.com/
${BROWSER}                googlechrome
${CONCORDAR}       //button[@id='confirmPolicyButton']
${CAMPO_PESQUISAR}   //*[@id="header-search-input-desktop"]
${AMARELO_DESESPERO}    Amarelo é desespero
${ERARR}                Erarr
${NEM_TE_VI}            Nem Te Vi
${CLICA_RESULTADO}    //*[@id="header-search-desktop"]/form/div/div/div/div[1]/div/div[2]/div[1]
${VALIDAR_ELEMENTO}      //*[@id="product-main-right"]/div[1]/div[2]/div/p[1]
${TAMANHO}           //*[@id="product-variations"]/div[1]/div/div[3]/nav/div[1]
${COR}               //*[@id="product-variations"]/div[1]/div/div[4]/nav/div[2]/div
${COMPRAR}           //*[@id="product-buy-button-container"]/button/span[2]
${SACOLA}            //*[@id="header-cart-popover"]/div/div[3]/a[1]
${FECHAR_PEDIDO}      //*[@id="cart-finish"]/button[2] 

*** Keywords ***
Abrir navegador e clicar em "Concordar" no aviso sobre Cookies
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Element    ${CONCORDAR}

Pesquisar por "Amarelo é desespero" e selecionar a primeira opção da lista de resultados
    Click Element   ${CAMPO_PESQUISAR}  
    Input Text    ${CAMPO_PESQUISAR}  ${AMARELO_DESESPERO}
    Sleep        2s
    Click Element    ${CLICA_RESULTADO}
    Mouse Over    ${CAMPO_PESQUISAR}
    Sleep        2s

Validar o valor do produto
    Wait Until Element Is Visible     ${VALIDAR_ELEMENTO}  

Selecionar um tamanho, cor e clicar em comprar
    Execute Javascript    window.scrollTo(0,650)
    Click Element         ${TAMANHO}  
    Sleep                 2s
    Click Element         ${COR}  
    Sleep                 2s
    Click Element         ${COMPRAR} 
    Sleep                 2s
Clicar em "Ver sacola"
    Click Element         ${SACOLA} 
    Sleep                  4s
Validar se a mensagem "Adquira o Chico Rei Prime para desfrutar de frete grátis por 1 ano em todos os pedidos, sem valor mínimo." está sendo exibida 
    Page Should Not Contain    Adquira o Chico Rei Prime para desfrutar de frete grátis por 1 ano em todos os pedidos, sem valor mínimo. 
Clicar em "Fechar pedido"
    Click Element          ${FECHAR_PEDIDO}
    Sleep                  4s 
    Page Should Contain    Login  
    Close Window 



Abrir navegador - Erarr 
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
Clicar em "Concordar" no aviso sobre Cookies - Erarr
    Click Button   ${CONCORDAR}
 Pesquisar por "Erarr" e selecionar a primeira opção da lista de resultados    
    Click Element   ${CAMPO_PESQUISAR}  
    Input Text    ${CAMPO_PESQUISAR}  ${ERARR} 
    Sleep        2s
    Click Element    ${CLICA_RESULTADO}
    Mouse Over    ${CAMPO_PESQUISAR}
    Sleep        2s
Validar o valor do produto -Erarr
    Wait Until Element Is Visible     ${VALIDAR_ELEMENTO}  
Selecionar um tamanho, cor e clicar em comprar -Erarr 
    Execute Javascript    window.scrollTo(0,650)
    Click Element         ${TAMANHO}  
    Sleep                 2s
    Click Element         ${COR}  
   Sleep                 2s
    Click Element         ${COMPRAR} 
    Sleep                 2s 
Clicar em "Ver sacola"-Erarr 
    Click Element         ${SACOLA} 
    Sleep                  4s
Validar se a mensagem "De segunda a sexta, das 8h às 20h." está sendo exibida
    Execute Javascript    window.scrollTo(0,800)
    Page Should Not Contain   De segunda a sexta, das 8h às 20h.
    Sleep                 2s
    Execute Javascript    window.scrollTo(800,0)
Clicar em "Fechar pedido" -Erarr  
    Click Element          ${FECHAR_PEDIDO}
    Sleep                  4s 
    Page Should Contain    Login 
    Close Window      



Abrir navegador - Nem te vi 
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
Clicar em "Concordar" no aviso sobre Cookies- Nem te vi
    Click Button   ${CONCORDAR}
Pesquisar por "Nem Te Vi" e selecionar a primeira opção da lista de resultados    
    Click Element   ${CAMPO_PESQUISAR}  
    Input Text    ${CAMPO_PESQUISAR}  ${NEM_TE_VI}
    Sleep        2s
    Click Element    ${CLICA_RESULTADO}
    Mouse Over    ${CAMPO_PESQUISAR}
    Sleep        2s
Validar o valor do produto - Nem te vi   
    Wait Until Element Is Visible     ${VALIDAR_ELEMENTO}
Selecionar um tamanho, cor e clicar em comprar- Nem te vi  
    Execute Javascript    window.scrollTo(0,650)
    Click Element         ${TAMANHO}  
    Sleep                 2s
    Click Element         ${COR}  
    Sleep                 2s
    Click Element         ${COMPRAR} 
    Sleep                 2s 
Clicar em "Ver sacola"- Nem te vi        
    Click Element         ${SACOLA} 
    Sleep                  4s
Validar se a mensagem "Compre parcelado com cartão ou á vista com boleto ou depósito" está sendo exibida
    Execute Javascript    window.scrollTo(0,800)
    Page Should Not Contain   Compre parcelado com cartão ou á vista com boleto ou depósito
    Sleep                 2s
    Execute Javascript    window.scrollTo(800,0)
Clicar em "Fechar pedido" - Nem te vi  
    Click Element          ${FECHAR_PEDIDO}
    Sleep                  4s 
    Page Should Contain    Login 

Finalizar testes
    Close Browser      
