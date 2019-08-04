import { Injectable } from '@angular/core';
import { HttpClient } from "@angular/common/http";

@Injectable()
export class UserService{

    user: User
    constructor(private http: HttpClient){

    }

    register(user: User, callback){
        this.http.post('/api/user/register', user,{responseType: 'text'}).subscribe(res=>{
            callback(res)
        })
    }

    login(user: User, callback){
        this.http.post('/api/user/login', user).subscribe(res=>{
            console.log(res)
            callback(res)
        },
        err => {
            callback(undefined)
        })
    }

    logout( callback){
        this.http.get('/api/user/logout').subscribe(r => callback())
    }

    checkLogIn(callback){
        this.http.post('/api/user/isloggedin',this.user.username).subscribe((r: any) =>{
                this.user = r
                callback(r)
        },
        (error) => {
            console.log('Unauthorized')
            callback(undefined)
        })
    }
}

export class User{
    username: string
    first_name: string
    last_name: string
    email: string
    password: string
    password2: string
    city: string
    state: string
    age: number
    Gender: string
    country: string
    level: string
}