*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.amazon.com.br/
${VERIFICACAO}    //span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'Console Xbox Series S')]
${CONSOLE}        //img[contains(@alt,'Console Xbox Series S')]
${SUCESSO}        //span[@class='a-size-base'][contains(.,'Xbox Series S')]
${CARRINHO}       //a[@data-csa-c-type='button']
${EXCLUIR}        //input[@value='Excluir']
${VAZIO}          //div[@data-name='Subtotals'][contains(.,'Subtotal (0 produtos): R$ 0,00')]
*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window
Fechar o navegador
    Capture Page Screenshot
    Close Browser
Dado que acesso a home page do site amazon.com.br
    Go To    url=${URL}
Quando digitar o nome do produto "Xbox Series S" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox    text=Xbox Series S
Então clicar no botão pesquisa
    Click Element    locator=nav-search-submit-button
E verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    Wait Until Element Is Visible    locator=${VERIFICACAO}
E clicar em: "Console Xbox Series S"
    Click Element    locator=${CONSOLE}
E adicionar o produto "Console Xbox Series S" no carrinho
    Click Button    locator=add-to-cart-button
E verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
    Wait Until Element Is Visible    locator=${SUCESSO}
E ir para o carrinho
    Wait Until Element Is Visible    locator=${CARRINHO}
E clicar no botão "Ir para o carrinho"
    Click Element    locator=${CARRINHO}
E verificar o item "Exluir"
    Wait Until Element Is Visible    locator=${EXCLUIR}
E remover o produto "Console Xbox Series S" do carrinho
    Click Element    locator=${EXCLUIR}
E verificar se o carrinho fica vazio
    Wait Until Element Is Visible    locator=${VAZIO}