# 🧪 QA Automation Strategy

_Last updated: {{YYYY-MM-DD}} by {{Author}}_

---

## 1. 🎯 Objectives

Define how test automation supports our QA goals:

- Improve test coverage without increasing manual effort
- Enable fast, confident releases via CI pipelines
- Reduce regression bugs
- Catch edge cases earlier in the SDLC

---

## 2. 🛠️ Automation Stack

| Layer | Tool | Language | Maintainer | Notes |
|-------|------|----------|------------|-------|
| Unit | Jest / JUnit | JS / Java | Devs | Run on every commit |
| API | REST Assured / Postman | Java / JSON | QA | Validates key service endpoints |
| UI | Cypress / Playwright | JavaScript / TypeScript | QA | Covers happy paths & critical flows |
| CI/CD | Bitbucket Pipelines / GitHub Actions | YAML | DevOps | Triggers on push, PR, tag |
| Reports | Allure / HTML / JUnit | n/a | QA | Linked in pipeline artifacts |

---

## 3. 🤖 What We Automate

### ✅ Automated
- Critical happy-path workflows (e.g., login, checkout)
- Smoke tests on every build
- API contracts and auth flows
- Sanity checks post-deployment

### ❌ Manual (for now)
- Full visual regressions
- Exploratory testing
- Tests needing complex external system mocking

---

## 4. 📂 Project Structure (Git)

```bash
test/
├── unit/                # Developer unit tests
├── api/
│   ├── login-api-tests.yml
│   └── user-profile-tests.yml
├── features/            # Cucumber .feature files
│   └── login.feature
└── ui/
    ├── login.spec.ts
    └── cart.spec.ts
