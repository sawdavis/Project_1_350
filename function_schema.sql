-- Description: This file contains the SQL code to create the functions used in the project

-- Create function to calculate the total trade value for a given country and trade type
CREATE FUNCTION total_trade_value(country_iso_code VARCHAR(3), trade_type VARCHAR(10))
RETURNS NUMERIC AS $$
DECLARE
    total_value NUMERIC;
BEGIN
    SELECT SUM(value) INTO total_value
    FROM import_export_transactions
    JOIN countries ON import_export_transactions.country_id = countries.country_id
    WHERE countries.iso_code = country_iso_code AND trade_type = trade_type;
    
    RETURN COALESCE(total_value, 0);
END;
$$ LANGUAGE plpgsql;

-- Create function to calculate the total tariff cost for a given commodity and country
CREATE FUNCTION calculate_tariff(commodity_name VARCHAR, country_iso_code VARCHAR(3))
RETURNS NUMERIC AS $$
DECLARE
    tariff_rate NUMERIC;
BEGIN
    SELECT tariff_rate INTO tariff_rate
    FROM tariffs
    JOIN commodities ON tariffs.commodity_id = commodities.commodity_id
    JOIN countries ON tariffs.country_id = countries.country_id
    WHERE commodities.commodity_name = commodity_name AND countries.iso_code = country_iso_code;
    
    RETURN COALESCE(tariff_rate, 0);
END;
$$ LANGUAGE plpgsql;