-- queries/01_yield_curve.sql
-- This query calculates the 2s10s Treasury curve spread.

SELECT
    obs_2y.observation_date,
    obs_2y.value AS yield_2y,
    obs_10y.value AS yield_10y,
    obs_10y.value - obs_2y.value AS twos_tens_spread
FROM observations AS obs_2y
JOIN observations AS obs_10y
    ON obs_2y.observation_date = obs_10y.observation_date
JOIN series AS series_2y
    ON obs_2y.series_id = series_2y.series_id
JOIN series AS series_10y
    ON obs_10y.series_id = series_10y.series_id
WHERE series_2y.series_code = 'DGS2'
  AND series_10y.series_code = 'DGS10'
ORDER BY obs_2y.observation_date;
