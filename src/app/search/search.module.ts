import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { ErrorsListModule } from '../error-messages-list/errors-list.module';
import { FormsModule } from '@angular/forms';
import { SearchComponent } from './search.component'
import { MoviesService } from '../service/movies.service';
import { CommonModule } from '@angular/common';


@NgModule({
    declarations: [ SearchComponent],
    exports: [SearchComponent],
    imports: [
        RouterModule,
        ErrorsListModule,
        FormsModule,
        CommonModule
    ],
    providers:[
        MoviesService
    ]
})
export class SearchModule{

}