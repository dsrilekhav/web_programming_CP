import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { RegisterComponent } from './register/register.component';
import { LoginComponent } from './login/login.component';
import { HomeComponent } from './home/home.component';
import { MovieComponent } from './movie/movie.component';
import {AboutComponent} from './about/about.component'
import { SearchComponent } from './search/search.component';

const routes: Routes = [

  {path: 'user/register', component: RegisterComponent},
  {path: 'about', component: AboutComponent},
  {path: '', component: HomeComponent},
  {path: 'movie/:id', component: MovieComponent},
  {path: 'search/:keyword', component: SearchComponent},
  {path: 'user/login', component: LoginComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
