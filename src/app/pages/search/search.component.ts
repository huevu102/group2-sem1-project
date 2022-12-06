import {Component} from "@angular/core";
import {AppComponent} from "../../app.component";
import {Data} from "../../interfaces/data.interface";

@Component({
  selector: 'search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css']
})

export class SearchComponent{
  searchResult: Data[] = [];
  constructor (private appData: AppComponent) {}

  ngOnInit () {
    this.searchResult = this.appData.searchResult;

    window.addEventListener('scroll', () => {
      this.windowScrolled = window.pageYOffset !== 0;
    });
  }

  windowScrolled = false;
  scrollToTop(): void {
    window.scrollTo(0, 0);
  }
}

