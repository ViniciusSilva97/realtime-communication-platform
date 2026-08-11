# AI Context

## Propósito

Este arquivo fornece contexto durável para assistentes de IA e desenvolvedores que retomarem o projeto.

## Visão do produto

A plataforma começa como infraestrutura de comunicação em tempo real para a Smart Eletro Vini: chat de atendimento no lugar do botão principal de WhatsApp, fila/sala de espera e posteriormente uma página de live. Em paralelo, o núcleo deverá suportar um produto independente para web e Android com chat, contatos, reuniões, voz, vídeo, espaços e comunidades.

O objetivo não é copiar visualmente o Discord. Discord e plataformas similares servem como referências de categoria. O produto deve encontrar diferenciação em atendimento, comunicação empresarial, comunidades e integrações.

## Decisões atuais

- Backend: Elixir + Phoenix.
- Persistência: PostgreSQL via Ecto.
- Realtime: Phoenix Channels + Phoenix Presence.
- Arquitetura inicial: monólito modular.
- Android futuro: Kotlin + Jetpack Compose em repositório separado.
- Voz/vídeo/live: WebRTC com arquitetura SFU a ser decidida posteriormente.
- Créditos/moeda interna: ideia futura; não pertence ao escopo inicial.
- Blockchain: não é requisito.

## Método de desenvolvimento

Trabalhar incrementalmente:

Issue -> branch -> implementação -> testes -> code review -> PR -> merge -> release.

Evitar funcionalidades diretamente na main. Registrar decisões arquiteturais relevantes em documentação/ADR.

## Estado inicial

A v0.1.0 é Realtime Foundation. Seu objetivo é comprovar autenticação, conversas, persistência, Channels e Presence. Não adicionar voz/vídeo antes dessa fundação estar validada.

## Diretriz para IA

Antes de implementar uma mudança:

1. ler README e documentação relacionada;
2. localizar a issue correspondente;
3. verificar contratos e testes existentes;
4. evitar ampliar escopo sem necessidade;
5. documentar decisões que afetem arquitetura, segurança ou interoperabilidade;
6. explicar alterações de forma compreensível tanto para iniciantes quanto para desenvolvedores experientes.
