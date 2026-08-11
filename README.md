# Realtime Communication Platform

Plataforma de comunicação em tempo real criada para evoluir de um caso de uso real da Smart Eletro Vini para um produto comercial de chat, atendimento, contatos, reuniões, voz, vídeo, lives, comunidades e colaboração.

## Stack inicial

- Elixir
- Phoenix
- Ecto
- PostgreSQL
- Phoenix Channels
- Phoenix Presence
- ExUnit

Etapas posteriores deverão avaliar WebRTC/SFU para mídia e Kotlin + Jetpack Compose para o cliente Android.

## v0.1.0 — Realtime Foundation

Objetivo: dois usuários autenticados devem conseguir participar de uma conversa autorizada, visualizar presença online/offline e trocar mensagens persistentes em tempo real.

Escopo:

1. bootstrap Phoenix/Ecto;
2. PostgreSQL;
3. Accounts/Auth;
4. Conversations;
5. Messages;
6. Phoenix Channels;
7. Phoenix Presence;
8. testes automatizados.

Áudio, vídeo, live, Android, pagamentos e moeda digital não pertencem à v0.1.0.

## Documentação

- `docs/ARCHITECTURE.md`
- `docs/REQUIREMENTS.md`
- `docs/ROADMAP.md`
- `docs/SECURITY.md`
- `docs/AI_CONTEXT.md`
- `CONTRIBUTING.md`

## Desenvolvimento

Fluxo obrigatório:

`Issue -> branch -> implementação -> testes -> code review -> Pull Request -> merge -> release`

Não desenvolver funcionalidades diretamente na `main`.
