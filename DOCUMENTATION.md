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