# Team-IIRS
Team-IIRS's Machine learning project's repository
This Github repository contains files and results that we got at different stages of the project:
1.InitialData_TweetID is the csv file with field tweet id which was used for the hydration.This file has 505193 entries. 

2.tweepy_hydration.ipynb file cntains the codes used to hydrate the tweet ids in the InitialData_TweetID. 

3.Hydrated_India_Tweets is the csv file which we got after hydrating InitialData_TweetID.This ha sbeen done using tweepy python library,codes for which are provided in tweepy_hydration.ipynb file .It contains fields Id, date, time, text, long(longitude),lat(latitude),country,city and lang(Language).This file contains 11858 entries. 

4.filtering is the sql file used to get the tweets for Maharashtra contituencies.

5.Maharashtra_Sentiment_Label is the csv file which we got after scaling down the hydrated tweet to maharshstra contituencies.Text in this file was used for getting the Cleaned text using codes in the cleantext.ipynb file.This cleaned text was then used to get textblob scores using using codes provided in ML_model.ipynb file.It contains fields Id, date, time, text, long(longitude),lat(latitude),country,city and lang(Language), geom(geometry),cleaned text,Textblob_score,Textblob label.This csv file have 2628 entries.

6.cleantext.ipynb file contains codes foe cleaning the text.

7.ML_model.ipynb file contains codes for getting the sentiment polarity using textblob.It also has codes to implement supervised machine learning algorithm using the required python library i.e. sklearn 

