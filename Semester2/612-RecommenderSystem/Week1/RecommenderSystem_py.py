# -*- coding: utf-8 -*-
"""
Created on Sun Jun  9 18:40:28 2019

@author: Santosh
"""

import pandas as pd
import math
import numpy as np
from sklearn.model_selection import train_test_split

# Just create dataset with this format --> user, movie_title, rating and then use pivot/melt to create matrix
data = {'user':['Tom','Sally','Vincio','Andy','Mike'], 'Titanic':[5,4,2,5, None],'Batman':[5,5,2,4,3], 'Superman':[4,5,3,None,4], 'Spiderman':[None, 4,1,3,4], 'Avengers':[4,5,3, None, None] }
df = pd.DataFrame(data)
df

# long-form dataframe
df2 = pd.melt(df, 
               id_vars='user', 
               var_name='movie', 
               value_name='rating')
df2

train2, test2 = train_test_split(df2, test_size = 0.2, random_state = 42)

train2 = pd.pivot_table(train2, index = 'user', columns = 'movie', values = 'rating' ).reset_index()
train2

test2 = pd.pivot_table(test2, index = 'user', columns = 'movie', values = 'rating' ).reset_index()
test2

raw_avg2 = train2.sum()[1:].sum() / train2.iloc[:,1:].notnull().sum().sum()
raw_avg2


error_test2 = test2.iloc[:,1:] - raw_avg2
sq_error_test2 = error_test2 ** 2 
MSE_test2 = sq_error_test2.sum().sum() / test2.iloc[:,1:].notnull().sum().sum()
RMSE_test2 = np.sqrt(MSE_test2)
RMSE_test2

error_train2 = train2.iloc[:,1:] - raw_avg2
sq_error_train2 = error_train2 ** 2 
MSE_train2 = sq_error_train2.sum().sum() / train2.iloc[:,1:].notnull().sum().sum()
RMSE_train2 = np.sqrt(MSE_train2)
RMSE_train2

#bias_user using df2
sum_item_user2 = train2.sum(axis=1)
n_item_user2 = train2.iloc[:,1:].notnull().sum(axis=1)

bias_user2 = (sum_item_user2 / n_item_user2) - raw_avg2
bias_user2.index = list(train2.user)
bias_user2

#bias_movie using df2
sum_item_movie2 = train2.iloc[:,1:].sum(axis=0)
n_item_movie2 = train2.iloc[:,1:].notnull().sum(axis=0)

bias_movie2 = (sum_item_movie2 / n_item_movie2) - raw_avg2
bias_movie2

#using df2 - calculate baseline RMSE for testset
bias_movie_df2 = pd.DataFrame(bias_movie2).T
base_line_train2 = pd.DataFrame(columns = bias_movie2.index)
for i in train2['user']:
    base_line_train2 = pd.concat([bias_movie_df2 + bias_user2[i] + raw_avg2, base_line_train2])
    
base_line_train2.index = train2.index
base_line_train2


error_test2_baseline = test2 - base_line_train2
sq_error_test2_baseline = error_test2_baseline ** 2
MSE_test2_baseline = sq_error_test2_baseline.sum().sum() / test2.iloc[:,1:].notnull().sum().sum()
RMSE_test2_baseline = np.sqrt(MSE_test2_baseline)
RMSE_test2_baseline

error_train2_baseline = train2 - base_line_train2
sq_error_train2_baseline = error_train2_baseline ** 2
MSE_train2_baseline = sq_error_train2_baseline.sum().sum() / train2.iloc[:,1:].notnull().sum().sum()
RMSE_train2_baseline = np.sqrt(MSE_train2_baseline)
RMSE_train2_baseline

print('RMSE - raw average: training', RMSE_train2)
print('RMSE - baseline predictor: training', RMSE_train2_baseline)
print('RMSE - raw average: test', RMSE_test2)
print('RMSE - baseline predictor: test', RMSE_test2_baseline)