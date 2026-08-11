# Security Baseline

Este documento registra requisitos mínimos e não substitui revisão especializada antes de produção comercial.

## Princípios

- negar acesso por padrão;
- autorizar recursos no servidor;
- menor privilégio;
- não armazenar senhas em texto puro;
- não versionar segredos;
- validar entradas em fronteiras do sistema;
- registrar eventos úteis sem vazar dados sensíveis;
- dependências devem ser atualizáveis e auditáveis.

## Autenticação e sessão

Usar mecanismos consolidados do ecossistema Phoenix. Tokens/sessões devem possuir finalidade explícita e expiração adequada. Alterações futuras de autenticação exigem testes de autorização e sessão.

## Messaging

Participar de um Channel não implica autorização automática para ler ou escrever em uma conversa. O servidor deve verificar membership/permissões antes de join, leitura e escrita.

## Realtime

- validar payloads;
- limitar tamanho de mensagens;
- preparar rate limiting antes da exposição pública;
- tratar reconexão sem duplicar operações persistentes;
- não confiar em identificadores de usuário enviados pelo cliente quando a identidade puder vir da sessão autenticada.

## Privacidade e LGPD

Antes do uso comercial devem ser definidos: finalidade dos dados, retenção, exclusão, exportação quando aplicável, tratamento de logs, consentimentos necessários e contratos com subprocessadores.

## Voz, vídeo e live

Quando a camada de mídia for adicionada, TURN/STUN, tokens de sala, gravação, moderação e retenção terão threat model próprio antes de produção.

## Incidentes

O projeto deverá ganhar processo formal de resposta a incidentes antes da v1.0.0.
