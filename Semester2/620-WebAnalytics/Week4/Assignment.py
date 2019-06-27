import requests
import nltk
import collections
import nltk, re, pprint
from nltk import word_tokenize
from nltk.corpus import stopwords
import urllib2
import operator
import pandas as pd
import matplotlib.pyplot as plt
from collections import Counter 

#from urllib2 import request

url = "https://raw.githubusercontent.com/san123i/CUNY/master/Semester2/620-WebAnalytics/Week4/data.txt"
#url="C:\\CUNY\\GIT\\CUNY\\Semester2\\620-WebAnalytics\\Week4\\data.txt"

response = urllib2.urlopen(url)
raw = response.read()
raw = unicode(raw, 'utf-8')

list_words = raw.split()
counter = Counter(list_words)
unique_words = sorted(counter)
#How many total unique words are in the corpus? (Please feel free to define unique words in any interesting, defensible way).
print(len(unique_words))

#Taking the most common words, how many unique words represent half of the total words in the corpus?

#Identify the 200 highest frequency words in this corpus.
common_200_words = counter.most_common(200)

common_200_words_dict = dict(common_200_words)

#Create a graph that shows the relative frequency of these 200 words
lists = sorted(common_200_words_dict.items(), key=operator.itemgetter(1), reverse=True)
print(common_200_words_dict)
keys, values = zip(*lists)
plt.plot(keys, values)

#Does the observed relative frequency of these words follow Zipf’s law? Explain
Yes, the observed relative frequency follows the Zipfs law. 
Zips law states that the frequency of any word is inversely proportional to its rank in the frequency table. Looking at the chart,
its clearly visible that the frequency of the most common word is 