-- 1. Create a table for different ecological habitats
DROP TABLE IF EXISTS species_observations;
DROP TABLE IF EXISTS habitats;
CREATE TABLE habitats (
    habitat_id SERIAL PRIMARY KEY,
    habitat_name VARCHAR(100) NOT NULL,
    climate_zone VARCHAR(50)
);

-- 2. Create a table for species observations
CREATE TABLE species_observations (
    obs_id SERIAL PRIMARY KEY,
    common_name VARCHAR(100),
    scientific_name VARCHAR(100),
    habitat_id INT REFERENCES habitats(habitat_id),
    population_count INT,
    observation_date DATE DEFAULT CURRENT_DATE
);

-- 3. Insert sample data
INSERT INTO habitats (habitat_name, climate_zone) VALUES 
('Rainforest', 'Tropical'),
('Savannah', 'Semi-arid');

INSERT INTO species_observations (common_name, scientific_name, habitat_id, population_count) VALUES 
('African Elephant', 'Loxodonta africana', 2, 15),
('Harpy Eagle', 'Harpia harpyja', 1, 4);

-- 4. A professional query to join the data
SELECT h.habitat_name, s.common_name, s.population_count
FROM species_observations s
JOIN habitats h ON s.habitat_id = h.habitat_id
WHERE s.population_count > 5;

