import { Component } from "@angular/core";
import { Movie, MoviesService } from '../service/movies.service';

@Component({
    selector: 'home',
    templateUrl: './home.template.html'
})

export class HomeComponent{
    movies: Array<Movie>
    constructor( private movieService: MoviesService){
        this.movies = this.movieService.movies
        this.movieService.getMovies().subscribe((d:Array<Movie>) =>{
            this.movies = d
            this.movieService.movies = d
            console.log(this.movies)
        })
    }
}