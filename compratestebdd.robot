*** Settings ***
Documentation  Essa suite testa o fluxo de adcionar produtos no carrinho
Resource         comprabdd_resource.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de teste 03 -Adicionar Produto no Carrinho
    [Documentation]     Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]              adicionar_carrinho
    Dado que acesso a home page do site amazon.com.br
    Quando digitar o nome do produto "Xbox Series S" no campo de pesquisa
    Então clicar no botão pesquisa
    E verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    E clicar em: "Console Xbox Series S"
    E adicionar o produto "Console Xbox Series S" no carrinho
    E verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
Caso de teste 04 -Remover Produto do Carrinho
    [Documentation]     Esse teste verifica a remoção de um produto do carrinho de compras
    [Tags]              remover_carrinho
    Dado que acesso a home page do site amazon.com.br
    Quando digitar o nome do produto "Xbox Series S" no campo de pesquisa
    Então clicar no botão pesquisa
    E verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    E clicar em: "Console Xbox Series S"
    E adicionar o produto "Console Xbox Series S" no carrinho
    E verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
    E ir para o carrinho
    E clicar no botão "Ir para o carrinho"
    E verificar o item "Exluir"
    E remover o produto "Console Xbox Series S" do carrinho
    E verificar se o carrinho fica vazio


