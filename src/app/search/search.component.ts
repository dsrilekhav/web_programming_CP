import { Component } from "@angular/core";
import { Movie, MoviesService } from '../service/movies.service';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
    selector: 'home',
    templateUrl: './search.template.html'
})

export class SearchComponent{
    movies: Array<Movie>
    keyword : string
    constructor( private route: ActivatedRoute, private movieService: MoviesService, private router: Router){
        this.movies = this.movieService.movies
        this.keyword = route.snapshot.paramMap.get("keyword")
        console.log(this.keyword)
        this.movieService.getSearchMovies(this.keyword).subscribe((d:Array<Movie>) =>{
            this.movies = d
            this.movieService.movies = d
            console.log(this.movies)
        })
    }
}
