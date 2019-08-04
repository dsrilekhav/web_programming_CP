import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { ErrorsListModule } from '../error-messages-list/errors-list.module';
import { FormsModule } from '@angular/forms';
import { HomeComponent } from './home.component'
import { MoviesService } from '../service/movies.service';
import { CommonModule } from '@angular/common';


@NgModule({
    declarations: [ HomeComponent],
    exports: [HomeComponent],
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
export class HomeModule{

}