import {Component, OnInit } from "@angular/core";
import {Data} from "../../interfaces/data.interface";
import {HttpClient} from "@angular/common/http";
import {host} from "../../../enums";

@Component({
  selector: 'app-cart-draft',
  templateUrl: './cart-draft.component.html',
  styleUrls: ['./cart-draft.component.css']
})

export class CartDraftComponent {
  // add to cart



  // you may also like
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
