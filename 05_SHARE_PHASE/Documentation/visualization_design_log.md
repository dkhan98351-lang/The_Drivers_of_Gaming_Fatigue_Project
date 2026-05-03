# Visualization Design Log
**Analyst:** Danish Khan
**Phase:** Share Phase
**Tool Used:** Power BI
**Theme Applied:** "Corporate Gamer" (Dark Mode, Cyan `#00F0FF`, Neon Pink `#FF007F`)

---

## 1. The Avalanche of Choice
* **Source File:** `The Avalanche of Choice - Total PC Games Released (2000-2019)_2.png`
* **Chart Type:** Smooth Area Chart
* **Data Mapping:**
  * **X-Axis:** `release_year`
  * **Y-Axis:** `total_games_released`
* **UI/UX Choices:** 
  * Implemented a dark background (`#1A1A1A`) to reduce eye strain and match modern gaming UI aesthetics.
  * Used a bright neon Cyan line with a semi-transparent area fill underneath. This visually creates a "mountain" or "avalanche" effect, immediately drawing the viewer's eye to the massive spike in game volume post-2013 without needing to read the axes.
  * Removed the X and Y axis titles to maximize the data-ink ratio, as the main title provides sufficient context.

## 2. The Engagement Crash
* **Source File:** `The Engagement Crash - Median Playtime (Minutes)_2.png`
* **Chart Type:** Multi-Row KPI Card
* **Data Mapping:**
  * **Categories:** `gaming_era` (Golden Era vs. Modern Era)
  * **Values:** `median_playtime_minutes`
* **UI/UX Choices:** 
  * Displayed as high-contrast, massive KPI numbers to ensure immediate readability during a presentation.
  * Used a stark Neon Pink color for the numbers (296 and 103). In data visualization, warm/hot colors (like pink/red) intuitively signal a warning, alert, or negative trend—perfectly aligning with the concept of a "crash" in engagement.
  * Aligned the cards vertically to make the 65% drop between the two eras instantly comparable.

## 3. The Growing Disconnect
* **Source File:** `The Growing Disconnect Critic vs. User Scores_2.png`
* **Chart Type:** Dual-Axis Line and Clustered Column Chart
* **Data Mapping:**
  * **X-Axis:** `year_of_release`
  * **Column Y-Axis:** `avg_critic_score`
  * **Line Y-Axis:** `avg_user_score`
* **UI/UX Choices:** 
  * The professional critic scores are represented as solid, neutral Grey columns. This pushes them into the background, visually representing the "stable establishment."
  * The user scores are represented by a smooth, Neon Pink line overlaid on top. The stark contrast highlights the downward trajectory of user sentiment, making the widening gap between the grey bars and the pink line mathematically and visually obvious.

## 4. Genre Saturation
* **Source File:** `Genre Saturation - Market Volume vs. Player Retention_2.png`
* **Chart Type:** Scatter Plot
* **Data Mapping:**
  * **X-Axis:** `Total Games Released`
  * **Y-Axis:** `Median Playtime (Min)`
  * **Values (Dots):** `Genres`
* **UI/UX Choices:** 
  * Used a clean scatter plot to identify outliers and clusters.
  * Dots are colored in glowing Cyan to pop against the dark grid.
  * The chart layout forces the viewer to look at the bottom-left quadrant (high volume, low playtime), which visually proves the "saturation" theory for indie and casual games. Faint dotted grid lines were kept at a high transparency to guide the eye without cluttering the plot.
