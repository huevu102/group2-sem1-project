import {Component, Input} from "@angular/core";
import {Data} from "../../interfaces/data.interface";
import {HttpClient} from "@angular/common/http";
import {host} from "../../../enums";
import {ProductDetailComponent} from "../product-detail/product-detail.component";

@Component({
  selector: 'app-cart-draft',
  templateUrl: './cart-draft.component.html',
  styleUrls: ['./cart-draft.component.css']
})

export class CartDraftComponent {
  bestSeller: Data[] = [];
  quickviewed?: Data;
  cartItem: Data[] = [];

  constructor(private http: HttpClient, private productDetail: ProductDetailComponent){}

  ngOnInit() {
    const bestURL = host + 'get-best-seller'
    this.http.get<Data[]>(bestURL).subscribe(data => {
      this.bestSeller = data;
    })

    this.cartItem = this.productDetail.cartItem;
  }

  quickview(item: Data) {
    this.quickviewed = item;
  }
}
