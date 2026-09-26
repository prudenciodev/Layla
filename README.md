# Layla AI

<p align="center">
  <img src="assets/logo.png" alt="Layla AI" width="128" height="128" />
</p>

<p align="center">
  <strong>Assistente Autonoma de Inteligencia Artificial para Engenharia de Software, Automacao e Controle de Sistema Multiplataforma.</strong><br>
  <em>Arquitetura Local-First | Motor Irrestrito Nativo v68 | Compatibilidade Universal de Modelos e Plataformas</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Versao-1.1.4-1f6feb?style=flat-square&logo=github" alt="Versao 1.1.4" />
  <img src="https://img.shields.io/badge/Licenca-MIT-2ea44f?style=flat-square" alt="Licenca MIT" />
  <img src="https://img.shields.io/badge/Plataformas-Windows%20|%20Linux%20|%20Android%20|%20iOS%20|%20CLI-0969da?style=flat-square" alt="Plataformas" />
  <img src="https://img.shields.io/badge/Privacidade-Zero%20Telemetria-success?style=flat-square" alt="Zero Telemetria" />
  <img src="https://img.shields.io/badge/Autor-Prudencio%20Dev-58a6ff?style=flat-square" alt="Autor" />
</p>

<p align="center">
  <a href="https://instagram.com/prudenciodev"><img src="https://img.shields.io/badge/Instagram-@prudenciodev-E4405F?style=flat-square&logo=instagram&logoColor=white" alt="Instagram" /></a>
  <a href="https://youtube.com/@prudenciodev"><img src="https://img.shields.io/badge/YouTube-@prudenciodev-FF0000?style=flat-square&logo=youtube&logoColor=white" alt="YouTube" /></a>
  <a href="https://github.com/prudenciodev/Layla"><img src="https://img.shields.io/badge/Repositorio-prudenciodev/Layla-181717?style=flat-square&logo=github&logoColor=white" alt="GitHub" /></a>
</p>

---

## Download Oficial (v1.1.4)

- **Windows (Instalador Oficial):** [Baixar Layla-Setup.exe](https://github.com/prudenciodev/Layla/releases/download/v1.1.4/Layla-Setup.exe) (`873b62d7cd4ffe672c4a2525773bfea0c3a1ed3fa4a03215833a6605a9a39223`)
- **Linux e Termux / Android (Comando 1-Linha):** `curl -fsSL https://raw.githubusercontent.com/prudenciodev/Layla/main/install.sh | bash`
- **Linux e Termux (Download Manual do Arquivo):** [Baixar Layla-linux-termux.tar.gz](https://github.com/prudenciodev/Layla/releases/download/v1.1.4/Layla-linux-termux.tar.gz)

## Layla 1.1.4

- **Suporte Oficial Completo para Android (Termux) & Linux:** Disponibilização do pacote universal de distribuição `Layla-linux-termux.tar.gz` e script de instalação em 1 linha (`install.sh`), eliminando a necessidade de acesso ou clonagem de repositório privado no celular ou no servidor Linux.
- **Instalador Automático em 1 Linha (`curl | bash`):** Novo script `install.sh` que detecta a plataforma (Termux/Linux), instala dependências necessárias automaticamente, baixa o release oficial mais recente e cria o comando global `layla`.
- **Inclusão Nativa das Skills no Pacote de Instalação:** Adição explícita de `iniciar-layla.sh` e da pasta `config_modelo\skills` no instalador Inno Setup e no manifesto do pacote de distribuição.

## Layla 1.1.3

- **Resolução Definitiva do Erro de Inicialização do Servidor:** Sincronização do lockfile do monorepo e desacoplamento do pacote irrestrito da CLI, prevenindo o erro `[ERR_PNPM_OUTDATED_LOCKFILE]` e garantindo que o `node_modules` seja instalado perfeitamente em qualquer máquina.
- **Tratamento Robusto de Instalação e Conexão:** Atualização do script `02_Instalar_Dependencias.bat` com reparo automático utilizando `--no-frozen-lockfile` em caso de pequenas divergências e aumento de timeouts para redes residenciais.
- **Correção de Sintaxe na Inicialização de Configurações:** Eliminação de erro de sintaxe do PowerShell em `02_Instalar_Dependencias.bat` e implementação de cópia direta de templates da pasta `config_modelo\skills`.
- **Documentação Oficial Completa Multiplataforma:** Inclusão de guia passo a passo detalhado para instalação no Windows (gráfico e terminal), Linux (Ubuntu, Debian, Fedora, Arch) e Android (via Termux), com explicação detalhada de funcionamento, privacidade e configuração de modelos de IA.

## Layla 1.1.2

- **Inclusão Integral de Aplicação e Interface Pré-compiladas:** Inclusão dos binários empacotados (`agente/apps/cli/lib/bin.js`) e interface gráfica web (`agente/apps/web/dist/`) no pacote oficial do instalador, garantindo inicialização imediata e eliminando o erro de aplicação compilada ausente.
- **Motor Irrestrito Nativo v68 em Modo Resiliente:** Compilação e exportação nativa em JavaScript ESM (`lib/index.js`, `lib/prompts.js`, `lib/skill.js`) com tolerância dinâmica de esquemas e auto-injeção contínua.

## Layla 1.1.1

- **Correção Definitiva de Travamento e Encerramento na Instalação:** Eliminação de exceções fatais em `ssPostInstall` no Inno Setup. O instalador garante a criação completa de todos os atalhos na Área de Trabalho e Menu Iniciar, sem abortar a instalação.
- **Redimensionamento Responsivo & Correção de DPI no Launcher Nativo:** Substituição de dimensões estáticas por cálculo dinâmico baseado na área de trabalho ativa (`SystemParameters.WorkArea`), impedindo cortes da interface em telas e monitores com escala de 125% e 150%.
- **Integração do Motor Irrestrito Nativo v68 (@prudenciodev):** Inclusão de 31 módulos catalogados sob a assinatura oficial do Prudencio Dev, com ativação dupla transparente (Plugin Cordis com hook `system-prompt/assemble` e Skill Standalone).
- **Correção de URLs Duplicadas e Slugs no DeepSeek / AgentRouter:** Sanitização estrita de `baseUrl` (`normalizeBaseUrl`) evitando duplicações `/chat/completions/chat/completions` (HTTP 404) e atualização de slugs oficiais de modelos.
- **Launcher Multiplataforma (`iniciar-layla.sh`):** Suporte nativo a execução em Linux, macOS e Android (Termux) com detecção automática de portas e abertura de navegador.
- **Runtime Isolado e Pré-instalado:** Inclusão de runtime `pnpm` diretamente na pasta privada, eliminando bloqueios por políticas de execução restritivas do PowerShell.

## Layla 1.1.0

- **Correção Definitiva do Erro 500 / Código Vermelho em Chamadas de Função (OpenAI / AgentRouter / DeepSeek):** Sanitização e padronização integral de esquemas JSON de ferramentas com garantia estrita de `required: []` mesmo em ferramentas sem argumentos obrigatórios (`get_goal`, `job_list`), eliminando a rejeição por validadores de gateway upstream.
- **Expurgo Físico Real de Sessões Removidas (Fim das Ghost Sessions):** A ação de exclusão no gerenciador de workspaces agora realiza a destruição física imediata dos diretórios e arquivos compactados `.jsonl.zstd` no disco rígido, impedindo a reindexação de conversas antigas apagadas.
- **Higienização de Entrada de Áudio:** Remoção de mocks de texto estáticos em falhas do microfone no WebView2; tratamento limpo e confiável de drafts e duração de áudio no compositor sem poluir a caixa de texto com strings artificiais.
- **Harmonização de Temas & Tokens CSS (Design System DSH):** Refatoração da Central de Ajuda e inventário de plugins para uso de variáveis semânticas de tokens (`var(--dsw-alias-*)`), assegurando legibilidade, contraste e estética perfeita em qualquer tema claro, escuro ou customizado.
- **Prevenção Estrita de Duplicidades na Interface:** Normalização de identificadores e deduplicação de modelos de IA e sessões de trabalho no menu lateral e seletores.
- **Recuperação Automática de Porta & Processos Zumbis:** Detecção proativa e encerramento de processos órfãos retendo a porta 3080 no Windows ao iniciar a aplicação.

## Layla 1.0.9

- **Atualizador Rápido In-Place (Delta Update):** Sistema de atualização leve em segundos via `Layla-Update.zip`, sem necessidade de baixar o instalador completo a cada nova versão.
- **Desinstalador Profundo (Zero Resíduos):** Limpeza cirúrgica e completa de diretórios de dados (`.layla`, `.dsh`), registros locais, atalhos, processos e regras de firewall do Windows.
- **Instalação e Runtime Isolados:** Sanitização estrita de `PATH`, `NODE_PATH` e `PNPM_HOME` nos inicializadores, evitando quebras de dependência por versões de Node ou pnpm pré-instaladas no sistema do usuário.
- **Descoberta e Busca de Modelos Inteligente:** Normalização automática de IDs, descarte de modelos não conversacionais (embeddings/TTS), eliminação de duplicidades e formatação de nomes legíveis.
- **Modo Automático Aperfeiçoado (Auto-Best Coding):** Seleção contínua e reativa do melhor modelo para desenvolvimento de software sem interferir no foco do usuário.
- **Compatibilidade Plena com Google AI Studio & Thinking Models:** Resolução precisa de rotas para `/v1beta/openai` e tratamento seguro de deltas vazios em modelos de pensamento (Gemini 2.0 / 2.5 Flash / Pro).
- **Prefill do Assistente (`assistantPrefill`):** Suporte nativo para direcionamento de início de resposta em modelos compatíveis.
- **Terminal e Subprocessos 100% UTF-8:** Imposição nativa de `chcp 65001`, `PYTHONIOENCODING=utf-8` e `PYTHONUTF8=1`, extinguindo erros de acentuação e caracteres no Windows.
- **Medição Calibrada de Tokens:** Estimativa ajustada para português e idiomas multilíngues, impedindo cortes inadvertidos de contexto.
- **Conexão WebSocket com Heartbeat Ativo:** Detecção proativa de desconexões e recuperação automática após suspensão do computador.
- **Suporte Avançado a Proxies:** Suporte para proxies HTTP/HTTPS autenticados e SOCKS5 com propagação global no runtime.
- **Nova Central de Ajuda:** Interface revitalizada com documentação detalhada de comandos, arquitetura e atalhos.

## Layla 1.0.8

- Atualizador Oficial com validação criptográfica estrita Authenticode: verificação do status da assinatura, integridade contra adulteração, validade temporal e identidade institucional autorizada do publicador.
- Proteção de credenciais locais no Windows: aplicação de ACLs NTFS restritivas (apenas o usuário interativo do Windows possui permissão, removendo herança).
- Expiração e revogação ativa de conexões WebSocket: sockets abertos de dispositivos desautorizados ou expirados são encerrados imediatamente no servidor.
- Preservação fidedigna das datas de criação de sessões pareadas e exigência de novo pareamento caso os registros de tempo sejam inconsistentes.
- Leitura assíncrona de skills e controle duplo por limite em bytes e orçamento de tokens, com corte em fronteiras de caracteres UTF-8.
- Autorização estrita do hostname do túnel ativo na cerca de confiança `/api`, eliminando padrões curinga e limpando ao encerrar.
- Migração de dados segura e recuperável: transição para `~/.layla` preservando `.dsh` intacto como cópia de segurança (desinstalação nunca apaga `.dsh`).
- Launcher nativo Windows (Layla.exe) com atributos de versão PE e produto devidamente vinculados.

## Layla 1.0.7

- Suporte ampliado a instruções de sistema avançadas e prompts de contexto extensos (até 10 MB) no Gerenciador de Skills, com parser de alta capacidade sem erros de requisição (HTTP 413).
- Injeção direta e automática de todas as skills ativas no Prompt de Sistema desde o primeiro turno da conversa para modelos locais (Ollama, LM Studio) e provedores em nuvem.
- Blindagem e contenção no carregamento de skills: verificação canônica estrita contra symlinks e restrição de escopo a diretórios autorizados.
- Isolamento rigoroso de permissões: proteção estrita de interface loopback para rotas administrativas locais contra acessos por túnel ou rede externa.
- Integração da pasta global DSH_AGENTS_HOME ao pipeline de auto-injeção de prompts da IA.
- Sistema de notificação periódica nativa de atualizações no Windows e na interface, com integridade e canal de release sincronizados para o repositório prudenciodev/Layla.
- Pacote de distribuição aberto, neutro e configurável: liberdade total de parametrização e customização pelo usuário.
- Integridade verificada por manifesto estrito de empacotamento com Inno Setup 7 e digest SHA-256.

Compatibilidade da distribuição: Windows 10/11 x64, com internet na primeira instalação. Modelos locais têm requisitos próprios de memória, armazenamento e drivers. Esta versão não inclui chaves nem modelos de IA pré-instalados.



---

## 1. Visao Geral da Arquitetura

A **Layla AI** e um agente autono de inteligencia artificial concebido para operar diretamente no ambiente do usuario. Diferente de solucoes baseadas exclusivamente em chat web remoto, a Layla interage ativamente com o sistema operacional, executando comandos de terminal, gerenciando arquivos locais, automatizando rotinas e integrando-se a multiplos provedores de IA.

### Pilares Tecnicos da Plataforma:

- **Soberania de Dados (Local-First):** Seus dados, arquivos, sessoes e chaves de API permanecem gravados exclusivamente no seu dispositivo (em `~/.layla` ou `%USERPROFILE%\.layla`). Nenhuma informacao e enviada a servidores intermediarios proprietarios.
- **Motor Irrestrito Nativo v68:** Matriz integrada de 31 modulos tecnicos desenvolvida por **@prudenciodev**, permitindo tarefas avancadas de programacao, auditoria de seguranca de software, analise de binarios e engenharia reversa sem filtros artificiais ou bloqueios indevidos.
- **Isolamento de Seguranca por Padrao:** O servidor local vincula-se nativamente a interface loopback (`127.0.0.1`). Dispositivos externos na rede local ou na internet nao conseguem acessar sua assistente, salvo se configurado deliberadamente pelo operador.
- **Zero Telemetria:** A variavel de ambiente `DSH_TELEMETRY_DISABLED=1` e ativada nativamente em todos os scripts de inicializacao.

---

## 2. Compatibilidade Multiplataforma e Dispositivos

A Layla AI foi desenhada com arquitetura modular que viabiliza execucao nativa ou acesso remoto em qualquer sistema operacional e dispositivo:

| Ambiente / Dispositivo | Modo de Operacao | Camada de Interface | Como e Utilizado |
| :--- | :--- | :--- | :--- |
| **Windows 10 / 11 (64 bits)** | Aplicativo Desktop Nativo | Microsoft WebView2 | Instalador oficial `Layla-Setup.exe` com Node.js isolado embutido. |
| **Linux (Ubuntu, Debian, Fedora, Arch)** | Servidor Local + CLI Global | Navegador Web (`xdg-open`) / Terminal | Instalador automatico em 1 linha que configura o comando global `layla`. |
| **Android (via Termux)** | Linux Userspace Nativo | Navegador Mobile (`termux-open-url`) / Shell | Execucao nativa no app Termux sem necessidade de root. |
| **iOS (iPhone e iPad)** | Web Client PWA / Acesso LAN | Safari / Chrome Mobile (PWA em tela cheia) | Conexao via rede local com o servidor da Layla ativo no computador. |
| **Servidores Headless / CLI** | Linha de Comando Pura | Terminal / Scripts de Automacao | Operacao direta via terminal para automacoes e servidores remotos. |

---

## 3. Suporte Universal a Provedores de Inteligencia Artificial

A assistente funciona com liberdade total de escolha, suportando modelos offline locais e provedores de alta capacidade em nuvem:

### A. Modelos Locais e Offline (100% Gratuitos, Privativos e Sem Internet)
Permite executar tarefas de forma totalmente isolada sem consumo de rede ou custos por requisicao:
- **Ollama:** Conexao com endpoint compativel `http://127.0.0.1:11434/v1`. Modelos recomendados:
  - `ollama run qwen2.5-coder:7b` (ideal para desenvolvimento de software)
  - `ollama run deepseek-r1:8b` (ideal para raciocinio complexo e logica)
  - `ollama run llama3.2:3b` (leve, ideal para notebooks modestos e smartphones no Termux)
- **LM Studio:** Servidor local compativel com protocolo OpenAI em `http://127.0.0.1:1234/v1`.
- **Servidores Customizados:** Suporte nativo a qualquer endpoint compativel com a API OpenAI (`/v1/chat/completions`), incluindo vLLM, LocalAI e Text Generation WebUI.

### B. Provedores em Nuvem de Alto Desempenho
Configuracao direta via Chave de API (`API Key`) gravada unicamente no arquivo local do usuario:
- **DeepSeek:** Modelos oficiais `deepseek-chat` (V3) e `deepseek-reasoner` (R1).
- **OpenAI:** GPT-4o, GPT-4o-mini, GPT-o1, GPT-o3-mini.
- **Anthropic:** Claude 3.7 Sonnet, Claude 3.5 Haiku, Claude 3.5 Sonnet.
- **Google Gemini:** Gemini 2.0 Flash, Gemini 2.0 Pro.
- **Groq:** Aceleracao LPU com respostas de latencia ultrabaixa.
- **Mistral AI:** Mistral Large, Codestral.
- **OpenRouter:** Roteamento unificado para centenas de modelos abertos e proprietarios.

---

## 4. Guia de Instalacao Passo a Passo

### 1. Windows 10 e Windows 11 (64 bits)

A instalacao no Windows e completamente automatizada atraves de instalador grafico oficial:

1. Acesse a pagina de [Releases Oficiais da Layla](https://github.com/prudenciodev/Layla/releases/latest).
2. Baixe o instalador oficial: **`Layla-Setup.exe`**.
3. De um duplo clique em `Layla-Setup.exe` e conclua o assistente de instalacao na tela.
4. O instalador cuida de toda a configuracao interna (isolando o ambiente Node.js sem alterar suas variaveis globais do Windows).
5. Ao concluir, abra o atalho **Layla** criado na Area de Trabalho ou no Menu Iniciar.

---

### 2. Android (via Termux)

Voce pode rodar a Layla inteira diretamente no seu smartphone ou tablet Android sem precisar de root:

#### Instalacao Automatica em 1 Linha (Recomendada):
Abra o aplicativo **Termux** (instalado atraves do [F-Droid](https://f-droid.org/en/packages/com.termux/)) e execute:
```bash
curl -fsSL https://raw.githubusercontent.com/prudenciodev/Layla/main/install.sh | bash
```

**O que o comando realiza automaticamente:**
1. Atualiza os repositorios e instala `nodejs`, `tar` e `curl`.
2. Baixa o pacote oficial `Layla-linux-termux.tar.gz` da release publica do GitHub.
3. Extrai e prepara a aplicacao no diretorio `~/layla`.
4. Cria o comando global `layla` no Termux.
5. Configura o Motor Irrestrito v68 em `~/.layla/skills`.
6. Inicia o servidor local e abre o navegador do smartphone em `http://127.0.0.1:3080`.

#### Como Iniciar Novamente no Termux:
Basta abrir o Termux e digitar:
```bash
layla
```
*(Dica: Se quiser manter o servidor ativo com a tela do celular apagada, digite `termux-wake-lock` antes de iniciar).*

---

### 3. Linux e WSL2 (Ubuntu, Debian, Fedora, Arch)

#### Instalacao Automatica em 1 Linha (Recomendada):
Abra o terminal e execute:
```bash
curl -fsSL https://raw.githubusercontent.com/prudenciodev/Layla/main/install.sh | bash
```

#### Como Iniciar Novamente no Linux:
Basta digitar no terminal:
```bash
layla
```
O navegador padrao sera aberto automaticamente em `http://127.0.0.1:3080`.

#### Instalacao Manual (Alternativa):
```bash
# 1. Dependencias basicas
sudo apt update && sudo apt install -y curl tar nodejs npm
sudo npm install -g pnpm@11.7.0

# 2. Download do pacote oficial
curl -LO https://github.com/prudenciodev/Layla/releases/latest/download/Layla-linux-termux.tar.gz

# 3. Extracao e execucao
mkdir -p ~/layla && tar -xzf Layla-linux-termux.tar.gz -C ~/layla
cd ~/layla
chmod +x iniciar-layla.sh
./iniciar-layla.sh
```

---

### 4. iOS (iPhone e iPad)

No iOS, a assistente opera como um Progressive Web App (PWA) conectado a uma instancia da Layla em execucao no seu computador ou servidor na mesma rede:

1. No computador onde a Layla esta instalada, permita o acesso na rede local definindo a variavel de host:
   - No terminal ou PowerShell: defina `PRUDENCIO_HOST=0.0.0.0`
   - Inicie a Layla: `layla` (ou execute pelo atalho).
2. No iPhone ou iPad conectado ao mesmo Wi-Fi, abra o **Safari** e digite o endereco local do computador:
   `http://<IP_DO_SEU_COMPUTADOR>:3080`
   *(Descubra o IP digitando `ipconfig` no Windows ou `ip a` no Linux).*
3. No Safari, toque no icone de **Compartilhar** e selecione **Adicionar a Tela de Inicio**.
4. O icone da Layla sera criado na tela do iOS e abrira em tela cheia como um aplicativo independente.

---

## 5. Como Configurar e Usar a Ferramenta

### A. Adicionando seu Modelo de IA na Interface
1. Abra a Layla (`Layla.exe` no Windows ou `http://127.0.0.1:3080` no navegador).
2. Clique no icone de **Configuracoes (Engrenagem)** no topo ou lateral da tela.
3. Acesse a secao **Modelos de IA** e clique em **Adicionar Provedor**:
   - **Para Ollama:** Escolha Ollama, informe a URL `http://127.0.0.1:11434/v1` e salve.
   - **Para Provedores em Nuvem:** Escolha o provedor (ex.: DeepSeek, OpenAI, Anthropic, Gemini, Groq), cole sua **API Key** e salve.
4. Selecione o modelo na lista e a assistente estara pronta para interagir.

### B. Gestao de Workspace
Ao iniciar uma conversa de projeto, voce pode apontar a pasta de trabalho desejada no seu computador. Qualquer arquivo que a Layla criar, inspecionar ou refatorar ficara salvo diretamente nessa pasta.

### C. Exemplos Praticos de Uso:
- **Desenvolvimento de Software:** *"Crie uma aplicacao REST em TypeScript com Fastify e SQLite, incluindo rotas completas de CRUD e documentacao."*
- **Depuracao e Correcao de Codigo:** *"Leia o arquivo server.py da pasta do projeto, identifique por que a conexao com o banco esta falhando e aplique a solucao."*
- **Automacao Operacional:** *"Examine os logs na pasta ./logs, filtre mensagens de erro HTTP 5xx e resuma os incidentes em um relatorio."*
- **Engenharia Reversa (Modo Irrestrito v68):** *"Analise o arquivo binario sample.bin na minha pasta de trabalho, reconstrua a tabela de funcoes e explique a logica de verificacao."*

---

## 6. Extensibilidade por Skills (Sem Necessidade do Codigo-Fonte)

A Layla AI foi projetada para ser completamente modular e expansivel sem que os usuarios precisem manipular o nucleo de codigo-fonte da aplicacao:

- **Habilidades Personalizadas (Skills):** Para ensinar novas funcoes a Layla, basta criar uma subpasta em `~/.layla/skills/<nome-da-skill>/` e adicionar um arquivo `SKILL.md` descrevendo os prompts, instrucoes tecnicas e regras operacionais.
- **Configuracoes Pessoais:** O arquivo `~/.layla/settings.yaml` mantem todas as preferencias de interface, provedores cadastrados e ajustes de ambiente.
- **Historico de Sessoes:** Todas as conversas sao persistidas localmente em `~/.layla/sessions/`.

---

## 7. Diagnostico e Perguntas Frequentes (FAQ)

### O que fazer se a porta 3080 estiver ocupada?
- **No Windows:** O aplicativo ja detecta e encerra processos orfaos na porta 3080 automaticamente. Caso necessario, voce pode definir outra porta com a variavel `PRUDENCIO_PORT=4000`.
- **No Linux / Termux:** Execute no terminal:
  ```bash
  kill $(lsof -t -i:3080) 2>/dev/null || fuser -k 3080/tcp 2>/dev/null
  ```

### E possivel usar a Layla totalmente sem internet?
**Sim.** Basta instalar o [Ollama](https://ollama.com/) e baixar um modelo como `qwen2.5-coder:7b` ou `deepseek-r1:8b`. Toda a execucao ocorrera localmente no seu hardware, com zero envio de dados para a internet.

### Como atualizar a ferramenta?
- **No Windows:** Baixe o novo `Layla-Setup.exe` na pagina oficial de releases e instale por cima. Todos os seus dados, conversas e configuracoes em `~/.layla` serao preservados intactos.
- **No Linux e Termux:** Execute novamente o comando de 1 linha oficial:
  ```bash
  curl -fsSL https://raw.githubusercontent.com/prudenciodev/Layla/main/install.sh | bash
  ```

### Como desinstalar completamente?
- **No Windows:** Desinstale pelo Painel de Controle > Programas e Recursos. Se desejar remover tambem o historico e dados locais, exclua a pasta `%USERPROFILE%\.layla`.
- **No Linux ou Termux:** Remova os arquivos com:
  ```bash
  rm -rf ~/layla ~/.layla /usr/local/bin/layla ~/.local/bin/layla
  ```

---

## 8. Licenca e Creditos

Este projeto e desenvolvido e mantido por **Prudencio Dev**.  
Distribuido sob os termos da licenca [MIT](LICENSE).

- **Instagram:** [@prudenciodev](https://instagram.com/prudenciodev)
- **YouTube:** [@prudenciodev](https://youtube.com/@prudenciodev)
- **Repositorio Oficial:** [github.com/prudenciodev/Layla](https://github.com/prudenciodev/Layla)

<p align="center">
  <sub>Layla AI | Engenharia de Software e Automacao com Seguranca, Privacidade e Independencia.</sub>
</p>
