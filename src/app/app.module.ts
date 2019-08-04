import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {AngularFontAwesomeModule} from 'angular-font-awesome'
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeadingModule } from './heading/heading.module';
import { RegisterModule } from './register/register.module';
import { MoviesService } from './service/movies.service';
import { HttpClientModule, HttpClient } from '@angular/common/http';
import { LoginModule } from './login/login.module';
import { HomeModule } from './home/home.module';
import { MovieModule } from './movie/movie.module';
import { AboutModule } from './about/about.module';
import { SearchModule } from './search/search.module';

@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    AngularFontAwesomeModule,
    HeadingModule,
    RegisterModule,
    LoginModule,
    HomeModule,
    AboutModule,
    MovieModule,
    SearchModule,
    HttpClientModule
  ],
  providers: [
    MoviesService,
    HttpClient,
    HttpClientModule
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
