# Layla

Assistente para modelos de IA, arquivos, skills e ferramentas locais.

## Download

[Baixar instalador oficial v1.0.8](https://github.com/prudenciodev/Layla/releases/download/v1.0.8/Layla-Setup.exe)

Windows 10/11 x64. A primeira instalação requer internet e baixa Node.js, WebView2 e dependências. Git, pnpm e conta GitHub não são necessários para instalar. Modelos de IA são configurados pelo usuário após a instalação.

## Instalar e atualizar

1. Baixe e execute o instalador.
2. Aguarde a preparação das dependências.
3. Abra Layla e configure um provedor ou servidor local em Modelos de IA.

Atualizações preservam configurações e conversas. A opção Zerar Tudo apaga esses dados após confirmação.

## Privacidade

O pacote contém preferências iniciais, sem contas, chaves ou histórico do desenvolvedor. Provedores em nuvem e VPS recebem as solicitações e o contexto enviado a eles. Ollama e LM Studio são opcionais; modelos locais dependem do hardware e de espaço adicional.

## Verificação

SHA-256 do instalador: `b8381b698852e449a160a86eaa59bde73b29693b538fce95d8692d6835de4a21`

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


