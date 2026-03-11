import sqlite3

conn = sqlite3.connect("superstore.db")

df.to_sql("sales",conn,if_exists="replace")
