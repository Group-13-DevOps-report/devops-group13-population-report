# 🧩 CR1 Traceability Matrix – Issues ↔ UML Diagrams

This table maps the 32 user stories (GitHub issues) from the *Population Reporting System*
to their corresponding UML design diagrams.  
Each issue corresponds to one or more **use cases**, **activity**, **sequence**, or **class** diagrams.

---

| UC # | Issue Title (short) | Use-Case Diagram(s) | Activity Diagram | Sequence Diagram | Notes |
|------|----------------------|---------------------|------------------|------------------|-------|
| UC01 | All countries (world) | uc-overview, uc-countries | act-UC01-all-countries | seq-UC01-all-countries | Basic report of all countries |
| UC02 | Countries by continent | uc-overview, uc-countries |  |  | Filtered by continent |
| UC03 | Countries by region | uc-overview, uc-countries |  |  | Filtered by region |
| UC04 | Top N countries (world) | uc-overview, uc-countries |  | seq-UC04-top-n-countries | User provides N |
| UC05 | Top N countries (continent) | uc-overview, uc-countries |  |  |  |
| UC06 | Top N countries (region) | uc-overview, uc-countries |  |  |  |
| UC07 | All cities (world) | uc-overview, uc-cities | act-UC07-all-cities | seq-UC07-all-cities | Joined city + country tables |
| UC08 | Cities by continent | uc-overview, uc-cities |  |  |  |
| UC09 | Cities by region | uc-overview, uc-cities |  |  |  |
| UC10 | Cities by country | uc-overview, uc-cities |  |  |  |
| UC11 | Cities by district | uc-overview, uc-cities |  |  |  |
| UC12 | Top N cities (world) | uc-overview, uc-cities |  |  |  |
| UC13 | Top N cities (continent) | uc-overview, uc-cities |  |  |  |
| UC14 | Top N cities (region) | uc-overview, uc-cities |  |  |  |
| UC15 | Top N cities (country) | uc-overview, uc-cities |  |  |  |
| UC16 | Top N cities (district) | uc-overview, uc-cities |  |  |  |
| UC17 | All capitals (world) | uc-overview, uc-capitals | act-UC17-all-capitals |  | Country.Capital → City.ID |
| UC18 | Capitals by continent | uc-overview, uc-capitals |  |  |  |
| UC19 | Capitals by region | uc-overview, uc-capitals |  |  |  |
| UC20 | Top N capitals (world) | uc-overview, uc-capitals |  |  | Similar to UC04 |
| UC21 | Top N capitals (continent) | uc-overview, uc-capitals |  |  |  |
| UC22 | Top N capitals (region) | uc-overview, uc-capitals |  |  |  |
| UC23 | Continent: total / in / not in cities | uc-overview, uc-populations | act-UC23-pop-by-continent-split |  | Aggregated population |
| UC24 | Region: total / in / not in cities | uc-overview, uc-populations |  |  |  |
| UC25 | Country: total / in / not in cities | uc-overview, uc-populations |  |  |  |
| UC26 | World population | uc-overview, uc-populations |  |  |  |
| UC27 | Population by continent | uc-overview, uc-populations |  |  |  |
| UC28 | Population by region | uc-overview, uc-populations |  |  |  |
| UC29 | Population by country | uc-overview, uc-populations |  |  |  |
| UC30 | Population by district | uc-overview, uc-populations |  |  |  |
| UC31 | Population by city | uc-overview, uc-populations |  |  |  |
| UC32 | People who speak 5 key languages | uc-overview, uc-languages |  |  |  |

---

## 🧭 Summary

- **Use-Case Diagrams (6 total)** cover all 32 issues
- **Activity Diagrams (4 total)** illustrate core workflows
- **Sequence Diagrams (3 total)** show interaction with the database
- **Class Diagram (1 total)** represents the domain model

---

## 🏁 Notes for Review

- Each issue from GitHub maps to at least one UML element.
- The design reflects both data structure (`world.sql`) and logic flow.
- Sequence diagrams correspond to Java DAO methods implemented in later stages.
- This matrix ensures *full traceability* between requirements and design.
