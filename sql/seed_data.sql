-- sql/seed_data.sql
-- This file inserts sample data into the database.

INSERT INTO countries (country_id, country_name, currency_code)
VALUES
    (1, 'United States', 'USD');

INSERT INTO series (
    series_id,
    country_id,
    series_code,
    series_name,
    asset_class,
    frequency,
    unit
)
VALUES
    (1, 1, 'DGS2', 'US 2Y Treasury Yield', 'rates', 'daily', 'percent'),
    (2, 1, 'DGS10', 'US 10Y Treasury Yield', 'rates', 'daily', 'percent'),
    (3, 1, 'DGS30', 'US 30Y Treasury Yield', 'rates', 'daily', 'percent'),
    (4, 1, 'DFF', 'Effective Fed Funds Rate', 'policy', 'daily', 'percent');

INSERT INTO observations (series_id, observation_date, value)
VALUES
    -- 2Y Treasury yield
    (1, '2024-01-02', 4.33),
    (1, '2024-01-03', 4.31),
    (1, '2024-01-04', 4.38),
    (1, '2024-01-05', 4.40),

    -- 10Y Treasury yield
    (2, '2024-01-02', 3.95),
    (2, '2024-01-03', 3.92),
    (2, '2024-01-04', 3.99),
    (2, '2024-01-05', 4.05),

    -- 30Y Treasury yield
    (3, '2024-01-02', 4.08),
    (3, '2024-01-03', 4.05),
    (3, '2024-01-04', 4.13),
    (3, '2024-01-05', 4.20),

    -- Effective Fed Funds Rate
    (4, '2024-01-02', 5.33),
    (4, '2024-01-03', 5.33),
    (4, '2024-01-04', 5.33),
    (4, '2024-01-05', 5.33);

INSERT INTO macro_events (
    event_id,
    country_id,
    event_date,
    event_type,
    event_name,
    description
)
VALUES
    (1, 1, '2024-01-03', 'FOMC', 'FOMC Minutes', 'Release of Federal Reserve meeting minutes.'),
    (2, 1, '2024-01-05', 'Employment', 'US Jobs Report', 'Monthly US labor market report.');
