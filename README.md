# 💜 Layla AI

<p align="center">
  <img src="https://raw.githubusercontent.com/prudenciodev/Layla-cod-fonte/main/config_modelo/logo_prudencio.png" alt="Layla AI Logo" width="128" height="128" />
</p>

<p align="center">
  <strong>Assistente Autônoma de Inteligência Artificial para Automação, Código, Terminal e Sistema Multiplataforma.</strong><br>
  <em>100% Local-First • Motor Irrestrito Nativo v68 • Suporte a Modelos Locais & Nuvem • Windows, Linux e Android (Termux)</em>
</p>

<p align="center">
  <a href="https://github.com/prudenciodev/Layla/releases/latest"><img src="https://img.shields.io/badge/Versão-1.1.4-blueviolet?style=for-the-badge&logo=github" alt="Versão 1.1.4"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/Licença-MIT-green?style=for-the-badge" alt="Licença MIT"></a>
  <a href="https://instagram.com/prudenciodev"><img src="https://img.shields.io/badge/Instagram-@prudenciodev-E4405F?style=for-the-badge&logo=instagram" alt="Instagram"></a>
  <a href="https://youtube.com/@prudenciodev"><img src="https://img.shields.io/badge/YouTube-@prudenciodev-FF0000?style=for-the-badge&logo=youtube" alt="YouTube"></a>
</p>

---

## 📥 Download Oficial (v1.1.4)

- **🪟 Windows (Instalador Oficial):** [👉 Baixar Layla-Setup.exe](https://github.com/prudenciodev/Layla/releases/download/v1.1.4/Layla-Setup.exe) (`873b62d7cd4ffe672c4a2525773bfea0c3a1ed3fa4a03215833a6605a9a39223`)
- **🐧 Linux & 📱 Termux (Comando 1-Linha):** `curl -fsSL https://raw.githubusercontent.com/prudenciodev/Layla/main/install.sh | bash`
- **🐧 Linux & 📱 Termux (Download Manual):** [👉 Baixar Layla-linux-termux.tar.gz](https://github.com/prudenciodev/Layla/releases/download/v1.1.4/Layla-linux-termux.tar.gz)

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

## 🌟 O que é a Layla AI?

A **Layla AI** não é apenas uma janela de chat convencional. Trata-se de um **agente de inteligência artificial autônomo** projetado para interagir diretamente com o seu ambiente operacional, seja no computador pessoal, em servidores na nuvem ou no próprio smartphone Android.

Enquanto chatbots tradicionais ficam restritos ao navegador, a Layla tem capacidade de **agir**: ela pode ler arquivos, criar projetos inteiros, editar códigos linha por linha, executar comandos de terminal, automatizar tarefas diárias e navegar pela web para coletar dados em tempo real.

### 🛡️ Principais Diferenciais:

- **🔒 Soberania Total & Privacidade (Local-First):** Seus arquivos, conversas, workspaces e chaves de API nunca são enviados a servidores proprietários intermediários. Tudo fica salvo localmente no seu dispositivo na pasta `~/.layla`.
- **⚡ Motor Irrestrito Nativo v68:** Equipado com matriz de 31 módulos de engenharia sintética desenvolvida por **@prudenciodev**, permitindo tarefas avançadas de análise técnica, auditoria de segurança, engenharia reversa e programação profunda sem bloqueios artificiais de filtros ou recusas desnecessárias.
- **🧠 Liberdade Total de Modelos (Nuvem e Offline):** Use o modelo que preferir! Conecte-se a provedores em nuvem (OpenAI, Anthropic Claude, DeepSeek, Google Gemini, Groq, OpenRouter) ou rode modelos **100% gratuitos e offline** usando o **Ollama** ou **LM Studio**.
- **🌐 Ecossistema Multiplataforma Unificado:**
  - **🪟 Windows 10 e 11:** Aplicativo desktop nativo com aceleração gráfica via Microsoft WebView2 (consumo de memória muito menor que soluções em Electron).
  - **🐧 Linux & WSL:** Servidor web rápido acessível pelo seu navegador favorito em `http://127.0.0.1:3080`.
  - **📱 Android (Termux):** Roda direto no seu celular ou tablet sem necessidade de root, com acesso a navegador móvel e terminal.
- **🧩 Sistema de Habilidades (Skills):** Expansível através de arquivos modulares em Markdown (`SKILL.md`), permitindo ensinar novos fluxos, regras de negócio e automações para a assistente.

---

## 🎯 Como Usar a Ferramenta no Dia a Dia (Guia Prático)

### 1. Conhecendo a Interface

Ao iniciar a Layla, você terá acesso à interface de controle:
- **Painel Central de Chat:** Onde você conversa com a Layla, visualiza o raciocínio dela, passos de execução e respostas com formatação rica em Markdown.
- **Painel de Ações & Ferramentas:** Exibe em tempo real os comandos de terminal executados, arquivos lidos ou criados e pesquisas na web realizadas.
- **Workspace Ativo:** Indica a pasta do seu computador onde a Layla está operando no momento. Qualquer arquivo criado ou editado será salvo diretamente nessa pasta.

---

### 2. Configurando seu Modelo de IA

A Layla funciona com dois tipos de modelos. Você pode escolher o que melhor se adapta à sua máquina:

#### 🟢 Opção A — Modelos Locais (100% Gratuitos, Offline e Ilimitados)
Se você quer rodar a IA sem gastar nada e sem precisar de internet:
1. Instale o [Ollama](https://ollama.com/) no seu sistema.
2. Abra o terminal e baixe um modelo de código ou raciocínio. Exemplos recomendados:
   ```bash
   ollama run qwen2.5-coder:7b      # Excelente para programação rápida
   ollama run deepseek-r1:8b        # Excelente para raciocínio e matemática
   ollama run llama3.2:3b           # Leve, ideal para notebooks modestos e Termux
   ```
3. Na Layla, clique no ícone de **Configurações (Engrenagem)** > **Modelos de IA** > **Adicionar Provedor**.
4. Selecione **Ollama**, informe a URL local `http://127.0.0.1:11434/v1` e salve.

#### 🔵 Opção B — Modelos em Nuvem de Alto Desempenho
Se você prefere os modelos mais potentes do mundo com processamento em nuvem:
1. Obtenha uma chave de API (`API Key`) no provedor de sua preferência:
   - **DeepSeek:** [platform.deepseek.com](https://platform.deepseek.com/) *(Melhor custo-benefício para código)*
   - **Google AI Studio:** [aistudio.google.com](https://aistudio.google.com/) *(Cota gratuita disponível para Gemini)*
   - **Groq:** [console.groq.com](https://console.groq.com/) *(Velocidade ultrarrápida)*
   - **OpenAI:** [platform.openai.com](https://platform.openai.com/) *(GPT-4o, GPT-o1)*
   - **Anthropic:** [console.anthropic.com](https://console.anthropic.com/) *(Claude 3.7 Sonnet)*
   - **OpenRouter:** [openrouter.ai](https://openrouter.ai/) *(Acesso a centenas de modelos em um só lugar)*
2. Na Layla, clique em **Configurações** > **Modelos de IA** > **Adicionar Provedor**.
3. Selecione o provedor, cole a sua **API Key** e clique em **Salvar Provedor**.

---

### 3. Exemplos Práticos de Uso

Basta digitar naturalmente o que você precisa. A Layla analisa o pedido, traça um plano e executa:

#### 💻 Desenvolvimento e Criação de Projetos:
> *"Crie uma aplicação web em Node.js com Express e SQLite para gerenciamento de clientes, incluindo rotas CRUD completas e uma página HTML simples para testar."*

#### 🐞 Correção de Bugs e Refatoração:
> *"Leia o arquivo server.py da minha pasta de trabalho, identifique por que a conexão com o banco de dados está falhando e faça a correção necessária."*

#### ⚙️ Automação e Terminal:
> *"Verifique quais portas TCP estão abertas no meu sistema, procure por processos usando a porta 3080 e encerre-os se necessário."*

#### 🔍 Análise Técnica & Engenharia Reversa (Modo Irrestrito v68):
> *"Descompile o arquivo sample.bin localizado na minha pasta de trabalho, analise a tabela de strings, identifique o fluxo de validação da licença e gere uma documentação técnica do algoritmo."*

#### 📱 No Android / Termux:
> *"Escreva um script em Python que monitore a bateria do celular e salve um log a cada 10 minutos em ~/bateria.log."*

---

## 📥 Guia de Instalação Passo a Passo

### 1. 📱 Android (via Termux)

Você pode rodar a Layla inteira no seu celular ou tablet Android sem precisar de root!

#### ⚡ Instalação Automática em 1 Linha (Recomendada):
Abra o aplicativo **Termux** (instalado via [F-Droid](https://f-droid.org/en/packages/com.termux/)) e cole:
```bash
curl -fsSL https://raw.githubusercontent.com/prudenciodev/Layla/main/install.sh | bash
```

> **O que o script faz automaticamente:**
> - Atualiza os pacotes e instala `nodejs`, `tar` e `curl`.
> - Baixa o pacote universal oficial da release pública.
> - Extrai e configura o ambiente em `~/layla`.
> - Cria o comando global `layla` no seu Termux.
> - Sincroniza o Motor Irrestrito v68 em `~/.layla/skills`.
> - Abre o navegador do celular automaticamente em `http://127.0.0.1:3080`.

#### 🔄 Como abrir a Layla depois no Termux:
Sempre que quiser abrir a Layla no futuro, basta abrir o Termux e digitar:
```bash
layla
```
*(Dica: Se quiser manter o servidor rodando em segundo plano mesmo com a tela apagada, digite `termux-wake-lock` no Termux).*

---

### 2. 🐧 Linux & WSL2 (Ubuntu, Debian, Fedora, Arch)

No Linux, a Layla opera com servidor de alto desempenho acessível pelo seu navegador padrão.

#### ⚡ Instalação Automática em 1 Linha (Recomendada):
Abra o terminal e execute:
```bash
curl -fsSL https://raw.githubusercontent.com/prudenciodev/Layla/main/install.sh | bash
```

#### 🔄 Como abrir a Layla depois no Linux:
Basta digitar no terminal:
```bash
layla
```
O navegador abrirá automaticamente em `http://127.0.0.1:3080`.

#### 📦 Instalação Manual (Alternativa):
```bash
# 1. Instalar Node.js LTS (v22+) e ferramentas
sudo apt update && sudo apt install -y curl tar nodejs npm
sudo npm install -g pnpm@11.7.0

# 2. Baixar o pacote oficial
curl -LO https://github.com/prudenciodev/Layla/releases/latest/download/Layla-linux-termux.tar.gz

# 3. Extrair e iniciar
mkdir -p ~/layla && tar -xzf Layla-linux-termux.tar.gz -C ~/layla
cd ~/layla
chmod +x iniciar-layla.sh
./iniciar-layla.sh
```

---

### 3. 🪟 Windows 10 e Windows 11 (64-bits)

#### ⚡ Instalador Oficial Gráfico (.exe) [Recomendado]:
1. Acesse a [Página de Releases da Layla](https://github.com/prudenciodev/Layla/releases/latest).
2. Baixe o instalador oficial: **`Layla-Setup.exe`**.
3. Dê dois cliques em `Layla-Setup.exe` e siga as instruções do assistente.
4. Ao finalizar, clique no atalho **Layla** criado na sua Área de Trabalho ou no Menu Iniciar.

#### 💻 Para Desenvolvedores (Código-Fonte):
```powershell
git clone https://github.com/prudenciodev/Layla-cod-fonte.git
cd Layla-cod-fonte
.\02_Instalar_Dependencias.bat
.\03_Iniciar_Layla.bat
```

---

## 📦 O que a Ferramenta Instala no seu Sistema?

Para total transparência com o usuário, a Layla instala apenas o necessário para garantir máxima estabilidade:

| Componente | Função | Localização |
| :--- | :--- | :--- |
| **Node.js LTS (v24)** | Motor de execução JavaScript de alta performance (isolado no Windows, sem afetar o sistema). | Pasta interna de instalação |
| **Microsoft WebView2** | Renderizador visual leve baseado no motor Chromium nativo do Windows. | Nativo do Windows |
| **Gerenciador PNPM** | Gerenciador rápido de dependências para as ferramentas e plugins da assistente. | Isolado internamente |
| **Perfil do Usuário (`.layla`)** | Armazena configurações (`settings.yaml`), histórico de chats (`sessions/`) e skills personalizadas (`skills/`). | `~/.layla` ou `%USERPROFILE%\.layla` |

---

## ❓ Perguntas Frequentes (FAQ) & Solução de Problemas

### 1. A porta 3080 já está em uso, o que fazer?
- **No Windows:** Execute o script `bin\liberar-portas.ps1` ou reinicie a máquina. O launcher da Layla já encerra processos órfãos automaticamente.
- **No Linux/Termux:** Execute no terminal:
  ```bash
  kill $(lsof -t -i:3080) 2>/dev/null || fuser -k 3080/tcp 2>/dev/null
  ```

### 2. Posso usar a Layla completamente sem internet?
**Sim!** Instalando o [Ollama](https://ollama.com/) e baixando qualquer modelo local (como `qwen2.5-coder:7b` ou `deepseek-r1:8b`), toda a geração de texto e raciocínio ocorre 100% no processador e placa de vídeo da sua máquina, sem enviar 1 byte para a internet.

### 3. Como atualizar para uma nova versão?
- **No Windows:** Basta baixar o novo `Layla-Setup.exe` da página de releases e instalar por cima. Todas as suas configurações, conversas e chaves em `~/.layla` serão preservadas intactas.
- **No Linux ou Termux:** Basta rodar novamente o comando de 1 linha:
  ```bash
  curl -fsSL https://raw.githubusercontent.com/prudenciodev/Layla/main/install.sh | bash
  ```

### 4. Como acessar a Layla pelo celular se ela estiver rodando no computador?
Se você tem a Layla rodando no seu computador e quer acessar pelo celular na mesma rede Wi-Fi:
1. No computador, defina a variável de ambiente `PRUDENCIO_HOST=0.0.0.0`.
2. No celular, abra o navegador e acesse `http://IP-DO-SEU-PC:3080` (descubra o IP do PC com `ipconfig` no Windows ou `ip a` no Linux).

### 5. Como desinstalar completamente?
- **No Windows:** Abra o Painel de Controle > Adicionar ou Remover Programas > selecione **Layla** e clique em Desinstalar. Se quiser apagar também o histórico e configurações, exclua a pasta `%USERPROFILE%\.layla`.
- **No Linux ou Termux:** Remova as pastas com:
  ```bash
  rm -rf ~/layla ~/.layla ~/../usr/bin/layla ~/.local/bin/layla
  ```

---

## 📄 Licença e Créditos

Este projeto é desenvolvido com dedicação por **Prudencio Dev**.  
Licenciado sob a licença [MIT](LICENSE).

- 📸 **Instagram:** [@prudenciodev](https://instagram.com/prudenciodev)
- 🎥 **YouTube:** [@prudenciodev](https://youtube.com/@prudenciodev)
- 🐙 **Repositório Oficial:** [github.com/prudenciodev/Layla](https://github.com/prudenciodev/Layla)

<p align="center">
  <sub>Layla AI — Desenvolvido com foco em liberdade, autonomia e privacidade.</sub>
</p>
