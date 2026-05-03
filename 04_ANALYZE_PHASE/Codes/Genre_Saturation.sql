SELECT
  genres,
  COUNT(name) AS total_releases,
  ROUND(AVG(median_playtime), 0) AS avg_median_playtime
FROM
  gaming-fatigue-project.cleaned_gaming_dataset.steam_data_clean
WHERE
  genres IS NOT NULL
GROUP BY
  genres
HAVING
  COUNT(name) > 100 --- filtering out tiny indie categories by requiring at least 100 releases
ORDER BY
  total_releases DESC
LIMIT 20;