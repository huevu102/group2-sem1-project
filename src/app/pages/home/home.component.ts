import {Component} from "@angular/core";
import {HttpClient} from "@angular/common/http";
import {Data} from "../../interfaces/data.interface";

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})

export class HomeComponent {
  newArrival: Data[] = [];

  constructor(private http: HttpClient){}

  ngOnInit() {
    const newURL = 'http://localhost:5000/get-new-arrival'
    this.http.get<Data[]>(newURL).subscribe(data => {
      this.newArrival = data;
    })
  }
}
