import {Component} from "@angular/core";
import {HttpClient} from "@angular/common/http";
import {Data} from "../../interfaces/data.interface";

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})

export class HomeComponent {
  // newArrival: Data[] = [];
  // bestSeller: Data[] = [];
  quickviewed?: Data;

  constructor(private http: HttpClient){}

  ngOnInit() {
    // const newURL = host + 'get-new-arrival'
    // this.http.get<Data[]>(newURL).subscribe(data => {
    //   this.newArrival = data;
    // })
    //
    // const bestURL = host + 'get-best-seller'
    // this.http.get<Data[]>(bestURL).subscribe(data => {
    //   this.bestSeller = data;
    // })

    window.addEventListener('scroll', () => {
      this.windowScrolled = window.pageYOffset !== 0;
    });
  }

  windowScrolled = false;
  scrollToTop(): void {
    window.scrollTo(0, 0);
  }

  quickview(item: Data) {
    this.quickviewed = item;
  }
}
