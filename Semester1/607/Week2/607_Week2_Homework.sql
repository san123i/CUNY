
#UnComment below statements to create 'CUNY_607' database

#create database cuny_607;
#ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';


use cuny_607;

drop table cuny_607.viewer_ratings;
drop table cuny_607.popular_movies_2018;

CREATE TABLE cuny_607.popular_movies_2018 (
  movie_id integer NOT NULL AUTO_INCREMENT,
  title varchar(100),
  genre varchar(100),
  duration varchar(100),
  release_year integer,
  imdb_rating float,
  box_office double,
  primary key (movie_id)
  );
  
  CREATE TABLE cuny_607.viewer_ratings (
  viewer_rating_id integer NOT NULL AUTO_INCREMENT,
  movie_id integer,
  rating float,
  overall_feel varchar(100),
  recommend_others varchar(100),
  primary key (viewer_rating_id),
  foreign key (movie_id) references cuny_607.popular_movies_2018(movie_id)
  );
  
 insert into  cuny_607.popular_movies_2018 (title, genre, duration, release_year, imdb_rating, box_office) 
									 values('Avengers: Infinity War', 'Action', '149', 2018, 8.5, 7000);
 insert into  cuny_607.popular_movies_2018 (title, genre, duration, release_year, imdb_rating, box_office) 
									 values('Black Panther', 'Action', '134', 2018, 7.4, 6780);
 insert into  cuny_607.popular_movies_2018 ( title, genre, duration, release_year, imdb_rating, box_office) 
									 values( 'Deadpool 2', 'Action', '119', 2018, 7.8, 3180);
 insert into  cuny_607.popular_movies_2018 ( title, genre, duration, release_year, imdb_rating, box_office) 
									 values( 'Ready Player One', 'Action', '140', 2018, 7.5, 1370);
 insert into  cuny_607.popular_movies_2018 ( title, genre, duration, release_year, imdb_rating, box_office) 
									 values('A Quiet Place', 'Horror', '90', 2018, 7.6, 1880);
 insert into  cuny_607.popular_movies_2018 ( title, genre, duration, release_year, imdb_rating, box_office) 
									 values('Mission Impossible - Fallout', 'Action', '147', 2018, 7.8, 2200);                                     
select * from cuny_607.popular_movies_2018;

insert into  cuny_607.viewer_ratings (viewer_rating_id, movie_id, rating, overall_feel, recommend_others) 
								 values('1', '1', 3.5, 'Liked', 'Yes');
								 
insert into  cuny_607.viewer_ratings (movie_id, rating, overall_feel, recommend_others) 
								 values('1', 3.5, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings ( movie_id, rating, overall_feel, recommend_others) 
								 values( '1', 4, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings (movie_id, rating, overall_feel, recommend_others) 
								 values('1', 4, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings ( movie_id, rating, overall_feel, recommend_others) 
								 values( '1', 3, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings ( movie_id, rating, overall_feel, recommend_others) 
								 values( '1', 3.5, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings (movie_id, rating, overall_feel, recommend_others) 
								 values( '1', 4.5, 'Liked', 'Yes');    
                                 
insert into  cuny_607.viewer_ratings (movie_id, rating, overall_feel, recommend_others) 
								 values('2', 3.5, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings ( movie_id, rating, overall_feel, recommend_others) 
								 values( '2', 2, 'Disliked', 'No');
insert into  cuny_607.viewer_ratings (movie_id, rating, overall_feel, recommend_others) 
								 values('2', 3, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings ( movie_id, rating, overall_feel, recommend_others) 
								 values( '2', 2.5, 'Liked', 'No');
insert into  cuny_607.viewer_ratings ( movie_id, rating, overall_feel, recommend_others) 
								 values( '2', 3.5, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings (movie_id, rating, overall_feel, recommend_others) 
								 values( '2', 4, 'Liked', 'Yes');  
                                 
insert into  cuny_607.viewer_ratings (movie_id, rating, overall_feel, recommend_others) 
								 values('3', 4, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings ( movie_id, rating, overall_feel, recommend_others) 
								 values( '3', 3, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings (movie_id, rating, overall_feel, recommend_others) 
								 values('3', 2, 'Disliked', 'No');
insert into  cuny_607.viewer_ratings ( movie_id, rating, overall_feel, recommend_others) 
								 values( '3', 2.5, 'Disliked', 'No');
insert into  cuny_607.viewer_ratings ( movie_id, rating, overall_feel, recommend_others) 
								 values( '3', 3.5, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings (movie_id, rating, overall_feel, recommend_others) 
								 values( '3', 4.5, 'Liked', 'Yes');  
                                 
                                 insert into  cuny_607.viewer_ratings (movie_id, rating, overall_feel, recommend_others) 
								 values('4', 3.5, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings ( movie_id, rating, overall_feel, recommend_others) 
								 values( '4', 4, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings (movie_id, rating, overall_feel, recommend_others) 
								 values('4', 4, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings ( movie_id, rating, overall_feel, recommend_others) 
								 values( '4', 3, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings ( movie_id, rating, overall_feel, recommend_others) 
								 values( '4', 3.5, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings (movie_id, rating, overall_feel, recommend_others) 
								 values( '4', 4.5, 'Liked', 'Yes');  
                                 
insert into  cuny_607.viewer_ratings (movie_id, rating, overall_feel, recommend_others) 
								 values('5', 3.5, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings ( movie_id, rating, overall_feel, recommend_others) 
								 values( '5', 2, 'Disliked', 'No');
insert into  cuny_607.viewer_ratings (movie_id, rating, overall_feel, recommend_others) 
								 values('5', 1.5, 'Disliked', 'No');
insert into  cuny_607.viewer_ratings ( movie_id, rating, overall_feel, recommend_others) 
								 values( '5', 3, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings ( movie_id, rating, overall_feel, recommend_others) 
								 values( '5', 3, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings (movie_id, rating, overall_feel, recommend_others) 
								 values( '5', 3.5, 'Liked', 'Yes');  
                                 
insert into  cuny_607.viewer_ratings (movie_id, rating, overall_feel, recommend_others) 
								 values('6', 3.5, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings ( movie_id, rating, overall_feel, recommend_others) 
								 values( '6', 3, 'Liked', 'No');
insert into  cuny_607.viewer_ratings (movie_id, rating, overall_feel, recommend_others) 
								 values('6', 2, 'Disliked', 'No');
insert into  cuny_607.viewer_ratings ( movie_id, rating, overall_feel, recommend_others) 
								 values( '6', 3.5, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings ( movie_id, rating, overall_feel, recommend_others) 
								 values( '6', 3, 'Liked', 'Yes');
insert into  cuny_607.viewer_ratings (movie_id, rating, overall_feel, recommend_others) 
								 values( '6', 3, 'Liked', 'Yes'); 
                                 
select * from cuny_607.viewer_ratings;

select movies.*, ratings.rating, ratings.overall_Feel, ratings.recommend_others from cuny_607.popular_movies_2018 as movies inner join cuny_607.viewer_ratings as ratings on movies.movie_id = ratings.movie_id;

