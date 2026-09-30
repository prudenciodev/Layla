# Layla AI

<p align="center">
  <img src="assets/logo.png" alt="Layla AI" width="128" height="128" />
</p>

<p align="center">
  <strong>Assistente Autonoma de Inteligencia Artificial para Engenharia de Software, Automacao e Controle de Sistema Multiplataforma.</strong><br>
  <em>Arquitetura Local-First | Motor Irrestrito Nativo v68 | Compatibilidade Universal de Modelos e Plataformas</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Versao-1.1.8-1f6feb?style=flat-square&logo=github" alt="Versao 1.1.8" />
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

## Download Oficial (v1.1.8)

- **Windows (Instalador Oficial):** [Baixar Layla-Setup.exe](https://github.com/prudenciodev/Layla/releases/download/v1.1.8/Layla-Setup.exe) (`befb44d8d3d5a2847268db317a7e666a0e7662a02e374f2d266e6aef1ea389fa`)
- **Linux e Termux / Android (Comando 1-Linha):** `curl -fsSL https://raw.githubusercontent.com/prudenciodev/Layla/main/install.sh | bash`
- **Linux e Termux (Download Manual do Arquivo):** [Baixar Layla-linux-termux.tar.gz](https://github.com/prudenciodev/Layla/releases/download/v1.1.8/Layla-linux-termux.tar.gz)

## Layla 1.1.8

- **Resolução de Inicialização do Launcher e Links Monorepo:** Correção definitiva do erro `ERR_MODULE_NOT_FOUND` no arranque de `Layla.exe` através de auto-recuperação com vinculação forçada de pacotes internos (`@prudencio/*`) e sincronização de reparse points no Windows.
- **Logging Thread-Safe no Launcher Nativo:** Implementação de lock de sincronização em `App.Log` e `LaylaWindow.Log`, eliminando colisões de I/O (`IOException`) durante inicializações concorrentes de streams assíncronos.
- **Relatório Completo de Exceções no Diálogo de Erro:** Exibição preservada dos primeiros 600 caracteres do erro original (sem truncar a mensagem principal do Node.js).
- **Validação Estrita de Integridade Pré-Start:** Verificação obrigatória da presença e integridade de `package.json` dos componentes internos da CLI antes de tentar disparar o processo Node.js.

## Layla 1.1.7

- **Resolução Crítica de Dependências Opcionais Quebradas (Erro 23 NPM):** Inclusão de hook dinâmico `.pnpmfile.cjs` que remove pacotes opcionais com falha de download no registro npm (`@anthropic-ai/claude-agent-sdk-win32-*`, `@openai/codex-win32-*`), reduzindo o tempo de preparação de dependências de mais de 30 minutos com falhas para ~50 segundos.
- **Tela de Carregamento Nativa (Splash Screen):** O launcher nativo agora exibe uma janela moderna informando o progresso da configuração de ambiente na primeira inicialização, eliminando a percepção de congelamento ou tela piscando em segundo plano.
- **Recuperação Automática e Resiliente:** Tratamento transparente de módulos ausentes com auto-reparo e proteção contra loops de processos duplicados.

## Layla 1.1.5

- **Resolução Definitiva de Dependências & Boot Monorepo:** Inclusão de `.npmrc` com hoisting (`shamefully-hoist=true`, `auto-install-peers=true`) e remoção da flag `--prod` em `02_Instalar_Dependencias.bat` e `iniciar-layla.sh`, eliminando em definitivo o erro `Cannot find package '@deepseek-ai/cordis'` no Windows, Linux e Android/Termux.
- **Atualizador Automático Confiável (`bin/atualizar.ps1`):** Validação de integridade direta por hash SHA-256 oficial contra `version.json`, permitindo atualizações in-place perfeitas; correção de extração delta com sobrescrita de arquivos em execução.
- **Seleção e Troca Fluida de Modelos de IA:** Resolução do travamento do seletor de modelos no composer (fechamento automático de menu sem falsos erros), desativação de sobreposição agressiva de seleção manual e sanitização automática de `reasoningEffort` para modelos incompatíveis (evitando rejeições e código vermelho no envio de mensagens).
- **Eliminação de Duplicidades em Prompts:** Remoção de listeners concorrentes no motor irrestrito nativo (`layla-unrestricted`), mantendo injeção única, limpa e padronizada no prompt de sistema.

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

## 4. Guia Completo e Didático de Instalação (Passo a Passo do Zero)

Abaixo está o manual definitivo para instalar e utilizar a Layla em qualquer sistema operacional, mesmo que você nunca tenha aberto um terminal ou nunca tenha utilizado o Termux no celular.

---

### 🖥️ 1. Windows 10 e Windows 11 (64 bits) — Computador ou Notebook

A instalação no Windows é 100% gráfica, rápida e automatizada por instalador oficial:

#### Passo 1: Download do Instalador Oficial
1. Acesse a página de [Releases Oficiais da Layla](https://github.com/prudenciodev/Layla/releases/latest).
2. Baixe o instalador compilado: **`Layla-Setup.exe`**.

#### Passo 2: Execução e Instalação
1. Dê um duplo clique no arquivo `Layla-Setup.exe`.
2. **Aviso do Windows SmartScreen:** Por ser um aplicativo novo de desenvolvimento independente, o Windows pode exibir uma tela azul dizendo *"O Windows protegeu o seu computador"*.
   - Basta clicar no texto **"Mais informações"** e em seguida clicar no botão **"Executar assim mesmo"**.
3. Avance as telas do assistente clicando em **Avançar** e depois em **Instalar**.
4. O instalador cuida de tudo sozinho: prepara o ambiente Node.js de forma totalmente isolada (sem poluir as variáveis de ambiente globais da sua máquina), configura o Microsoft WebView2 e cria o atalho oficial.

#### Passo 3: Abrindo e Utilizando a Layla
1. Dê um duplo clique no atalho **Layla** na sua Área de Trabalho ou procure por **Layla** no Menu Iniciar.
2. **Aviso do Firewall do Windows:** Na primeira execução, o Windows perguntará se deseja permitir que o aplicativo se comunique na rede. Clique em **"Permitir acesso"**.
3. A janela nativa abrirá imediatamente pronta para uso!

---

### 📱 2. Android (via Termux) — Guia Definitivo do Início ao Fim

Você pode transformar qualquer celular ou tablet Android em um servidor completo de inteligência artificial autônoma sem precisar de root e sem danificar o sistema.

> [!CAUTION]
> **ATENÇÃO CRUCIAL:** NUNCA instale o Termux pela Google Play Store! A versão da Play Store foi abandonada e descontinuada em 2020. Se instalada pela Play Store, os comandos falharão com erros de repositório 404.

#### Passo 1: Como Baixar e Instalar o Termux Correto
1. No seu celular Android, abra o navegador (Chrome, Brave, Samsung Internet, etc.).
2. Acesse a página oficial do **F-Droid** do Termux: [f-droid.org/packages/com.termux/](https://f-droid.org/en/packages/com.termux/).
3. Role a página para baixo até a seção de downloads e clique em **"Download APK"** (ou baixe diretamente o instalador APK oficial do [GitHub Releases do Termux](https://github.com/termux/termux-app/releases/latest) escolhendo o arquivo que termina em `arm64-v8a.apk` ou `universal.apk`).
4. Quando o download terminar, toque na notificação para instalar o aplicativo.
5. Se o Android pedir autorização para *"Instalar apps desconhecidos a partir desta fonte"*, clique em **Configurações** e ative a chavinha de permissão. Conclua a instalação.

#### Passo 2: Primeira Configuração do Termux (Comandos Básicos)
1. Abra o aplicativo **Termux** no seu celular. Você verá uma tela preta com letras e um cursor verde piscando.
2. **Permitir acesso ao armazenamento:** Digite o comando abaixo e aperte a tecla **Enter** do teclado virtual:
   ```bash
   termux-setup-storage
   ```
   Uma janela pop-up do Android aparecerá perguntando se permite que o Termux acesse fotos e arquivos. Toque em **Permitir**.
3. **Evitar que o Android feche o app em segundo plano:** Digite o comando:
   ```bash
   termux-wake-lock
   ```
   *(Uma notificação com o ícone do Termux aparecerá na barra de status indicando que o modo de vigília está ativo).*
4. **Atualizar os pacotes do Termux:** Digite o comando abaixo e aperte Enter:
   ```bash
   pkg update -y && pkg upgrade -y
   ```
   *(Se durante a atualização o terminal pausar perguntando `default=N` ou algo similar, basta apertar **Enter** no teclado para manter o padrão).*

#### Passo 3: Instalando a Layla com 1 Único Comando
Agora que o Termux está pronto, copie e cole o comando oficial de instalação em 1 linha e pressione **Enter**:
```bash
curl -fsSL https://raw.githubusercontent.com/prudenciodev/Layla/main/install.sh | bash
```

**O que o instalador faz automaticamente para você:**
- Instala o Node.js LTS, curl e utilitários de descompactação.
- Baixa o pacote oficial otimizado da Layla direto do GitHub.
- Descompacta e cria a estrutura no diretório `~/layla`.
- Cria o comando global `layla` no sistema.
- Configura o Motor Irrestrito v68 em `~/.layla/skills`.
- Inicia o servidor local e abre o navegador do seu celular automaticamente no endereço `http://127.0.0.1:3080`.

#### Passo 4: Criando o Atalho de App no Celular
1. Quando o navegador abrir na interface da Layla em `http://127.0.0.1:3080`, toque no **menu de 3 pontinhos** do Chrome (canto superior direito).
2. Toque na opção **"Adicionar à tela inicial"** ou **"Instalar aplicativo"**.
3. O ícone da Layla aparecerá na grade de aplicativos do seu celular, funcionando como um app nativo em tela cheia!

#### Passo 5: Como Iniciar a Layla no Dia a Dia
Sempre que reiniciar o celular ou fechar o app, para ligar a Layla novamente:
1. Abra o **Termux**.
2. Digite apenas:
   ```bash
   layla
   ```
3. Pronto! A Layla iniciará e o navegador abrirá automaticamente.

---

### 🐧 3. Linux e WSL2 (Ubuntu, Debian, Fedora, Arch Linux, Alpine, etc.)

No Linux, a instalação é instantânea e suporta qualquer distribuição moderna:

#### Passo 1: Abrir o Terminal
Abra o terminal de sua preferência (`Ctrl + Alt + T`).

#### Passo 2: Executar o Instalador Oficial
Cole o comando abaixo e pressione **Enter**:
```bash
curl -fsSL https://raw.githubusercontent.com/prudenciodev/Layla/main/install.sh | bash
```

**Compatibilidade de pacotes automática:**
- O script identifica automaticamente seu gerenciador (`apt`, `dnf`, `pacman`, `zypper` ou `apk`).
- Garante a presença do Node.js 20+ e utilitários de descompactação.
- Cria o executável global `/usr/local/bin/layla` (ou em `~/.local/bin/layla` caso não use `sudo`).
- Lança o navegador padrão (`xdg-open`) conectado à interface web local.

#### Passo 3: Como Iniciar no Dia a Dia
Basta abrir qualquer terminal e digitar:
```bash
layla
```

---

### 🍏 4. iOS (iPhone e iPad) — Acesso e Modo PWA em Tela Cheia

Devido às políticas da Apple, o sistema iOS não permite que servidores Node.js permaneçam rodando livremente em segundo plano. Por isso, a Layla opera no iPhone/iPad através do modo **Web Client PWA**, conectando-se à instância da Layla que está rodando no seu computador, notebook ou servidor.

#### Opção A: Conectando na mesma rede Wi-Fi (Em Casa ou no Trabalho)
1. No seu computador (Windows ou Linux), inicie a Layla normalmente.
2. Na barra superior da interface da Layla no computador, clique no ícone de **"Acesso Celular"**.
3. Uma janela com um **QR Code grande** e o endereço de rede (ex.: `http://192.168.1.100:3080`) será exibida.
4. No seu **iPhone ou iPad**:
   - Abra o app da **Câmera** nativa do iOS.
   - Aponte para o QR Code na tela do computador e toque na notificação amarela que sugere abrir no Safari.
5. O Safari abrirá a interface completa da Layla conectada em tempo real com seu computador.
6. **Transformar em App na Tela Inicial (PWA):**
   - Na barra inferior do Safari, toque no botão de **Compartilhar** (o quadrado com uma seta para cima).
   - Role as opções para baixo e toque em **"Adicionar à Tela de Início"** (*Add to Home Screen*).
   - Toque em **Adicionar** no canto superior direito.
7. O ícone da Layla ficará na tela inicial do seu iPhone e abrirá sem barras do navegador, em tela cheia idêntico a um aplicativo da App Store!

#### Opção B: Acesso Remoto de Qualquer Lugar do Mundo (Túnel Cloudflare)
1. Na tela do computador, dentro do menu de Acesso Celular, certifique-se de que o **"Túnel Seguro Cloudflare"** está ativo.
2. A Layla gerará um link criptografado HTTPS terminado em `.trycloudflare.com`.
3. Abra esse link no Safari do seu iPhone de qualquer lugar do mundo (usando 4G, 5G ou outro Wi-Fi).
4. O pareamento é seguro, com criptografia de ponta a ponta e sem necessidade de abrir portas no roteador de sua casa.

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
