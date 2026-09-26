# Layla AI

> **Assistente Autônoma para Modelos de IA, Ferramentas do Sistema, Arquivos e Automação Multiplataforma.**  
> Criado e desenvolvido por **Prudencio Dev** — [Instagram: @prudenciodev](https://instagram.com/prudenciodev) | [YouTube: @prudenciodev](https://youtube.com/@prudenciodev)

---

## 📥 Download Oficial (v1.1.3)

- **[👉 Clique aqui para baixar o instalador oficial v1.1.3 (Layla-Setup.exe)](https://github.com/prudenciodev/Layla/releases/download/v1.1.3/Layla-Setup.exe)**
- **SHA-256 do instalador:** `90343ef91a0b24c06a32c745cf71a998e3e1abfcbdc56371e135ea7e2d28959c`
- **Tamanho:** `7.50 MB`

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

## 🌟 Visão Geral da Ferramenta

**Layla AI** é uma assistente de Inteligência Artificial de última geração, autônoma, modular e privativa, desenvolvida para atuar diretamente no seu ambiente de trabalho ou servidor. Diferente de soluções web fechadas, a Layla tem acesso a ferramentas de linha de comando, manipulador de arquivos, automação de tarefas, navegador embutido e matriz de execução irrestrita.

### 🛡️ Principais Diferenciais:
- **Total Privacidade e Soberania de Dados:** Todos os seus dados, configurações, histórico de conversas e chaves de API permanecem gravados exclusivamente no seu dispositivo (em `~/.layla`). Nenhuma informação é enviada a servidores intermediários proprietários.
- **Motor Irrestrito Nativo v68:** Matriz integrada de 31 módulos com normalização de fixtures sintéticas locais, garantindo execução direta de tarefas complexas de programação, análise, engenharia reversa e scripts sem bloqueios artificiais ou recusas.
- **Suporte Multi-Modelos e Multi-Provedores:** Compatível com qualquer provedor de IA via API padrão (OpenAI, Anthropic Claude, DeepSeek, Google Gemini, Groq, OpenRouter) e modelos locais 100% offline (Ollama e LM Studio).
- **Arquitetura Híbrida Multiplataforma:** Execute na área de trabalho do **Windows 10/11** com aceleração de hardware nativa (WebView2) ou inicie o servidor web para rodar no **Linux**, **WSL** ou no seu celular Android via **Termux** acessando pela rede local.
- **Extensibilidade por Skills:** Crie ou importe habilidades modulares em Markdown (`SKILL.md`) para ensinar novos fluxos e automações para a assistente.

---

## 📦 O que a Ferramenta Instala no seu Sistema?

Para garantir máxima transparência e funcionamento sem exigir configurações manuais complexas:

1. **Runtime Node.js LTS (v24):** No Windows, o instalador isola o Node.js em uma pasta privada interna (`runtime/node-v24.21.0-win-x64`), sem poluir suas variáveis de ambiente globais ou exigir privilégios de administrador.
2. **Microsoft WebView2 Runtime:** Componente de interface de desktop nativa ultra leve (utiliza o motor Chromium nativo do Windows, consumindo muito menos memória que soluções em Electron).
3. **Gerenciador de Pacotes PNPM (v11.7.0):** Instalado no runtime privado para gerenciar as dependências e módulos locais do agente de forma eficiente com deduplicação de disco.
4. **Diretório de Configurações do Usuário (`~/.layla` ou `%USERPROFILE%\.layla`):**
   - `settings.yaml`: Suas preferências de tema e provedores de IA cadastrados.
   - `skills/`: Habilidades instaladas (incluindo `layla-unrestricted` e controle do sistema).
   - `logs/`: Arquivos de diagnóstico e log de inicialização do servidor.
   - `sessions/`: Conversas salvas no seu disco local.

---

## 🚀 Guia de Instalação Passo a Passo

### 1. 🪟 Windows 10 e Windows 11 (64 bits)

#### Opção A — Instalador Oficial Gráfico (.exe) [Recomendado]
1. Acesse os [Releases Oficiais da Layla](https://github.com/prudenciodev/Layla/releases).
2. Baixe o instalador mais recente: `Layla-Setup.exe`.
3. Dê dois cliques em `Layla-Setup.exe` e siga o assistente de instalação:
   - O instalador irá preparar o Node.js privado, WebView2 e todas as dependências automaticamente em segundo plano.
   - Um atalho **Layla** será criado na sua Área de Trabalho e no Menu Iniciar.
4. Ao concluir, abra o atalho **Layla** na Área de Trabalho para iniciar.

#### Opção B — Instalação Manual pelo Terminal (Código Fonte)
Se preferir clonar o repositório de código fonte e rodar diretamente:
```powershell
# 1. Clone o repositório do código fonte
git clone https://github.com/prudenciodev/Layla-cod-fonte.git
cd Layla-cod-fonte

# 2. Execute a instalação de dependências e configuração
.\02_Instalar_Dependencias.bat

# 3. Inicie a assistente
.\03_Iniciar_Layla.bat
```

---

### 2. 🐧 Linux (Ubuntu, Debian, Fedora, Arch, WSL2)

No Linux, a Layla opera com servidor web integrado de alto desempenho, podendo ser acessada pelo seu navegador padrão em `http://127.0.0.1:3080`.

#### Passo a Passo no Terminal:
```bash
# 1. Atualizar repositórios do sistema
sudo apt update && sudo apt upgrade -y

# 2. Instalar Git, cURL e Node.js LTS (v22 ou v24)
sudo apt install -y git curl

# Instalação do Node.js LTS via NodeSource (se ainda não tiver Node 22+)
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash -
sudo apt install -y nodejs

# 3. Instalar o gerenciador pnpm globalmente
sudo npm install -g pnpm@11.7.0

# 4. Clonar o repositório da Layla
git clone https://github.com/prudenciodev/Layla-cod-fonte.git layla
cd layla

# 5. Dar permissão de execução ao script de inicialização
chmod +x iniciar-layla.sh

# 6. Iniciar a Layla
./iniciar-layla.sh
```

Ao iniciar, o script instalará as dependências na primeira execução e abrirá automaticamente o navegador em `http://127.0.0.1:3080`.

---

### 3. 📱 Android (via Termux)

Você pode executar o motor completo da Layla diretamente no seu smartphone ou tablet Android sem precisar de root, utilizando o emulador de terminal **Termux**.

#### Passo a Passo no Termux:
1. Abra o **Termux** (baixe a versão mais recente pelo F-Droid ou GitHub oficial do Termux).
2. Execute os comandos abaixo linha por linha:

```bash
# 1. Atualizar os pacotes do Termux
pkg update -y && pkg upgrade -y

# 2. Instalar Git e Node.js
pkg install -y git nodejs

# 3. Instalar o pnpm globalmente
npm install -g pnpm@11.7.0

# 4. Clonar o repositório da Layla
git clone https://github.com/prudenciodev/Layla-cod-fonte.git layla
cd layla

# 5. Dar permissão de execução ao script de inicialização
chmod +x iniciar-layla.sh

# 6. Iniciar o servidor
./iniciar-layla.sh
```

3. Assim que o terminal exibir:
   ```
   ============================================================================
    Servidor pronto no Termux!
    Abra no navegador do celular: http://127.0.0.1:3080
   ============================================================================
   ```
4. Abra o Chrome, Firefox ou o navegador de sua preferência no celular e acesse:  
   👉 **`http://127.0.0.1:3080`**

---

## ⚙️ Como Configurar o Modelo de Inteligência Artificial

A Layla foi concebida para oferecer liberdade de escolha. Ela não vem amarrada a nenhum modelo proprietário obrigatório. Você pode utilizar o modelo que preferir:

1. Abra a Layla (no aplicativo Desktop no Windows ou pelo navegador em `http://127.0.0.1:3080`).
2. Clique no menu de engrenagem **Configurações** no canto superior ou lateral.
3. Acesse a aba **Modelos de IA** e clique em **Adicionar Provedor**:
   - **Opção 1 — Modelos Gratuitos e Locais (100% Offline):**
     - Baixe o [Ollama](https://ollama.com/) ou [LM Studio](https://lmstudio.ai/).
     - No Ollama: baixe um modelo como `ollama run qwen2.5-coder:7b` ou `deepseek-r1:8b`.
     - Na Layla, selecione **Ollama** (URL padrão `http://localhost:11434/v1`).
   - **Opção 2 — Provedores em Nuvem de Alta Capacidade:**
     - Selecione o provedor desejado: **OpenAI**, **Anthropic**, **DeepSeek**, **Google Gemini**, **Groq** ou **OpenRouter**.
     - Insira a sua Chave de API (`API Key`) e escolha o modelo desejado (ex.: `gpt-4o`, `claude-3-7-sonnet`, `deepseek-chat`, `gemini-2.0-flash`).
4. Clique em **Salvar Provedor**. A Layla estará pronta para conversar e trabalhar!

---

## 🛠️ Comandos de Manutenção (Windows)

- `01_Desinstalar_E_Zerar_Tudo.bat`: Remove completamente a instalação, limpa pastas de dados, histórico e configurações locais para uma instalação do zero.
- `02_Instalar_Dependencias.bat`: Verifica e atualiza o runtime do Node.js, pnpm e pacotes internos.
- `03_Iniciar_Layla.bat`: Inicia o servidor web interno em segundo plano e abre a interface gráfica.
- `04_Criar_Instalador_Atualizado.bat`: Compila os fontes e empacota um novo instalador oficial `.exe`.
- `bin\liberar-portas.ps1`: Encerra processos residuais que estejam ocupando a porta 3080 caso necessário.

---

## 📄 Licença e Créditos

Este projeto é desenvolvido e mantido por **Prudencio Dev**.  
Licenciado sob a licença [MIT](LICENSE).

- **Instagram:** [@prudenciodev](https://instagram.com/prudenciodev)
- **YouTube:** [@prudenciodev](https://youtube.com/@prudenciodev)
- **Repositório Oficial:** [github.com/prudenciodev/Layla](https://github.com/prudenciodev/Layla)
