import pymysql as sql
import json

class DBConnect:
    def register(self,User):
        db = sql.connect(host="localhost",user="root1",passwd="Sri123456",db="movies" )
        cursor = db.cursor()
        cursor.execute("INSERT INTO registered_users(username,first_name,last_name,email,password,city,state,Age,Gender,country) values("+ User.username,User.first_name,User.last_name,User.email,User.password,User.city,User.state,User.age,User.Gender,User.country +");")
        # disconnect from server
        db.close()

    def checkLogin(self, username, password):
        db = sql.connect(host="localhost",user="root1",passwd="Sri123456",db="movies" )
        cursor = db.cursor()
        cursor.execute("SELECT username,password from registered_users where username="+ username+";")
        # Fetch a single row using fetchone() method.
        data = cursor.fetchall()
        for row in data:
            if row[1] == password:
                # disconnect from server
                db.close()
                return True
        return False
        # disconnect from server
        db.close()

    def getMoviesList(self):
        db = sql.connect(host="localhost",user="root1",passwd="Sri123456",db="movies" )
        cursor = db.cursor()
        cursor.execute("SELECT * from movies_description order by rating desc limit 10;")
        # Fetch a single row using fetchone() method.
        data = cursor.fetchall()
        return json.dumps(data)
        # disconnect from server
        db.close()

    def getSearchedMovies(self,keyword):
        db = sql.connect(host="localhost",user="root1",passwd="Sri123456",db="movies" )
        cursor = db.cursor()
        cursor.execute("SELECT * from movies_description where movie_name rlike '"+keyword+"';")
        # Fetch a single row using fetchone() method.
        data = cursor.fetchall()
        return json.dumps(data)
        # disconnect from server
        db.close()

    def getCommentsForMovie(self,id):
        db = sql.connect(host="localhost",user="root1",passwd="Sri123456",db="movies" )
        cursor = db.cursor()
        cursor.execute("SELECT * from comments_with_ratings where movie_id="+str(id)+";")
        # Fetch a single row using fetchone() method.
        data = cursor.fetchall()
        return json.dumps(data)
        # disconnect from server
        db.close()

    def random(self):
        print("Connected to db class")
    


