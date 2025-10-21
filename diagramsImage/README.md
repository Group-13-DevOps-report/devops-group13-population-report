# 🧭 UML Diagrams – DevOps Group 13 Population Reporting System

This folder contains all **UML design diagrams** created for **Code Review 1 (CR1)**  
of the *SET09803 – Software Engineering Methods / DevOps Coursework (Group 13)*.

---

## 📘 Overview

The Population Reporting System is a data analytics application that retrieves and reports
population information from the MySQL **`world`** dataset.  
It supports multiple levels of data aggregation (world, continent, region, country, city, and capital).

These UML diagrams visualize the system design for all **32 functional requirements**
(issues defined in the team’s GitHub project).

---

## 📂 Folder Structure


---

## 🧩 Diagram Summary

| Diagram Type | Purpose |
|---------------|----------|
| **Use-Case** | Shows *what* the system does – derived from 32 GitHub issues. |
| **Activity** | Describes *how* users and the system perform tasks step by step. |
| **Sequence** | Shows *who talks to who* – the interaction between user, system, and database. |
| **Class** | Describes *what data exists* and how classes are related. |

---

## 🧱 Domain Model

The class diagram (`domain-model.puml`) represents the database structure and
Java Data Access Objects (DAO):

- **Country**, **City**, **CountryLanguage** tables → core of `world.sql`
- **Database** class → connects to MySQL and retrieves data
- **CountryDTO**, **CityDTO** → represent output records for reports

---

## 🧠 Design Notes

- Actors: *Data Analyst*, *Project Owner*, *Executive User*, *City Planner*
- 32 use cases mapped to UML diagrams (see `TRACEABILITY.md`)
- Built using **PlantUML** plugin in IntelliJ IDEA
- All diagrams render correctly under `/diagrams/` folder

---

## 🧩 Contributors

| Name                  | Role |
|-----------------------|------|
| Htet Wai Yan Lin      | UML Designer / Diagram Documentation |
| Group 13 Team Members | Requirements & Code Implementation |

---

## 🏁 Next Steps

- For **CR2**, add sequence diagrams for implemented SQL queries.
- Update the class diagram if new DAO methods are added.
- Maintain traceability with updated issue references.
