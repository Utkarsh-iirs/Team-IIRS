# Team-IIRS
Team-IIRS's Machine learning project's repository
This Github repository contains files and results that we got at different stages of the project:

1.InitialData_TweetID is the merged version of csv files, downloaded from IEEE dataport. It contains field: tweet ids which was used for the hydration and Sentiment scores which were ignored in this project.This file has 505193 entries. 

2.tweepy_hydration.ipynb file contains the codes used to hydrate the tweet ids in the InitialData_TweetID. 

3.Hydrated_India_Tweets is the Level 2 csv file which contains hydrated data for India.This has been done using tweepy python library,codes for which are provided in tweepy_hydration.ipynb file .It contains fields Id, date, time, text, long(longitude),lat(latitude),country,city and lang(Language).This file contains 11858 entries. 

4.filtering is the sql file used to get the tweets for Maharashtra contituencies.

5.Maharashtra_Sentiment_Label is the final csv file which we got after scaling down the hydrated tweet to the state of maharshstra. The tweets obtained in the hydration process in this file were cleaned (removal of symbols, unwantd white space, emoticons) using codes in the cleantext.ipynb file.This cleaned text was then used to provide labels using Manual Labelling, textblob using python library (codes are provided in provided in ML_model.ipynb) and Lexicon based approach. This contains fields: Id, date, time, text, long(longitude),lat(latitude),country,city and lang(Language), geom(geometry),cleaned text,Textblob_score,Textblob label, Manual Label and Lexicon Label.This csv file have 2628 entries.

6.cleantext.ipynb file contains codes for cleaning the text.

7.ML_model.ipynb file contains codes for getting the sentiment polarity using textblob. It also has codes to implement supervised machine learning algorithm using the required python library i.e. sklearn.

8. Positive-words.txt and Negative-words.txt files contains a collection of positive and negative words respectively, that were used in Lexicon based Labelling approach

9. Lexicon.ipynb has codes to perform Lexicon based Labelling approach.

10.Dashboard.pbix file is the dasboard file for the visualisation of findings of this project.

11.Final report 
