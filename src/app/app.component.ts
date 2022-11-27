import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'group2-sem1-project';

  constructor(){
    this.function()
  }
  function(){
    const nav = document.querySelector(".headnav");
    let lastScrollY = window.scrollY;
    window.addEventListener("scroll",() => {
      if (lastScrollY < window.scrollY){
        nav?.classList.add("nav--hidden");
      }
      else{
        nav?.classList.remove("nav--hidden");
      }
      lastScrollY = window.scrollY;
    });
  }
}
