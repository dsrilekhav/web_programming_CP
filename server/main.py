"""
Server program
Usage::
    ./main.py [<port>]
Send a GET request::
    http://localhost
Send a HEAD request::
    curl -I http://localhost
Send a POST request::
    curl -d "foo=bar&bin=baz" http://localhost
"""
from http.server import BaseHTTPRequestHandler, HTTPServer
import socketserver
from DataBConnect import DBConnect
import cgi
import json

class S(BaseHTTPRequestHandler):
    def _set_headers(self):
        self.send_response(200)
        self.send_header('Content-type', 'text/html')
        self.end_headers()

    def do_GET(self):
        self._set_headers()
        if self.path == '/':
            print("Hello user")
        elif self.path == '/api/movies':
            print("Get movies")
            DB = DBConnect()
            moviesList = DB.getMoviesList()
            self.wfile.write(moviesList.encode('utf-8'))
        elif self.path == '/api/user/isloggedin':
            print("Yes loggined check")

        

    def do_HEAD(self):
        self._set_headers()
        
    def do_POST(self):
        # Doesn't do anything with posted data
        self._set_headers()
        if self.path == '/api/user/register':
            print("Hello user register")
            content_length = int(self.headers['Content-Length']) # <--- Gets the size of data
            post_data = self.rfile.read(content_length)
            print(post_data.decode('utf-8'))
            User = {
                "username": post_data[0],
                "first_name": post_data[1],
                "last_name": post_data[2],
                "email": post_data[3],
                "password": post_data[4],
                "age": post_data[5],
                "Gender": post_data[6],
                "city": post_data[7],
                "state": post_data[8],
                "country": post_data[9],
                "level": "user"
            }
            DB = DBConnect()
            DB.register(User)
            self.wfile.write(("Successfully registered!").encode())
        elif self.path == '/api/comments':
            print("Get Comments")
            content_length = int(self.headers['Content-Length']) # <--- Gets the size of data
            post_data = self.rfile.read(content_length)
            print(post_data.decode('utf-8'))
            keyword = post_data.decode('utf-8')
            DB = DBConnect()
            commentsList = DB.getCommentsForMovie(keyword)
            self.wfile.write(commentsList.encode('utf-8'))
        elif self.path == '/api/search':
            print("Get search results")
            content_length = int(self.headers['Content-Length']) # <--- Gets the size of data
            post_data = self.rfile.read(content_length)
            print(post_data.decode('utf-8'))
            movie_id = post_data.decode('utf-8')
            DB = DBConnect()
            commentsList = DB.getSearchedMovies(movie_id)
            self.wfile.write(commentsList.encode('utf-8'))

        elif self.path == '/api/user/isloggedin':
            print("check loggin")
            content_length = int(self.headers['Content-Length']) # <--- Gets the size of data
            post_data = self.rfile.read(content_length)
            print(post_data.decode('utf-8'))
            username = post_data.decode('utf-8')
            if username == "":
                self.wfile.write(0)
            else:
                self.wfile.write(1)
            
def run(server_class=HTTPServer, handler_class=S, port=80):
    server_address = ('', port)
    httpd = server_class(server_address, handler_class)
    print('Starting httpd...')
    httpd.serve_forever()

if __name__ == "__main__":
    from sys import argv

    if len(argv) == 2:
        run(port=int(argv[1]))
    else:
        run()