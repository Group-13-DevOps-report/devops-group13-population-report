## devops-group13-population-report

# ====================== WRITE & COMMIT "Code Review 1" README ======================
# This will create a high-quality README.md for CR1, push it to develop,
# then merge to master (as assessed in the rubric).

# ---- Vars (edit $ROOT if needed) ----
$OWNER  = "Group-13-DevOps-report"
$REPO   = "devops-group13-population-report"
$REMOTE = "https://github.com/$OWNER/$REPO.git"
$ROOT   = "D:\CourseWork1Devops\devops-group13-population-report"

# ---- Go to repo and ensure remote ----
Set-Location $ROOT
if (git remote get-url origin 2>$null) { git remote set-url origin $REMOTE } else { git remote add origin $REMOTE }
git fetch --all --prune

# ---- Ensure develop exists and is current (features base) ----
if (git show-ref --verify --quiet refs/heads/develop) { git switch develop }
elseif (git ls-remote --heads origin develop) { git switch -c develop origin/develop }
else { git switch -c develop master }
git pull --ff-only origin develop 2>$null

# ---- Compute dynamic links ----
$ownerLower = $OWNER.ToLower()
$badge_ci_master   = "https://github.com/$OWNER/$REPO/actions/workflows/ci.yml/badge.svg?branch=master"
$badge_ci_develop  = "https://github.com/$OWNER/$REPO/actions/workflows/ci.yml/badge.svg?branch=develop"
$badge_codeql      = "https://github.com/$OWNER/$REPO/actions/workflows/codeql.yml/badge.svg"
$badge_release     = "https://img.shields.io/github/v/release/$OWNER/$REPO?display_name=tag"
$badge_license     = "https://img.shields.io/badge/License-Apache_2.0-blue.svg"
$badge_java        = "https://img.shields.io/badge/Java-24-informational"
$badge_maven       = "https://img.shields.io/badge/Maven-Wrapper-informational"
$badge_docker      = "https://img.shields.io/badge/Docker-multi--stage-informational"
$link_actions      = "https://github.com/$OWNER/$REPO/actions"
$link_codeql       = "https://github.com/$OWNER/$REPO/actions/workflows/codeql.yml"
$link_releases     = "https://github.com/$OWNER/$REPO/releases"
$link_board        = "https://github.com/$OWNER/$REPO/projects"
$link_issues       = "https://github.com/$OWNER/$REPO/issues"
$link_ghcr_pkg     = "https://github.com/orgs/$OWNER/packages?repo_name=$REPO"
$docker_image      = "ghcr.io/$ownerLower/$REPO:latest"

# ---- Compose README.md for Code Review 1 ----
$readme = @"
# 🌍 Population Reporting System — Code Review 1 (CR1)

[![CI master]($badge_ci_master)]($link_actions)
[![CI develop]($badge_ci_develop)]($link_actions)
[![CodeQL]($badge_codeql)]($link_codeql)
[![Release]($badge_release)]($link_releases)
[![License: Apache-2.0]($badge_license)](LICENSE)
![Java]($badge_java) ![Maven]($badge_maven) ![Docker]($badge_docker)

> **Module:** SET09803 DevOps — Group 13  
> **Repository:** \`$OWNER/$REPO\`  
> **Assessed branch:** \`master\` (this README also lives on \`develop\`)

---

## ✅ What CR1 Delivers (Checklist)

- [x] **Project skeleton**: Java (JDK 24), Maven Wrapper, package \`com.napier.sem\`
- [x] **CI pipeline**: GitHub Actions \`ci.yml\` builds & tests on \`master\`, \`develop\`, PRs
- [x] **Containerisation**: Multi-stage **Dockerfile** builds runnable image; **docker-compose.yml** with **MySQL seed** (\`world-db\`)
- [x] **Quality gates**: Checkstyle config (\`google_checks.xml\`), CodeQL workflow, CODEOWNERS
- [x] **Backlog & Templates**: Issue templates (Bug/Task/User Story), PR template
- [x] **Docs**: Use cases & user stories in \`/docs\`, diagrams in \`/diagramsImage\`
- [x] **GitFlow**: \`master\`, \`develop\`; feature/release branches used during CR1
- [x] **README with badges** + **Evidence table** (below)

---

## 🧪 Build, Test & Coverage

```bash
# Clean build + tests (uses Maven Wrapper)
./mvnw -B -ntp clean verify
