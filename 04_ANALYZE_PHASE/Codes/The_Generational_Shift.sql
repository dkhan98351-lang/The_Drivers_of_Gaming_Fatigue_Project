SELECT
  CASE
    WHEN release_year BETWEEN 2000 AND 2015 THEN 'Golden Era (2000-2015)'
    WHEN release_year >= 2016 THEN 'Modern Era(2016+)'
    ELSE 'Pre-2000'
  END AS gaming_era,
  COUNT(name) AS total_games_released,
  ROUND(AVG(average_playtime),0) AS avg_playtime_minutes,
  ROUND(AVG(median_playtime),0) AS median_playtime_minutes
FROM
  gaming-fatigue-project.cleaned_gaming_dataset.steam_data_clean
WHERE
  release_year >= 2000 -- Filtering out the very old games to keep the focus tightly on the Golden Era
GROUP BY
  gaming_era
ORDER BY
  gaming_era