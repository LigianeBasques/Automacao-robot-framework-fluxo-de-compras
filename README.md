# Automacao-robot-framework-fluxo-de-compras
Automação com robot framework do fluxo de compras do site da Amazon

# 👀Visão Geral👀 #
Esse desafio é sobre a automação do fluxo de compras do site da amazon, utilizando o robot framework. Será automatizado os seguintes fluxos:
<li>Adicionar produto no carrinho</li>
<li>Remover produto do carrinho</li>

# 🏃Primeiros passos🏃 #
### Instale o python ###
Baixe e instale o python em seu computador entre no siste: https://www.python.org/downloads/
### Instale o robot framework ###
Entre no prompt de comandos do seu pc e digite o seguinte comando: pip install robotframework
### Instale a selenium library ###
Instale a biblioteca seleniun library do robot framework digitando o seguinte comando no prompt de comandos do seu computador: pip install --upgrade robotframework-seleniumlibrary
### Baixe o WebDriver ###
Você precisará baixar o WebDriver para o navegador que será utilizado nos testes. Você pode encontrá-lo nos seguintes sites:
+ **Chrome:** https://sites.google.com/a/chromium.org/chromedriver/downloads
+ **Firefox:** https://github.com/mozilla/geckodriver/releases
+ **Edge:** https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/
+ **Opera:** https://github.com/operasoftware/operachromiumdriver/releases

**Observação**: Baixe o WebDriver correspondente à versão do seu navegador e coloque-o em um local acessível no seu sistema. Certifique-se de adicionar o diretório onde o WebDriver está localizado ao seu PATH.
### Instale o visual studio code ###
+ Baixe e instale um editor de código de preferência o visual studio code entre no site: https://code.visualstudio.com/download
# 🔨 Estrutura da automação🔨  #
Os testes estão separados em dois arquivos:
+ **Resources:** Contém arquivos de recursos, como variáveis globais, arquivos de configuração, etc.
+ **teste:** Contém os casos de testes o qual serão executados

# 💡Começando a automação💡 #
O site escolhido para realizar a automação é o site de e-commece da amazon: https://www.amazon.com.br/ e os fluxos que serão automatizados com o robot framework são: **Adicionar produto no carrinho** e **Remover produto do carrinho**
## 🔎Fluxo: adicionar produto🔎 ##




