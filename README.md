# Documentação do Projeto: Analisador de IP/Domínio

## Descrição

Este projeto é um script em Bash que permite a coleta de informações sobre um endereço IP ou domínio fornecido pelo usuário.
Serve como um "acelerador" de ferramentas de recon.
O script executa uma série de comandos de rede para obter dados relevantes e salva os resultados em arquivos separados.

## Funcionalidades

O script realiza as seguintes operações:

1. **WHOIS**: Obtém informações registradas sobre o domínio ou IP.
2. **NSLOOKUP**: Realiza uma consulta DNS para obter informações sobre o domínio.
3. **HOST**: Exibe informações sobre o endereço IP ou domínio, incluindo o endereço IP associado.
4. **DIG**: Realiza consultas DNS mais detalhadas.

## Pré-requisitos

Para executar este script, você precisa ter os seguintes comandos instalados no sistema:

- `whois`
- `nslookup`
- `host`
- `dig`

### Passo a Passo

1. O script solicitará um endereço IP ou domínio.
2. Após a entrada, ele executará os comandos de rede e salvará os resultados em arquivos no diretório especificado (`/home/user/SavedContent/resultados`).
3. Os resultados estarão disponíveis nos seguintes arquivos:
    - `whois.txt`
    - `nslookup.txt`
    - `host.txt`
    - `dig.txt`

## Estrutura do Código

O script é estruturado da seguinte forma:

- **Entrada do Usuário**: Solicita ao usuário um IP ou domínio.
- **Verificação de Entrada**: Confirma se uma entrada válida foi fornecida.
- **Criação do Diretório de Saída**: Garante que o diretório para salvar os resultados exista.
- **Execução dos Comandos**: Para cada comando, o resultado é salvo em um arquivo específico.

## Exemplo de Uso

```bash
Informe o IP ou domínio a ser analisado:
exemplo.com
Executando whois para exemplo.com...
Resultado salvo em /home/user/SavedContent/resultados/whois.txt
Executando nslookup para exemplo.com...
Resultado salvo em /home/user/SavedContent/resultados/nslookup.txt
...
Coleta de informações finalizada. Resultados armazenados no diretório '/home/user/SavedContent/resultados'.
```

# Disclaimer

Desenvolvi esse código para fins didáticos e uso pessoal em meus estudos em Pentest e prática em labs. 
Me comprometendo a usar somente de forma ética com a devida autorização
Não é destinado a ser utilizado para fins maliciosos ou ilegais.
Sempre obtenha permissão adequada antes de realizar varreduras de rede em qualquer ambiente.
