# Requirements

## Produto

A plataforma deve nascer de um caso de uso real: comunicação da Smart Eletro Vini. O núcleo, porém, não deve depender da identidade visual ou das regras específicas da loja.

## Requisitos funcionais — v0.1.0

- RF-001: usuário pode criar conta e autenticar-se.
- RF-002: usuário autenticado pode encerrar sua sessão.
- RF-003: usuários podem participar de uma conversa autorizada.
- RF-004: participante pode enviar mensagem de texto.
- RF-005: mensagens devem ser persistidas.
- RF-006: participantes conectados devem receber novas mensagens em tempo real.
- RF-007: sistema deve representar presença online/offline.
- RF-008: acesso a conversas deve ser autorizado no servidor.

## Requisitos não funcionais iniciais

- RNF-001: operações persistentes críticas devem ser cobertas por testes.
- RNF-002: autorização não pode depender exclusivamente do cliente.
- RNF-003: dados sensíveis e segredos não devem ser versionados.
- RNF-004: migrations devem ser reproduzíveis.
- RNF-005: eventos realtime devem ter contratos identificáveis e documentados.
- RNF-006: logs não devem expor credenciais, tokens ou conteúdo sensível desnecessário.
- RNF-007: mudanças devem passar por issue, branch e pull request.

## Fora do escopo — v0.1.0

- voz e vídeo
- live streaming
- pagamentos
- moeda digital
- marketplace
- bots/agentes de IA
- aplicativo Android
- federação entre servidores

## Critério de conclusão da v0.1.0

Em ambiente de desenvolvimento, dois usuários autenticados em sessões distintas conseguem entrar em uma conversa autorizada, visualizar presença e trocar mensagens que chegam em tempo real e permanecem disponíveis após recarregar a aplicação.
