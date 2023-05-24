import {Component} from "@angular/core";
import {AppComponent} from "../../app.component";
import {Data} from "../../interfaces/data.interface";;
import {HttpClient} from "@angular/common/http";

@Component({
  selector: 'search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css']
})

export class SearchComponent{
  searchResult: Data[] = [];
  searchText?: '';

  constructor (private appData: AppComponent, private http: HttpClient) {}

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

