import { NgModule } from "@angular/core";
import { HeadingComponent } from './heading.component';
import { RouterModule } from '@angular/router';
import { MoviesService } from '../service/movies.service';
import { UserService } from '../service/user.service';
import { FormsModule } from '@angular/forms';

@NgModule({
    declarations:[
        HeadingComponent
    ],
    exports:[
        HeadingComponent
    ],
    imports:[
        RouterModule,
        FormsModule
    ],
    providers:[
        MoviesService,
        UserService
    ]
})

export class HeadingModule{

}