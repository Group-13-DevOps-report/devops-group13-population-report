# Use Cases (full text – seed)

**Primary Actor:** Analyst / Stakeholder  
**Preconditions:** App connected to provided World SQL DB; data available.  
**Postconditions:** Report printed to console or file; errors logged.

---

## UC-01 View Country Reports
**Goal:** List countries by population or top-N for world/continent/region.  
**Main Success Scenario:**
1. User selects **Country Reports**.
2. System asks for scope: world / continent / region.
3. (Optional) Ask for **N** (blank = all).
4. Query DB, sort by population **desc**.
5. Render **Country report**: Code, Name, Continent, Region, Population, Capital.
6. Success.  
**Extensions:** Invalid scope/N ? re-prompt; DB error ? message + log.

## UC-02 View City Reports
**Goal:** List cities by population or top-N for world/continent/region/country/district.  
**Main Success Scenario:** As UC-01, scope includes **country** and **district**; render **City report**: Name, Country, District, Population.

## UC-03 View Capital City Reports
**Goal:** List capital cities by population or top-N for world/continent/region.  
**Main Success Scenario:** As UC-01; render **Capital city report**: Name, Country, Population.

## UC-04 View Population Aggregates
**Goal:** Show totals and city/non-city (%): per continent/region/country; and single totals for world/continent/region/country/district/city.  
**Main Success Scenario:** User picks aggregate mode; system validates entity; runs grouped aggregates; renders **Population report** (Name, Total, In cities %, Not in cities %).

## UC-05 View Language Statistics
**Goal:** Totals and % of world for Chinese, English, Hindi, Spanish, Arabic (desc).  
**Main Success Scenario:** Query totals; compute % of world; render sorted table.

## Non-functional seeds
- Performance: typical query =2s on dev laptop.  
- CI: build + unit tests green on push.  
- Usability: clear prompts; CSV export (stretch).