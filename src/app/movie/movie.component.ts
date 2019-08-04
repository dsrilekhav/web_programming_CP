import { Component, Input, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { MoviesService, Movie, Comments } from '../service/movies.service';

@Component({
    selector: 'movie',
    templateUrl : './movie.template.html'
})
export class MovieComponent {
    
    movie: Movie
    id
    d 
    comments: Array<Comments>
    constructor(private route: ActivatedRoute, private movieService: MoviesService,
        private router: Router) {
        // get the id for todo to display from the URL
        this.id = route.snapshot.paramMap.get("id")
        //get the todo be parsed id
        this.d = this.movieService.getMovie(this.id)
        this.movieService.getCommentsForMovie(this.id).subscribe((c:Array<Comments>) =>{
            this.comments = c
            this.movieService.comments = c
            console.log(this.comments)
        })
        console.log(this.d)
    }

}