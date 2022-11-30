import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],

})
export class AppComponent {
  title = 'group2-sem1-project';
  show:boolean =  false;
  /*THIS FOR SCROLL NAVBAR*/
  constructor(){
    this.function();
  }

  function(){
    //const nav = document.querySelector(".headnav");
    //let lastScrollY = window.scrollY;//
    window.onscroll = () => {
      if (window.pageYOffset > 140){
        this.show = true;
      //  nav?.classList.add("nav--hidden");
      }
      else{
        this.show = false;
       // nav?.classList.remove("nav--hidden");
      }
     // lastScrollY = window.scrollY;
    };
  }
}
