import {Component} from "@angular/core";
import {HttpClient} from "@angular/common/http";
import {Data} from "../../interfaces/data.interface";
import {host} from "../../../enums";

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})

export class HomeComponent {
  newArrival: Data[] = [];
  bestSeller: Data[] = [];

  constructor(private http: HttpClient){}

  ngOnInit() {
    const newURL = host + 'get-new-arrival'
    this.http.get<Data[]>(newURL).subscribe(data => {
      this.newArrival = data;
    })

    const bestURL = host + 'get-best-seller'
    this.http.get<Data[]>(bestURL).subscribe(data => {
      this.bestSeller = data;
    })
  }
}
