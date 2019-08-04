import { Component } from '@angular/core'

@Component({
    selector: 'movie-review-header',
    template: '<h1>Hello Website</h1>' 

})
export class MovieReviewComponent{
    mrcs: Array<mrc>

    constructor(){
        this.mrcs =[
            {
                id: 1
            }
        ]
    }
}

export class mrc{
    
}