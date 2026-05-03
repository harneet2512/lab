# Movie Recommender System

This project implements a movie recommender system using Item-based Collaborative Filtering. Recommender systems suggest movies or songs to users based on their interest or usage history. In this example, we use the MovieLens dataset.
<p align="center">
  <img src="https://github.com/harneet2512/Movie-Recommendation-System/blob/master/Recommender_preview.png" alt="Result Output" width="800">
</p>
## Dataset
- [MovieLens 100k Dataset](https://grouplens.org/datasets/movielens/100k/)

## Dependencies
- pandas
- numpy
- matplotlib
- seaborn

## Files
1. `Movie_Id_Titles`: Movie titles dataset
2. `u.data`: Movie ratings dataset
3. `My_Ratings.csv`: Your own movie ratings dataset

 
## Item-based Collaborative Filtering
1. Created a user-item matrix. <br>
2. Calculated movie correlations using Pearson correlation coefficient. <br>
3. Utilized user's ratings to recommend similar movies. <br>
4. Created a Streamlit Web application to get the output <br>

## Usage
Input your own movie ratings in the My_Ratings.csv file.
Run the recommender system script/notebook.

## Results
Obtained a list of recommended movies based on user ratings.
