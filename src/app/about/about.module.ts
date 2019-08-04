import { NgModule } from "@angular/core";
import { AboutComponent } from './about.component';
import { RouterModule } from '@angular/router';
import { MoviesService } from '../service/movies.service';
import { UserService } from '../service/user.service';

@NgModule({
    declarations:[
        AboutComponent
    ],
    exports:[
        AboutComponent
    ],
    imports:[
        RouterModule
    ],
    providers:[
        MoviesService,
        UserService
    ]
})

export class AboutModule{

}