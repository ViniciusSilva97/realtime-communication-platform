# Contributing

## Fluxo

Toda mudança funcional deve possuir uma issue clara.

1. selecionar/criar issue;
2. criar branch a partir da `main` atualizada;
3. implementar somente o escopo necessário;
4. adicionar/atualizar testes;
5. executar validações locais;
6. revisar documentação afetada;
7. abrir Pull Request;
8. realizar code review;
9. corrigir observações;
10. mesclar somente após aprovação e checks aplicáveis.

## Branches

Sugestões:

- `feat/<descricao>`
- `fix/<descricao>`
- `docs/<descricao>`
- `refactor/<descricao>`
- `test/<descricao>`
- `chore/<descricao>`

## Commits

Preferir mensagens pequenas e descritivas, por exemplo:

- `feat: add conversation membership`
- `fix: reject unauthorized channel join`
- `docs: record realtime event contract`
- `test: cover message authorization`

## Pull Requests

O PR deve explicar problema, solução, testes, riscos e documentação afetada. Não misturar refactors grandes e funcionalidade nova sem necessidade.

## Segurança

Nunca incluir senhas, tokens, chaves privadas, arquivos `.env` reais ou dados pessoais de produção no repositório.

## Definição de pronto

Uma mudança está pronta quando atende à issue, possui testes adequados, não introduz regressões conhecidas, respeita os limites arquiteturais e atualiza documentação quando necessário.
