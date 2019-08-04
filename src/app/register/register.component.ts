import { Component } from '@angular/core';
import { ErrorMessage } from '../error-messages-list/errors-list.component';
import { UserService } from '../service/user.service';
import { Router } from '@angular/router';

@Component({
    selector: 'register',
    templateUrl: './register.template.html'
})
export class RegisterComponent{
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

    constructor(private userService: UserService, private router: Router){
           this.errors = []
    }

    register(){
        console.log("register")
        this.errors = []
        if (this.username == null){
            this.errors.push({message:"No username", type:"danger"})
        }
        if (this.first_name == null){
            this.errors.push({message:"No FirstName", type:"danger"})
        }
        if (this.last_name == null){
            this.errors.push({message:"No lastname", type:"danger"})
        }
        if (this.email == null){
            this.errors.push({message:"No email", type:"danger"})
        }
        if (this.city == null){
            this.errors.push({message:"No city", type:"danger"})
        }
        if (this.state == null){
            this.errors.push({message:"No state", type:"danger"})
        }
        if (this.age == null){
            this.errors.push({message:"No age", type:"danger"})
        }
        if (this.Gender == null){
            this.errors.push({message:"No gender", type:"danger"})
        }
        if (this.password == null){
            this.errors.push({message:"No password", type:"danger"})
        }
        if (this.password != this.password2){
            this.errors.push({message:"Passwords are not the same", type:"danger"})
        }
        if (this.password.length < 6 ){
            this.errors.push({message:"Passwords should be at least 6 characters long", type:"danger"})
        }
        if (this.errors.length > 0){
            return;
        }
        var user = {
            username: this.username,
            first_name: this.first_name,
            last_name: this.last_name,
            email: this.email,
            password: this.password,
            password2: this.password2,
            city: this.city,
            state: this.state,
            age: this.age,
            Gender: this.Gender,
            country: this.country,
            level: undefined
        }
        this.userService.register(user, (res):any =>{
            console.log(res)
            this.router.navigate(['/user/login']);
        })
    }
}