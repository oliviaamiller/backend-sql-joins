-- find all address_id of addresses in the city of Dundee
-- use INNER JOIN FROM address on to city

DROP TABLE IF EXISTS city CASCADE;
DROP TABLE IF EXISTS address CASCADE;

CREATE TABLE city (
    city_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    city TEXT NOT NULL,
);

CREATE TABLE IF EXISTS address (
    address_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    city_id BIGINT
    FOREIGN KEY (city_id) REFERENCES city(city_id)
);
