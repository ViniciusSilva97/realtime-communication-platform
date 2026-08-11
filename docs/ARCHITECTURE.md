# Architecture

## Objetivo

Construir uma plataforma de comunicação em tempo real capaz de atender inicialmente a Smart Eletro Vini e evoluir para um produto comercial independente para atendimento, chat, contatos, reuniões, voz, vídeo, lives e comunidades.

## Princípios

1. Começar como monólito modular Phoenix.
2. Separar domínios por responsabilidade, não por infraestrutura prematura.
3. PostgreSQL como fonte de verdade para dados persistentes.
4. Phoenix Channels para eventos bidirecionais em tempo real.
5. Phoenix Presence para estado efêmero de presença.
6. WebRTC/SFU somente quando a fundação de chat estiver estável.
7. Clientes web e Android devem consumir contratos explícitos do backend.
8. Segurança, observabilidade e testes são requisitos de arquitetura.

## Contextos iniciais

- Accounts: identidade, autenticação, sessões e perfis.
- Messaging: conversas, participantes e mensagens.
- Realtime: Channels, Presence e eventos efêmeros.

Contextos futuros:

- Support: atendimento, agentes e fila de espera.
- Contacts: contatos e relacionamentos.
- Meetings: salas, convites e reuniões.
- Media: integração WebRTC/SFU.
- Live: transmissões e audiência.
- Communities: espaços, canais, roles e permissões.
- Wallet: créditos internos e ledger, caso aprovado em etapa futura.

## v0.1.0

Fluxo-alvo:

Cliente Web -> Phoenix Endpoint -> Accounts/Messaging -> Ecto -> PostgreSQL
                         |
                         +-> Phoenix Channels / Presence

Critério arquitetural principal: dois usuários autenticados devem trocar mensagens persistentes em tempo real e visualizar presença online/offline.

## Decisões adiadas

Não escolher antecipadamente provedor SFU, armazenamento de objetos, infraestrutura de produção distribuída, Kubernetes, microserviços ou blockchain. Essas decisões exigirão requisitos e métricas concretas.
