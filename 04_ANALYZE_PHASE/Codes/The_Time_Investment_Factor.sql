WITH PlaytimeBuckets AS (
  SELECT
     name,
     positive_ratings,
     negative_ratings,
     CASE
       WHEN average_playtime < 600 THEN 'Short (0-10 hours)'
       WHEN average_playtime BETWEEN 600 AND 3000 THEN 'Medium (10-50 hours)'
       WHEN average_playtime > 3000 THEN 'Massive (50+ hours)'
       ELSE 'Unknown'
     END AS playtime_tier
  FROM
    gaming-fatigue-project.cleaned_gaming_dataset.steam_data_clean
  WHERE
    average_playtime > 0
)

SELECT
  playtime_tier,
  COUNT(name) AS total_games,
  SUM(positive_ratings) AS total_positive,
  SUM(negative_ratings) AS total_negative,
  ROUND(SUM(positive_ratings) / NULLIF(SUM(positive_ratings) + SUM(negative_ratings), 0) * 100, 2) AS percent_positive
FROM
 PlaytimeBuckets
GROUP BY
 playtime_tier
ORDER BY
 percent_positive DESC;