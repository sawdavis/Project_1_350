INSERT INTO countries (country_name, iso_code)
VALUES
('United States', 'USA'),
('China', 'CHN'),
('Mexico', 'MEX'),
('Canada', 'CAN'),
('Germany', 'DEU');

INSERT INTO commodities (commodity_name, hs_code, description)
VALUES
('Soybeans', '1201', 'Soybeans, whether or not broken'),
('Cars', '8703', 'Motor vehicles designed for the transport of persons'),
('Mobile Phones', '8517', 'Telephones for cellular networks or for other wireless networks');

INSERT INTO transportation_methods (method_name)
VALUES
('Sea'),
('Air'),
('Land');

INSERT INTO ports (port_name, country_id, port_type)
VALUES
('Port of Los Angeles', (SELECT country_id FROM countries WHERE iso_code = 'USA'), 'sea'),
('Port of Shanghai', (SELECT country_id FROM countries WHERE iso_code = 'CHN'), 'sea'),
('Port of Vancouver', (SELECT country_id FROM countries WHERE iso_code = 'CAN'), 'sea');

INSERT INTO import_export_transactions (trade_type, commodity_id, country_id, port_id, transportation_id, value, transaction_date)
VALUES
('import', (SELECT commodity_id FROM commodities WHERE hs_code = '8517'), 
 (SELECT country_id FROM countries WHERE iso_code = 'CHN'),
 (SELECT port_id FROM ports WHERE port_name = 'Port of Los Angeles'),
 (SELECT method_id FROM transportation_methods WHERE method_name = 'Sea'),
 5000000.00, '2023-07-15');

INSERT INTO import_export_transactions (trade_type, commodity_id, country_id, port_id, transportation_id, value, transaction_date)
VALUES
('export', (SELECT commodity_id FROM commodities WHERE hs_code = '1201'), 
 (SELECT country_id FROM countries WHERE iso_code = 'MEX'),
 (SELECT port_id FROM ports WHERE port_name = 'Port of Los Angeles'),
 (SELECT method_id FROM transportation_methods WHERE method_name = 'Sea'),
 2000000.00, '2023-07-20');

INSERT INTO tariffs (commodity_id, country_id, tariff_rate)
VALUES
((SELECT commodity_id FROM commodities WHERE hs_code = '1201'), (SELECT country_id FROM countries WHERE iso_code = 'CHN'), 10.00),
((SELECT commodity_id FROM commodities WHERE hs_code = '8703'), (SELECT country_id FROM countries WHERE iso_code = 'CAN'), 5.00);

INSERT INTO regulatory_agencies (agency_name, agency_code)
VALUES
('Food and Drug Administration', 'FDA'),
('United States Department of Agriculture', 'USDA');
