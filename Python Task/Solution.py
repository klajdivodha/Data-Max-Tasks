import pandas as pd

df= pd.read_csv('topSubscribed.csv', index_col=0)

df["Video Views"] = df["Video Views"].str.replace(",","").astype(float)
df["Video Count"] = df["Video Count"].str.replace(",","").astype(float)

df["Average"] = df["Video Views"] / df["Video Count"]

highest_5=df.nlargest(5,"Average")

highest_5.to_csv("topAverageViews.csv")