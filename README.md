# 🚀 Introdução ao Shell Scripting

O Shell Scripting é uma poderosa ferramenta que permite a automação de tarefas no sistema operacional usando scripts escritos em shell, como o Bash. Neste tutorial, você aprenderá conceitos básicos e como começar a escrever seus próprios scripts em Shell.

## 🤖 O que é Shell Scripting?

Shell Scripting refere-se à escrita de scripts (sequências de comandos) para serem executados no shell do sistema operacional. Os scripts podem conter comandos shell, estruturas de controle de fluxo e variáveis, permitindo automação eficiente de tarefas.

## 📝 Como Escrever um Script Simples

Para começar, crie um arquivo com a extensão `.sh` usando um editor de texto como o `nano` ou `vim`. Por exemplo, `meuscript.sh`.

Dê permissão de execução ao seu script:

```bash
chmod +x meuscript.sh

# 📝 Como Escrever um Script Simples

Adicione o seguinte código ao script:

```bash
#!/bin/bash

# Seu primeiro script em Shell
echo "Olá, Mundo!"

# Executar comando
# Para isso, digite: ./meuscript.sh OU bash meuscript.sh

```
## ShellCheck
O ShellCheck é uma ferramenta de análise estática para scripts de shell que ajuda a identificar problemas de estilo, erros de sintaxe e possíveis melhorias de código. Este tutorial abordará a instalação do ShellCheck e seu uso básico.

## Instalação

### Linux (Debian/Ubuntu)
```
sudo apt-get install shellcheck
```

## Utilização

```bash
shellcheck nome_arquivo.sh
```

## Debug

```bash
bash -x nome_do_seu_script.sh
```

## Documentação


<p>
  <a href="https://github.com/koalaman/shellcheck/">
    <img src="https://img.shields.io/badge/Shellcheck Documentation-blue" alt="Shellcheck Documentation">
  </a>
<p>
  <a href="https://www.gnu.org/software/bash/manual/bash.html">
    <img src="https://img.shields.io/badge/Bash Bash Reference Manual-blue" alt="Bash Bash Reference Manual">
  </a>

