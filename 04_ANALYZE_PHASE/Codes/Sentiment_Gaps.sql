SELECT
  year_of_release,
  COUNT(name) AS game_with_reviews,
  ROUND(AVG(critic_score), 2) AS avg_critic_score,
  ROUND(AVG(user_score * 10), 2) AS avg_user_score_scaled,
  ROUND(AVG(critic_score) - AVG(user_score *10), 2) AS sentiment_gap
FROM
 gaming-fatigue-project.cleaned_gaming_dataset.sales_data_clean
WHERE
 critic_score IS NOT NULL
 AND user_score IS NOT NULL
 AND year_of_release >= 2000
GROUP BY
  year_of_release
ORDER BY
  year_of_release ASC;