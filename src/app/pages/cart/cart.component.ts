import {Component} from "@angular/core";
import {Data} from "../../interfaces/data.interface";
import {HttpClient} from "@angular/common/http";
import {host} from "../../../enums";

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.css']
})

export class CartComponent {
  bestSeller: Data[] = [];
  quickviewed?: Data;

  constructor(private http: HttpClient){}

  ngOnInit() {
    const bestURL = host + 'get-best-seller'
    this.http.get<Data[]>(bestURL).subscribe(data => {
      this.bestSeller = data;
    })
  }

  quickview(item: Data) {
    this.quickviewed = item;
  }
}
