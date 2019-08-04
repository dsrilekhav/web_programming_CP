import json
import requests
import pymysql as sql

def getMovie(movie_name):

    firstURL = "http://www.omdbapi.com/?apikey=c7cbf235&t="
    if " " in movie_name:
        movie_name.replace(" ","+")
    request = firstURL + movie_name
    jsonRequest = (requests.get(request)).json()
    print(jsonRequest)
    insertMovieToDB(jsonRequest)

def insertMovieToDB(moviejson):
    db = sql.connect(host="localhost",user="root1",passwd="Sri123456",db="movies" )
    cursor = db.cursor()
    query_string = 'INSERT INTO movies_description(movie_name,year_released,cast,director,Genre,description,rating,img_path) values("' + moviejson['Title']+'",'+moviejson['Year']+',"'+moviejson['Actors']+'","'+moviejson['Director']+'","'+moviejson['Genre']+'","'+moviejson['Plot']+'",'+moviejson['imdbRating']+',"'+moviejson['Poster']+'");'
    print(query_string)
    cursor.execute(query_string)
    db.commit()
    # disconnect from server
    db.close()


getMovie("green book")
