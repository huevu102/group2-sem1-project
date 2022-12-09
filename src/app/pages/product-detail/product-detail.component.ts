import {Component, OnInit } from "@angular/core"
import {ActivatedRoute} from "@angular/router";
import {HttpClient} from "@angular/common/http";
import {Data} from "../../interfaces/data.interface";
import {host} from "../../../enums";

@Component({
  selector: 'app-product-detail',
  templateUrl: './product-detail.component.html',
  styleUrls: ['/product-detail.component.css']
})

export class ProductDetailComponent implements OnInit {
  loading:boolean =  false;
  private id: any;
  pid: number = 0;
  product: Data[] = [];
  similar: Data[] = [];
  review: Data[] = [];
  collection: Data[] = [];
  compared?: Data;
  quickviewed?: Data;
  zoomed?: Data;
  added?: Data;
  cartItem: Data[] = [];
  deleted?: Data;

  constructor(
    private route: ActivatedRoute, private http: HttpClient) {}

  ngOnInit() {
    this.loading =true;

    this.id = this.route.params.subscribe(params => {
      this.pid = +params['pid'];

      const productURL = host + 'get-product-by-pid/?pid=' + this.pid;
      this.http.get<Data[]>(productURL).subscribe(data => {
        this.product = data;
        this.zoomed = data[0];
        this.loading = false;
      })

      const similarURL = host + 'get-similar-product-by-pid/?pid=' + this.pid;
      this.http.get<Data[]>(similarURL).subscribe(data => {
        this.similar = data;
      })

      const reviewURL = host + 'get-review-by-pid/?pid=' + this.pid;
      this.http.get<Data[]>(reviewURL).subscribe(data => {
        this.review = data;
      })

      const collectURL = host + 'get-collection-by-pid/?pid=' + this.pid;
      this.http.get<Data[]>(collectURL).subscribe(data => {
        this.collection = data;
      })
    })
  }

  compare(item: Data) {
    this.compared = item;
  }

  quickview(item: Data) {
    this.quickviewed = item;
  }

  zoom(item: Data) {
    this.zoomed = item;
  }

  // add to cart
  qty: number = 1;
  total: any;
  addToCart(item: Data): void {
    this.added = item;
    this.cartItem.push(item);
    this.total = item.price * this.qty;
  }
  upQty() {
    this.qty++;
  }
  downQty() {
    if(this.qty > 1) {
      this.qty--;
    }
  }
  deleteItem(item: Data) {
    this.deleted = item;
    this.cartItem = this.cartItem.filter(item => item !== this.deleted);
  }
}
