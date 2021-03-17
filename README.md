Northwestern Data Vis Bootcamp
ETL Project Final Report
Colin O’Neill, Mary Colasanto, Gabriel Bang

**Project Summary**
This project was performed to practice end-to-end data extraction, transformation, and loading. We utilized data of NBA players to extract, clean, and load into SQL.

**Extract**
•	To extract data for the project, we pulled detailed NBA data from data.world – an open source data catalog. The two data sources that we chose were titled “Players” (https://data.world/datadavis/nba-salaries/workspace/file?filename=players.csv) and “Salaries 1985 to 2018” (https://data.world/datadavis/nba-salaries/workspace/file?filename=salaries_1985to2018.csv). The files are both csv files.

**Transform**
We imported the csv files into a Jupyter Notebook and used Python/Pandas to perform our data transformation. Our primary mode of data transformation was "cleaning", as described below:
We edited data of inconsistent formats. For example, we used the str.split method in pandas to remove the hyphen from the height column as well as the “lbs” suffix from the    weight column. We also used the str.split method to separate columns with multiple words into separate columns. For example, we retrieved individual columns for City and State despite the data source placing these into the same column.
We utilized the pandas “func” method to perform mathematical equations on the data – converting the height column from the Feet-Inches format to aggregated inches. We figured the height data would be most useful to us in the aggregated inches form.
Deleted extraneous columns from the data source that we did not want to include into our loaded database.

**Load**
•	We loaded our clean tables into a non-relational SQL database by establishing a connection to an SQL database in Python. From our cleaned data, we created 5 SQL tables (column names):
•	Demographics (player_id, name, height, weight, birth_year, birth_city, birth_state)
•	Salary (player_id, salary, season, team)
•	Position (player_id, position, shoots)
•	Draft (player_id, draft_pick, draft_round, draft_team, draft_year)
•	Schools (player_id, high_school, hs_city, hs_state, college, college_2)
