-- sql/schema.sql
-- This file creates the database tables for the Macro Rates SQL Lab.

PRAGMA foreign_keys = ON;

CREATE TABLE countries (
    country_id INTEGER PRIMARY KEY,
    country_name TEXT NOT NULL,
    currency_code TEXT NOT NULL
);

CREATE TABLE series (
    series_id INTEGER PRIMARY KEY,
    country_id INTEGER NOT NULL,
    series_code TEXT NOT NULL UNIQUE,
    series_name TEXT NOT NULL,
    asset_class TEXT NOT NULL,
    frequency TEXT NOT NULL,
    unit TEXT NOT NULL,

    FOREIGN KEY (country_id) REFERENCES countries(country_id)
);

CREATE TABLE observations (
    observation_id INTEGER PRIMARY KEY,
    series_id INTEGER NOT NULL,
    observation_date TEXT NOT NULL,
    value REAL NOT NULL,

    FOREIGN KEY (series_id) REFERENCES series(series_id),
    UNIQUE (series_id, observation_date)
);

CREATE TABLE macro_events (
    event_id INTEGER PRIMARY KEY,
    country_id INTEGER NOT NULL,
    event_date TEXT NOT NULL,
    event_type TEXT NOT NULL,
    event_name TEXT NOT NULL,
    description TEXT,

    FOREIGN KEY (country_id) REFERENCES countries(country_id)
);
