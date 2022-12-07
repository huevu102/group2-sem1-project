import {Component, OnInit} from "@angular/core";
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
  private id: any;
  pid: number = 0;
  product: Data[] = [];
  similar: Data[] = [];
  review: Data[] = [];
  collection: Data[] = [];
  comparedProduct?: Data;
  quickviewed?: Data;
  zoomed?: Data;

  constructor(
    private route: ActivatedRoute,
    private http: HttpClient
  ) {}

  ngOnInit() {
    this.id = this.route.params.subscribe(params => {
      this.pid = +params['pid'];

      const productURL = host + 'get-product-by-pid/?pid=' + this.pid;
      this.http.get<Data[]>(productURL).subscribe(data => {
        this.product = data;
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
    this.comparedProduct = item;
  }

  quickview(item: Data) {
    this.quickviewed = item;
  }

  zoom(item: Data) {
    this.zoomed = item;
  }
}
