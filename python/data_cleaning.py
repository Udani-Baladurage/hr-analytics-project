# data_cleaning.py

import os
import pandas as pd

# -----------------------------
# Step 1: Set file paths
# -----------------------------

# Folder where this script is located
script_dir = os.path.dirname(os.path.abspath(__file__))

# Input CSV path
input_csv = os.path.join(script_dir, "../data/HR-Employee-Attrition.csv")

# Output CSV path
output_csv = os.path.join(script_dir, "../data/HR_Analytics_Cleaned.csv")

# -----------------------------
# Step 2: Load CSV
# -----------------------------
try:
    df = pd.read_csv(input_csv)
    print(f"Original shape: {df.shape}")
except FileNotFoundError:
    print(f"Error: CSV file not found at {input_csv}")
    exit()

# -----------------------------
# Step 3: Data Cleaning
# -----------------------------

# Example cleaning steps:

# 1. Remove duplicate rows
df = df.drop_duplicates()

# 2. Fill or remove missing values
# Here: drop rows with any missing value
df = df.dropna()

# 3. Optional: reset index
df = df.reset_index(drop=True)

# -----------------------------
# Step 4: Save cleaned CSV
# -----------------------------
df.to_csv(output_csv, index=False)
print(f"Cleaned shape: {df.shape}")
print(f"Cleaned CSV saved successfully as {output_csv}")

