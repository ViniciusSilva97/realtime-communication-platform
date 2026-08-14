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

## v0.1.0 — Realtime Foundation

A primeira versão valida autenticação, conversas autorizadas, persistência, Channels e Presence. Áudio, vídeo, live, Android, pagamentos e moeda digital não pertencem à v0.1.0.

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

## Desenvolvimento local com Docker

### Pré-requisitos

- Docker Desktop
- Docker Compose
- Git

Não é necessário instalar Elixir, Erlang ou PostgreSQL diretamente no host.

### Preparar o ambiente

Copie o arquivo de exemplo e mantenha o arquivo `.env` somente no ambiente local:

```powershell
Copy-Item .env.example .env
```

No Linux ou macOS:

```bash
cp .env.example .env
```

Os valores do exemplo são exclusivos para desenvolvimento local e não devem ser reutilizados em produção.

### Criar banco e executar testes

```bash
docker compose build
docker compose run --rm app mix deps.get
docker compose up -d db
docker compose run --rm app mix ecto.create
docker compose run --rm app mix ecto.migrate
docker compose run --rm app mix test
```

### Iniciar a aplicação

```bash
docker compose up app
```

Acesse <http://localhost:4000>.

### Encerrar o ambiente

Preserve os dados locais:

```bash
docker compose down
```

Remova também o banco e os volumes locais:

```bash
docker compose down -v
```

O comando com `-v` apaga dados locais de desenvolvimento e deve ser usado conscientemente.
