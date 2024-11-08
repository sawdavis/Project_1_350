# PostgreSQL Database for Import/Export of the United States

**Overview:**
A database related to U.S. import/export data, which will include key information about the trade of goods and services in and out of the country. The schema will reflect real-world scenarios with real and hypothetical data, ensuring it captures essential aspects of import/export, such as commodities, countries involved, transportation, customs procedures, and regulatory agencies.

## Database Design

### Core Tables:

`countries:` Stores details of the countries involved in the trade.

`commodities:` Represents the goods being imported/exported.

`import_export_transactions:` Records individual transactions, including trade type (import/export), value, and dates.

`transportation_methods:` Records the type of transportation (sea, air, land, etc.).

`ports:` Stores information on U.S. and foreign ports of entry/exit.

`customs_procedures:` Logs customs-related details for each transaction.

`tariffs:` Stores tariff rates for commodities by country.

`regulatory_agencies:` Lists U.S. agencies that oversee imports/exports (e.g., USDA, FDA).

### Additional Schema Objects:

**Functions & Procedures:** Procedures for calculating total import/export value, determining tariff rates, etc.

`total_trade_value ():` Function to Calculate Total Trade Value for a Specific Country.

`calculate_tariff ():` Function to Apply Tariff to a Commodity from a Specific Country.

## Sample Data (Real and Hypothetical)
# Sample Data Documentation

This document provides an overview of the sample data included for the U.S. Import/Export Database. This sample data is designed to simulate a realistic dataset of international trade activities between the United States and various countries, involving multiple commodities, transportation methods, ports, and regulatory requirements.

---

## Table of Contents

- [Countries Table](#countries-table)
- [Commodities Table](#commodities-table)
- [Transportation Methods Table](#transportation-methods-table)
- [Ports Table](#ports-table)
- [Import/Export Transactions Table](#importexport-transactions-table)
- [Customs Procedures Table](#customs-procedures-table)
- [Tariffs Table](#tariffs-table)
- [Regulatory Agencies Table](#regulatory-agencies-table)
- [Transaction Agencies Table](#transaction-agencies-table)

---

## Countries Table

The `countries` table lists the countries involved in trade transactions. It includes key trading partners of the United States, such as:

- **China (CHN)**: One of the largest sources of U.S. imports, especially for electronics, machinery, and consumer goods.
- **Mexico (MEX)** and **Canada (CAN)**: Major U.S. trading partners in North America.
- **Germany (DEU)**, **Japan (JPN)**, and **United Kingdom (GBR)**: Important U.S. trade partners for machinery, vehicles, and pharmaceuticals.

This selection reflects countries with whom the U.S. has high trade volumes, based on data from the U.S. Census Bureau and International Trade Administration.

---

## Commodities Table

The sample commodities reflect commonly traded goods in real U.S. trade data:

- **Soybeans**: A major U.S. agricultural export, particularly to China and Mexico.
- **Cars (Motor Vehicles)**: Common in U.S. trade with Canada, Mexico, and Germany.
- **Mobile Phones**: Electronics are heavily imported from China.
- **Pharmaceutical Products**: Imported primarily from European countries like Germany.
- **Crude Oil**: Both imported and exported, especially with Canada and Mexico.

Each commodity is assigned an HS (Harmonized System) code, mirroring real-world classifications used in global trade.

---

## Transportation Methods Table

The `transportation_methods` table includes major trade transportation methods:

- **Sea**: Used for bulk goods and heavy commodities, particularly with countries like China.
- **Air**: High-value or perishable items, such as pharmaceuticals.
- **Land**: Common for U.S. trade with Canada and Mexico.
- **Rail**: Used within North America for bulk shipments, especially agriculture and automobiles.

These methods align with transportation types recorded in real trade documentation.

---

## Ports Table

The `ports` table includes major U.S. and foreign ports frequently used in international trade:

- **Port of Los Angeles** (USA): One of the busiest U.S. ports, especially for imports from Asia.
- **Port of Laredo** (USA): A major land port on the U.S.-Mexico border.
- **Port of Vancouver** (Canada), **Port of Shanghai** (China), and **Port of Hamburg** (Germany): Key foreign ports for U.S. trade.

These ports reflect actual U.S. and international trade routes documented by U.S. Customs data.

---

## Import/Export Transactions Table

Sample transactions reflect realistic trade flows:

1. **Import of Mobile Phones from China to Los Angeles by Sea**: Represents the large volume of electronics from China.
2. **Export of Soybeans to Mexico via Land**: A common agricultural export to Mexico.
3. **Import of Pharmaceuticals from Germany by Air**: Represents high-value pharmaceuticals from Europe.
4. **Export of Cars to Canada via Land**: High volumes of automotive trade between the U.S. and Canada.

These transactions use realistic trade values and routes, reflecting typical transaction values for these goods.

---

## Customs Procedures Table

The `customs_procedures` table includes sample customs checks reflecting real U.S. procedures:

- **FCC Compliance Check**: Required for electronics to meet standards.
- **USDA Inspection**: Required for agricultural goods to ensure quality.
- **FDA Approval**: Needed for imported pharmaceuticals.
- **DOT Emissions Check**: Required for vehicles to meet environmental standards.

These procedures align with standard U.S. customs checks conducted by agencies on imported goods.

---

## Tariffs Table

Sample tariffs reflect common rates for U.S. imports:

1. **Soybeans from China (10% tariff)**: Tariffs on agricultural imports.
2. **Cars from Canada (5% tariff)**: Tariffs on automotive imports.
3. **Pharmaceuticals from Germany (12.5% tariff)**: Tariffs on pharmaceuticals.
4. **Mobile Phones from China (2% tariff)**: Low tariffs on high-demand consumer electronics.

These tariffs align with rates documented by the U.S. International Trade Commission (USITC).

---

## Regulatory Agencies Table

The sample regulatory agencies reflect real U.S. government agencies involved in trade oversight:

- **FDA (Food and Drug Administration)**: Oversees pharmaceuticals and other health-related products.
- **USDA (United States Department of Agriculture)**: Oversees agricultural imports/exports.
- **FCC (Federal Communications Commission)**: Regulates electronic and communication devices.
- **DOT (Department of Transportation)**: Responsible for vehicle safety and emissions standards.

These agencies mirror those typically involved in U.S. import/export regulatory requirements.

---

## Transaction Agencies Table

The `transaction_agencies` table links transactions with regulatory agencies, simulating compliance checks:

1. **FCC Compliance for Mobile Phones**: A typical requirement for electronic imports.
2. **USDA Inspection for Soybeans**: Standard for agricultural exports.
3. **FDA Approval for Pharmaceuticals**: Required for pharmaceutical imports.
4. **DOT Inspection for Vehicle Imports**: Standard for automotive imports to ensure compliance.

These mappings reflect the actual oversight required by U.S. regulatory agencies, following U.S. Customs regulations and agency guidelines.

---

## Summary

This sample data captures key elements of real U.S. trade data, including common trading partners, commodities, tariffs, and regulatory requirements, making it useful for testing and simulating U.S. import/export data analysis and regulatory compliance scenarios.

This document provides an overview of the sample data included for the U.S. Import/Export Database. This sample data is designed to simulate a realistic dataset of international trade activities between the United States and various countries, involving multiple commodities, transportation methods, ports, and regulatory requirements.

> **Note:** This sample data was inspired by real-world U.S. trade trends, with reference to data and insights available on the [ITA Monthly Trade Infographic](https://www.trade.gov/data-visualization/ita-monthly-trade-infographic). This resource provides detailed visualizations and statistics on U.S. import and export activities, trade partners, and product categories.

---
