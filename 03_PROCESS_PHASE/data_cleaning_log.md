# Data Cleaning Log
**Project Title:** Analyzing the Drivers of Gaming Fatigue (Portfolio Project #3)  
**Analyst:** Danish Khan  
**Phase:** Process  

---

## 1. Objectives
Document all transformations, standardizations, and cleaning procedures applied to the raw datasets using Python (Pandas & NumPy) before moving to the Analysis phase. This log serves as an audit trail to ensure reproducibility.

## 2. Raw Datasets Processed
* `steam_store_games.csv`
* `Video_Game_Sales_and_Ratings.csv`

## 3. Cleaning Steps Executed

### Step 3.1: Column Standardization (Both Datasets)
* **Action:** Converted all column headers to lowercase and replaced spaces with underscores (`_`).
* **Reason:** Ensures compatibility, prevents syntax errors, and simplifies querying during the upcoming SQL phase.

### Step 3.2: Duplicate Verification (Both Datasets)
* **Action:** Executed `.duplicated().sum()` on both dataframes.
* **Result:** `0` duplicate rows found in both datasets. Data structural integrity confirmed.

### Step 3.3: Handling Missing Values (Sales Data)
* **Action 1 (Critical Drops):** Dropped rows missing `name` (2 rows) and `year_of_release` (273 rows).
    * **Reason:** Without a title or release year, these records cannot be temporally analyzed or accurately categorized. The impact on dataset volume is negligible.
* **Action 2 (Retained Nulls):** Intentionally kept rows with missing `user_score` and `critic_score`.
    * **Reason:** Pre-2000s games often organically lack aggregated review scores (e.g., Metacritic). Dropping these nulls would erase the "Golden Era" data, entirely undermining the generational comparison business task.

### Step 3.4: Rectifying the "TBD" Text Trap (Sales Data)
* **Action:** Located text string `"tbd"` within the `user_score` column and replaced it with `NaN` (null) values.
* **Reason:** The presence of text forced Pandas to treat the entire score column as objects. Converting `"tbd"` to proper nulls allowed the column to be cast to `float64` for mathematical aggregation.

### Step 3.5: Data Type Corrections & Feature Engineering
* **Sales Data - Year Formatting:** Converted `year_of_release` from floats (`2008.0`) to strict integers (`2008`).
* **Steam Data - Datetime Conversion:** Converted `release_date` from generic text objects into proper Pandas `datetime` objects.
* **Steam Data - Feature Extraction:** Extracted the specific year from `release_date` to engineer a new column: `release_year`. 
    * **Reason:** This creates a unified "Year" key, allowing seamless temporal comparisons and potential SQL joins between the Steam and Sales datasets.

## 4. Final Outputs Generated
The cleaned dataframes were exported as pristine flat files to be utilized in SQL and Power BI:
1. `steam_data_clean.csv`
2. `sales_data_clean.csv`

---
*Status: Process Phase Complete. Datasets are structurally sound, temporally aligned, and ready for querying.*
