-- Create the schema for countries
CREATE TABLE countries (
    country_id SERIAL PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL,
    iso_code CHAR(3) NOT NULL UNIQUE
);

-- Create the schema for commodities
CREATE TABLE commodities (
    commodity_id SERIAL PRIMARY KEY,
    commodity_name VARCHAR(255) NOT NULL,
    hs_code VARCHAR(10) NOT NULL,
    description TEXT
);

-- Create the schema for transportation methods
CREATE TABLE transportation_methods (
    method_id SERIAL PRIMARY KEY,
    method_name VARCHAR(50) NOT NULL
);

-- Create the schema for ports
CREATE TABLE ports (
    port_id SERIAL PRIMARY KEY,
    port_name VARCHAR(255) NOT NULL,
    country_id INT REFERENCES countries(country_id),
    port_type VARCHAR(20)
);

-- Create the schema for import/export transactions
CREATE TABLE import_export_transactions (
    transaction_id SERIAL PRIMARY KEY,
    trade_type VARCHAR(10) NOT NULL,
    commodity_id INT REFERENCES commodities(commodity_id),
    country_id INT REFERENCES countries(country_id),
    port_id INT REFERENCES ports(port_id),
    transportation_id INT REFERENCES transportation_methods(method_id),
    value NUMERIC(15, 2) NOT NULL,
    transaction_date DATE NOT NULL
);

-- Create the schema for customs procedures
CREATE TABLE customs_procedures (
    procedure_id SERIAL PRIMARY KEY,
    transaction_id INT REFERENCES import_export_transactions(transaction_id),
    procedure_description TEXT NOT NULL,
    procedure_date DATE NOT NULL
);

-- Create the schema for tariffs
CREATE TABLE tariffs (
    tariff_id SERIAL PRIMARY KEY,
    commodity_id INT REFERENCES commodities(commodity_id),
    country_id INT REFERENCES countries(country_id),
    tariff_rate NUMERIC(5, 2) NOT NULL
);

-- Create the schema for regulatory agencies
CREATE TABLE regulatory_agencies (
    agency_id SERIAL PRIMARY KEY,
    agency_name VARCHAR(255) NOT NULL,
    agency_code CHAR(4) NOT NULL
);

-- Create a junction table to connect transactions with regulatory agencies
CREATE TABLE transaction_agencies (
    transaction_id INT REFERENCES import_export_transactions(transaction_id),
    agency_id INT REFERENCES regulatory_agencies(agency_id),
    PRIMARY KEY (transaction_id, agency_id)
);