import { Component } from '@angular/core';
import { ErrorMessage } from '../error-messages-list/errors-list.component';
import { UserService } from '../service/user.service';
import { Router } from '@angular/router';

@Component({
    selector: 'login',
    templateUrl: './login.template.html'
})
export class LoginComponent{
    username: string
    first_name: string
    last_name: string
    email: string
    password: string
    password2: string
    age: number
    Gender: string
    city: string
    state: string
    country: string

    errors: Array<ErrorMessage>

    submitted = false;

    constructor(private userService: UserService, private router: Router){
           this.errors = []
    }

    onSubmit() { 
        console.log("submitted");
        if (this.username == null){
            this.errors.push({message:"No username", type:"danger"})
        }
        if (this.password == null){
            this.errors.push({message:"No password", type:"danger"})
        }
        if (this.password.length < 6 ){
            this.errors.push({message:"Passwords should be at least 6 characters long", type:"danger"})
        }
        if (this.errors.length > 0){
            return;
        }
        var user = {
            username: this.username,
            first_name: undefined,
            last_name: undefined,
            email: undefined,
            password: this.password,
            password2: undefined,
            age: undefined,
            Gender: undefined,
            city: undefined,
            state: undefined,
            country: undefined,
            level: undefined
        }
        this.userService.login(user, (res)=>{
            this.router.navigate(["/"])
        } )
        this.submitted = true; }
}