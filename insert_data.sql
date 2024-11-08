INSERT INTO countries (country_name, iso_code)
VALUES
('United States', 'USA'),
('China', 'CHN'),
('Mexico', 'MEX'),
('Canada', 'CAN'),
('Germany', 'DEU'),
('Japan', 'JPN'),
('South Korea', 'KOR'),
('India', 'IND'),
('Brazil', 'BRA'),
('United Kingdom', 'GBR'),
('France', 'FRA'),
('Italy', 'ITA');

INSERT INTO commodities (commodity_name, hs_code, description)
VALUES
('Soybeans', '1201', 'Soybeans, whether or not broken'),
('Cars', '8703', 'Motor vehicles designed for the transport of persons'),
('Mobile Phones', '8517', 'Telephones for cellular networks or for other wireless networks'),
('Wheat', '1001', 'Wheat and meslin, unmilled'),
('Aircraft', '8802', 'Aircraft, spacecraft, and parts thereof'),
('Petroleum Oil', '2709', 'Petroleum oils and oils obtained from bituminous minerals'),
('Gold', '7108', 'Gold, unwrought or in semi-manufactured forms'),
('Coffee', '0901', 'Coffee, whether or not roasted or decaffeinated'),
('Cotton', '5201', 'Cotton, not carded or combed'),
('Pharmaceuticals', '3004', 'Medicaments consisting of mixed or unmixed products for therapeutic or prophylactic purposes');

INSERT INTO transportation_methods (method_name)
VALUES
('Sea'),
('Air'),
('Land'),
('Rail'),
('Pipeline');

INSERT INTO ports (port_name, country_id, port_type)
VALUES
('Port of Los Angeles', (SELECT country_id FROM countries WHERE iso_code = 'USA'), 'sea'),
('Port of Shanghai', (SELECT country_id FROM countries WHERE iso_code = 'CHN'), 'sea'),
('Port of Vancouver', (SELECT country_id FROM countries WHERE iso_code = 'CAN'), 'sea'),
('Port of Rotterdam', (SELECT country_id FROM countries WHERE iso_code = 'NLD'), 'sea'),
('Port of Hong Kong', (SELECT country_id FROM countries WHERE iso_code = 'HKG'), 'sea'),
('JFK International Airport', (SELECT country_id FROM countries WHERE iso_code = 'USA'), 'air'),
('Changi Airport', (SELECT country_id FROM countries WHERE iso_code = 'SGP'), 'air'),
('Heathrow Airport', (SELECT country_id FROM countries WHERE iso_code = 'GBR'), 'air');

-- Import Transactions
INSERT INTO import_export_transactions (trade_type, commodity_id, country_id, port_id, transportation_id, value, transaction_date)
VALUES
('import', (SELECT commodity_id FROM commodities WHERE hs_code = '8517'), 
 (SELECT country_id FROM countries WHERE iso_code = 'CHN'),
 (SELECT port_id FROM ports WHERE port_name = 'Port of Los Angeles'),
 (SELECT method_id FROM transportation_methods WHERE method_name = 'Sea'),
 5000000.00, '2023-07-15'),

('import', (SELECT commodity_id FROM commodities WHERE hs_code = '8802'), 
 (SELECT country_id FROM countries WHERE iso_code = 'JPN'),
 (SELECT port_id FROM ports WHERE port_name = 'JFK International Airport'),
 (SELECT method_id FROM transportation_methods WHERE method_name = 'Air'),
 3000000.00, '2023-08-10'),

('import', (SELECT commodity_id FROM commodities WHERE hs_code = '2709'), 
 (SELECT country_id FROM countries WHERE iso_code = 'BRA'),
 (SELECT port_id FROM ports WHERE port_name = 'Port of Rotterdam'),
 (SELECT method_id FROM transportation_methods WHERE method_name = 'Sea'),
 2000000.00, '2023-09-05');

-- Export Transactions
INSERT INTO import_export_transactions (trade_type, commodity_id, country_id, port_id, transportation_id, value, transaction_date)
VALUES
('export', (SELECT commodity_id FROM commodities WHERE hs_code = '1201'), 
 (SELECT country_id FROM countries WHERE iso_code = 'MEX'),
 (SELECT port_id FROM ports WHERE port_name = 'Port of Los Angeles'),
 (SELECT method_id FROM transportation_methods WHERE method_name = 'Sea'),
 2000000.00, '2023-07-20'),

('export', (SELECT commodity_id FROM commodities WHERE hs_code = '3004'), 
 (SELECT country_id FROM countries WHERE iso_code = 'IND'),
 (SELECT port_id FROM ports WHERE port_name = 'Port of Los Angeles'),
 (SELECT method_id FROM transportation_methods WHERE method_name = 'Air'),
 1500000.00, '2023-08-25'),

('export', (SELECT commodity_id FROM commodities WHERE hs_code = '0901'), 
 (SELECT country_id FROM countries WHERE iso_code = 'FRA'),
 (SELECT port_id FROM ports WHERE port_name = 'Port of Los Angeles'),
 (SELECT method_id FROM transportation_methods WHERE method_name = 'Sea'),
 500000.00, '2023-09-15');

INSERT INTO tariffs (commodity_id, country_id, tariff_rate)
VALUES
((SELECT commodity_id FROM commodities WHERE hs_code = '1201'), (SELECT country_id FROM countries WHERE iso_code = 'CHN'), 10.00),
((SELECT commodity_id FROM commodities WHERE hs_code = '8703'), (SELECT country_id FROM countries WHERE iso_code = 'CAN'), 5.00),
((SELECT commodity_id FROM commodities WHERE hs_code = '1001'), (SELECT country_id FROM countries WHERE iso_code = 'BRA'), 12.50),
((SELECT commodity_id FROM commodities WHERE hs_code = '8802'), (SELECT country_id FROM countries WHERE iso_code = 'USA'), 7.50),
((SELECT commodity_id FROM commodities WHERE hs_code = '2709'), (SELECT country_id FROM countries WHERE iso_code = 'IND'), 5.00),
((SELECT commodity_id FROM commodities WHERE hs_code = '7108'), (SELECT country_id FROM countries WHERE iso_code = 'GBR'), 15.00);

INSERT INTO regulatory_agencies (agency_name, agency_code)
VALUES
('Food and Drug Administration', 'FDA'),
('United States Department of Agriculture', 'USDA'),
('Environmental Protection Agency', 'EPA'),
('Customs and Border Protection', 'CBP'),
('Centers for Disease Control and Prevention', 'CDC'),
('European Medicines Agency', 'EMA'),
('Japanese Customs', 'JC'),
('Brazilian Ministry of Agriculture', 'MAPA');

