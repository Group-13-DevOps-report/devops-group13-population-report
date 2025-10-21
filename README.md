# 🌍 Population Reporting System — Code Review 1 (CR1)

[![CI master](https://github.com/Group-13-DevOps-report/devops-group13-population-report/actions/workflows/ci.yml/badge.svg?branch=master)](https://github.com/Group-13-DevOps-report/devops-group13-population-report/actions)
[![CI develop](https://github.com/Group-13-DevOps-report/devops-group13-population-report/actions/workflows/ci.yml/badge.svg?branch=develop)](https://github.com/Group-13-DevOps-report/devops-group13-population-report/actions)
[![Release](https://img.shields.io/github/v/release/Group-13-DevOps-report/devops-group13-population-report?display_name=tag)](https://github.com/Group-13-DevOps-report/devops-group13-population-report/releases)
[![License: Apache-2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)
![Java](https://img.shields.io/badge/Java-24-informational)
![Maven](https://img.shields.io/badge/Maven-Wrapper-informational)
![Docker](https://img.shields.io/badge/Docker-multi--stage-informational)

> **Module:** SET09803 DevOps — Group 13  
> **Repository:** `Group-13-DevOps-report/devops-group13-population-report`  
> **Assessed branch:** `master` (this README is kept in sync with `develop`)

---

## ✅ CR1 Deliverables (Checklist)

- [x] **Project skeleton**: Java (JDK 24), Maven Wrapper, package `com.napier.sem`
- [x] **CI pipeline**: GitHub Actions `ci.yml` builds & tests on `master`, `develop`, and PRs
- [x] **Containerisation**: Multi-stage **Dockerfile**; **docker-compose.yml** with **MySQL seed** (`world` DB)
- [x] **Quality gates**: Checkstyle (Google), CodeQL workflow, CODEOWNERS
- [x] **Templates**: Issue templates (Bug/Task/User Story) and PR template
- [x] **Docs/Diagrams**: Use cases & diagrams in `/docs` and `/diagramsImage`
- [x] **GitFlow**: `master`, `develop`, `feature/*`, `release/*` (no hotfix used in CR1)
- [x] **README with badges** + **Evidence table** (below)

---

## 🧪 Build & Test

```bash
# Clean build and run tests with Maven Wrapper
./mvnw -B -ntp clean verify
