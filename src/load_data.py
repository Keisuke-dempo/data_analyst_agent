import sqlite3
import pandas as pd

tables = ["patients", "admissions", "diagnoses_icd", "d_icd_diagnoses"]
con = sqlite3.connect("data/mimic.db")

for name in tables:
    # Keep diagnosis codes as text, so leading zeros are not lost
    df = pd.read_csv(f"data/hosp/{name}.csv.gz", dtype={"icd_code": str})
    df.to_sql(name, con, if_exists="replace", index=False)
    print(name, len(df), "rows")

con.close()
