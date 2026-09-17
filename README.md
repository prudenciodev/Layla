# Layla

Assistente para modelos de IA, arquivos, skills e ferramentas locais.

## Download

[Baixar instalador oficial v1.0.9](https://github.com/prudenciodev/Layla/releases/download/v1.0.9/Layla-Setup.exe)

Windows 10/11 x64. A primeira instalação requer internet e baixa Node.js, WebView2 e dependências. Git, pnpm e conta GitHub não são necessários para instalar. Modelos de IA são configurados pelo usuário após a instalação.

## Instalar e atualizar

1. Baixe e execute o instalador.
2. Aguarde a preparação das dependências.
3. Abra Layla e configure um provedor ou servidor local em Modelos de IA.

Atualizações preservam configurações e conversas. A opção Zerar Tudo apaga esses dados após confirmação.

## Privacidade

O pacote contém preferências iniciais, sem contas, chaves ou histórico do desenvolvedor. Provedores em nuvem e VPS recebem as solicitações e o contexto enviado a eles. Ollama e LM Studio são opcionais; modelos locais dependem do hardware e de espaço adicional.

## Verificação

SHA-256 do instalador: `a45a842f413e0f2be1873354e0d49d3fc988dc325e961adb1b96c91a0d64d1aa`

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


