import { Component } from '@angular/core';
import {Data} from "./interfaces/data.interface";
import {HttpClient} from "@angular/common/http";
import {host} from "../enums";
import {Router} from "@angular/router";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',

  styleUrls: ['./app.component.css'],


})
export class AppComponent {
  title = 'group2-sem1-project';
  show:boolean =  false;
  /*THIS FOR SCROLL NAVBAR*/
  constructor (private http: HttpClient, private router: Router) {
    this.function();
  }

  function(){
    //const nav = document.querySelector(".headnav");
    //let lastScrollY = window.scrollY;//
    window.onscroll = () => {
      if (window.pageYOffset > 100){
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

  // search
  searchResult: Data[] = [];
  searchText?: any;

  search() {
    const searchUrl = host + 'search-product/?keyword=' + this.searchText;
    this.http.get<Data[]>(searchUrl).subscribe(data => {
      this.searchResult = data;
      console.log(this.searchResult);
      this.router.navigate(['/search']);
      this.searchText = '';
    })
  }
}
