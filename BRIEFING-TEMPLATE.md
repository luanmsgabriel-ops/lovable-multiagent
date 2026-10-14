# Template de Briefing — Construção Autônoma de Startup

> Cole este briefing no Lovable com todas as skills instaladas.
> O sistema vai construir o produto autonomamente do início ao deploy.

---

## Prompt de ativação

```
Quero construir uma startup completa de forma autônoma.

Ative o loop-controller com o seguinte briefing e não pare até o produto estar deployado e funcionando. Corrija bugs automaticamente quando encontrar. Evolua o produto quando identificar oportunidades de alto impacto e baixo esforço. Me mostre o status a cada épico concluído.

---

BRIEFING:

PRODUTO: [nome do produto]
DESCRIÇÃO: [1-2 linhas do que faz]

PROBLEMA: [dor específica que resolve]

USUÁRIO: [quem usa — seja específico: "designer freelancer que atende 3-5 clientes simultâneos", não "qualquer pessoa"]

FEATURES CORE (máximo 7):
1. [feature]
2. [feature]
3. [feature]
4. [feature]
5. [feature]

MONETIZAÇÃO:
- Plano Free: [o que inclui]
- Plano Pro (R$ XX/mês): [o que inclui]
- Plano Business (R$ XX/mês): [o que inclui]

DIFERENCIAIS vs concorrentes:
- [diferencial 1]
- [diferencial 2]

RESTRIÇÕES (se houver):
- [ex: sem integração com X, deve funcionar offline, etc.]

---

Comece pelo strategic-advisor validando o briefing. Só prossiga para construção após validação.
```

---

## O que vai acontecer

### Ciclo 1 — Validação estratégica
`strategic-advisor` questiona o briefing, identifica gaps, propõe melhorias. Só libera para construção quando o briefing está sólido.

### Ciclo 2 — Planejamento
`project-manager` divide em 7 épicos com histórias e tarefas. Define ordem de execução.

### Ciclo 3 a N — Construção
Para cada épico, o `loop-controller` orquestra:

**Épico 1 — Fundação**
`architect` → `database-architect` → `auth-engineer`

**Épico 2 — Core product**
`api-designer` → `backend-developer` → `frontend-developer`

**Épico 3 — Experiência**
`onboarding-engineer` → `product-copywriter`

**Épico 4 — Monetização**
`billing-engineer` → `frontend-developer`

**Épico 5 — Crescimento**
`landing-page-engineer` (ou `cinematic-lp`) → `product-copywriter`

**Épico 6 — Qualidade**
`bug-detector` → `critic` → `improver`

**Épico 7 — Deploy**
`deployment-engineer` → declara produto pronto

### A cada tarefa
`critic` avalia → se reprovado, `improver` corrige → `bug-detector` varre → `opportunity-scanner` identifica melhorias → `memory-manager` registra

### Ao final de cada épico
`opportunity-scanner` roda e executa automaticamente oportunidades de alto impacto e baixo esforço.

---

## Exemplo de briefing preenchido

```
PRODUTO: TaskFlow
DESCRIÇÃO: Gerenciador de projetos para freelancers que centraliza clientes, projetos e faturas num lugar só.

PROBLEMA: Freelancers usam 4-5 ferramentas diferentes para gerenciar clientes, projetos, tempo e faturas. Isso causa perda de informação, atraso em cobranças e dificuldade de entender o que está rendendo.

USUÁRIO: Freelancer brasileiro de design, desenvolvimento ou marketing, atende 3-8 clientes simultâneos, fatura entre R$5k e R$25k/mês, não quer complexidade de ERP.

FEATURES CORE:
1. Dashboard com visão de todos os projetos e status
2. Timer de horas por projeto com pausa e retomada
3. Geração de fatura em PDF com horas registradas
4. Portal do cliente para aprovação de entregas
5. Relatório de receita por cliente e período

MONETIZAÇÃO:
- Plano Free: até 2 clientes, sem geração de fatura
- Plano Pro (R$ 49/mês): clientes ilimitados, faturas, relatórios
- Plano Business (R$ 99/mês): múltiplos usuários, white-label no portal do cliente

DIFERENCIAIS:
- Único com portal do cliente integrado sem plano extra
- Timer que vira fatura com um clique
- Interface em português, focada no mercado BR
```

---

## Skills necessárias — instale antes de rodar

```bash
# No terminal do Lovable:
git clone https://github.com/[seu-usuario]/lovable-multiagent.git .lovable-agents
```

Depois peça ao Lovable para instalar todas as skills da pasta `.lovable-agents/skills/`.
