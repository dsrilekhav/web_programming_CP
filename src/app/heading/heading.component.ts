import { Component } from "@angular/core";

@Component({
    selector: 'heading',
    templateUrl: './heading.template.html'
})

export class HeadingComponent{
    title = 'Review-Breeze';
    keyword: string
}