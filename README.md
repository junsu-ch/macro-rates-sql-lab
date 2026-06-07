# Macro Rates SQL Lab

A SQL-based project for analyzing macroeconomic data, Treasury yields, FX rates, and yield curve regimes.

## Project Objective

The goal of this project is to build a small relational database for macro and rates market data, then use SQL to answer practical market questions.

This project focuses on:

- Treasury yield curves
- Central bank policy rates
- Macroeconomic indicators
- FX rates
- Yield curve regimes
- Market reactions around macro events

## Why This Project Matters

Rates and FX desks work with large amounts of time-series market data.

SQL is useful because it allows analysts and traders to retrieve, join, clean, and analyze data efficiently.

Example questions this project will answer:

- How has the 2s10s Treasury curve changed over time?
- When was the yield curve inverted?
- What were the largest daily moves in 2Y and 10Y yields?
- How can we classify bull steepening, bear steepening, bull flattening, and bear flattening?
- How do policy rates compare with short-end government bond yields?
- How do FX rates move when rate differentials change?

## Skills Demonstrated

This project demonstrates:

- SQL database design
- Table creation
- Primary keys
- Foreign keys
- Joins
- Common Table Expressions
- Window functions
- Time-series analysis
- Macro/rates market understanding

## Repository Structure

macro-rates-sql-lab/
├── README.md
├── .gitignore
├── sql/
│   ├── schema.sql
│   └── seed_data.sql
├── queries/
│   ├── 01_yield_curve.sql
│   ├── 02_curve_inversion.sql
│   ├── 03_daily_yield_moves.sql
│   └── 04_curve_regime.sql
├── data/
│   ├── raw/
│   └── processed/
├── notes/
│   └── financial_concepts.md
└── outputs/

## Current Status

The first version uses sample Treasury yield data to calculate the 2s10s yield curve spread.

Later versions will add real market data from public sources.
