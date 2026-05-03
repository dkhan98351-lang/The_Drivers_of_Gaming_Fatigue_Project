# Data Source Documentation
**Project Title:** Analyzing the Drivers of Gaming Fatigue (Portfolio Project #3)  
**Analyst:** Danish Khan  
**Phase:** Prepare  

---

## 1. Overview
This document outlines the primary datasets used for the "Gaming Fatigue" analysis project. The data was acquired from public repositories and downloaded as flat CSV files. To ensure data integrity, the original files are securely stored in the `Raw_data` directory and will remain unaltered. All cleaning and transformation will be performed programmatically via Python.

## 2. Dataset 1: Steam Store Games Dataset
* **Filename:** `steam_store_games.csv`
* **Format:** Comma-Separated Values (.csv)
* **Description:** A comprehensive dataset detailing games released on the Steam platform. It includes metadata such as release dates, developers, categories, and crucial player engagement metrics like average and median playtime.

### Key Fields for Analysis:
* `name`: The title of the game.
* `release_date`: Used to track the volume of game releases over time (Market Overwhelm).
* `categories` & `genres`: Used to identify specific types of games (e.g., Live-Service, MMO, Single-player) for Genre Saturation analysis.
* `average_playtime` & `median_playtime`: Crucial metrics for evaluating the "Time Investment Factor" and measuring how much time modern games demand compared to older titles.
* `positive_ratings` & `negative_ratings`: Used to gauge general player sentiment.

## 3. Dataset 2: Video Game Sales and Ratings Dataset
* **Filename:** `Video_Game_Sales_and_Ratings.csv`
* **Format:** Comma-Separated Values (.csv)
* **Description:** A historical dataset tracking global video game sales across multiple console and PC platforms, paired with aggregate review scores from both critics and regular users.

### Key Fields for Analysis:
* `Name`, `Platform`, `Year_of_Release`: Used for tracking trends across different hardware generations and identifying Platform Discrepancies.
* `Global_Sales`: Metric to gauge the overall market reach and success of titles.
* `Critic_Score` & `Critic_Count`: Represents the industry/professional reception of a game.
* `User_Score` & `User_Count`: Represents the actual consumer sentiment. The gap between Critic and User scores over time will be a key indicator of player fatigue.

## 4. Data Storage and Security
* **Location:** `02_PREPARE_PHASE/Raw_data/`
* **Integrity Protocol:** These raw files are treated as read-only. No manual edits will be made in Excel or any other spreadsheet software. All transformations, handling of null values, and data type corrections will be executed and documented in the upcoming `Process` phase using Python (Pandas/NumPy).

## 5. Known Limitations & Potential Biases
* **Platform Bias:** The Steam dataset is strictly limited to PC gaming. While the Sales dataset includes consoles, combining insights across both will require careful normalization.
* **Digital vs. Physical Sales:** Historical sales data often struggles to accurately capture the shift toward digital storefronts post-2010. Sales figures will be treated as directional indicators rather than absolute totals for the modern era.
* **Incomplete Playtime Data:** Playtime metrics on Steam can be skewed by idle hours or trading card farming. The use of `median_playtime` alongside `average_playtime` will help mitigate outlier distortions.
