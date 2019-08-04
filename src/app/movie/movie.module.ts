import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { MoviesService } from '../service/movies.service';
import { MovieComponent } from './movie.component';
import { RouterModule } from '@angular/router';


@NgModule({
    // declares what components are in this module
    declarations: [
        MovieComponent,
    ],
    // defines what components from the module can be used outside of the modules
    exports: [
        MovieComponent
    ],
    // what modules are needed for components inside this module to work
    imports : [
        CommonModule,
        FormsModule,
        RouterModule,
    ],
    providers: [
        MoviesService
    ]
})
export class MovieModule{

}