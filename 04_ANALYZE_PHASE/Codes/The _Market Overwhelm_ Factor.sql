SELECT
   release_year,
   COUNT(name) AS total_games_released

FROM
  gaming-fatigue-project.cleaned_gaming_dataset.steam_data_clean

WHERE
  release_year IS NOT NULL

GROUP BY
  release_year

ORDER BY
  release_year ASC;