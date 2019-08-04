import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from "@angular/common/http";


/**
 * Is responsoble to get TODOs from the server
 */
@Injectable()
export class MoviesService{
    movies : Array<Movie>
    comments : Array<Comments>
    keyword: string
    /**
     * Will be called only once. Services are created for the whole life cycle of the application
     */
    constructor(private http: HttpClient){
        console.log("Create Movie service")
    }
    /**
     * Sends the request to the server to get all available todos
     */
    getMovies() : Observable<Array<Movie>>{
        return this.http.get<Array<Movie>>("/api/movies")
    }

    /**
     * Get todo by id. Does not call the server
     */
    getMovie(id) : Movie {
        return this.movies.find(t => t[0] == parseInt(id))
    }

    getCommentsForMovie(id : number) : Observable<Array<Comments>> {
        return this.http.post<Array<Comments>>("/api/comments",id)
    }

    getSearchMovies(keyword:string) : Observable<Array<Movie>>{
        return this.http.post<Array<Movie>>("/api/search",keyword)
    }
    /**
     * Sends a todo to the server to add. Returns an observable with the response from the server
     * @param todo todo to add
     */
    addMovie(movie: Movie): Observable<any>{
        return this.http.post('/api/movie',movie)
    }

    deleteMovie(id: number): Observable<any>{
        return this.http.delete('/api/movie/'+id)
    }
}

export class Movie{
    id: number
    movie_name: string
    year_released: string
    cast: string
    director: string
    Genre: string
    description: string
    rating: number
    img_path: string
}

export class Comments{
    review : string
    rating: number
}