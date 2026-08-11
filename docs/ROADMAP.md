# Roadmap

O roadmap é incremental. Cada versão deve entregar uma capacidade testável antes da próxima camada de complexidade.

## v0.1.0 — Realtime Foundation

- Phoenix/Ecto/PostgreSQL
- autenticação
- conversas
- mensagens persistentes
- Phoenix Channels
- Phoenix Presence
- testes automatizados

## v0.2.0 — Messaging & Contacts

- contatos
- conversas privadas e grupos
- histórico e paginação
- estados básicos de mensagem
- anexos planejados/validados

## v0.3.0 — Store Support

- widget de atendimento da Smart Eletro Vini
- visitantes/sessões de atendimento
- fila e sala de espera
- painel de atendentes
- transferência e encerramento
- fallback offline

## v0.4.0 — Voice

- fundação WebRTC/SFU
- salas de voz
- mute/unmute
- dispositivos de áudio
- reconexão

## v0.5.0 — Video & Meetings

- câmera
- reuniões
- convites
- compartilhamento de tela
- controles de sala

## v0.6.0 — Live

- página de live da loja
- broadcaster
- espectadores
- chat associado
- moderação

## v0.7.0 — Spaces & Communities

- espaços
- categorias/canais
- roles
- permissões
- moderação

## v0.8.0 — Commercial Foundation

- multi-tenancy amadurecido
- planos e limites
- administração
- políticas de retenção
- recursos premium

## v0.9.0 — Production Hardening

- testes de carga
- observabilidade
- rate limiting
- anti-spam/abuso
- recuperação de falhas
- segurança e privacidade revisadas

## v1.0.0 — Commercial Release

Primeira versão comercial suportada, com escopo definido a partir dos resultados das versões anteriores.

## Android

O cliente Android será desenvolvido em repositório próprio com Kotlin + Jetpack Compose após os contratos essenciais da plataforma estarem estáveis. O primeiro marco deverá interoperar com o backend de chat em tempo real.
