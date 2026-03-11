df["Order Date"] = pd.to_datetime(df["Order Date"])

df = df.dropna()

df.to_csv("../data/cleaned/superstore_cleaned.csv",index=False)
