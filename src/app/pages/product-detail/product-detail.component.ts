import {Component, OnInit} from "@angular/core";
import {ActivatedRoute} from "@angular/router";
import {HttpClient} from "@angular/common/http";
import {Data} from "../../interfaces/data.interface";

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
  constructor(
    private route: ActivatedRoute,
    private http: HttpClient
  ) {}

  ngOnInit() {
    this.id = this.route.params.subscribe(params => {
      this.pid = +params['pid'];

      const productURL = 'http://localhost:5000/get-product-by-pid/?pid=' + this.pid;
      this.http.get<Data[]>(productURL).subscribe(data => {
        this.product = data;
      })

      const similarURL = 'http://localhost:5000/get-similar-product-by-pid/?pid=' + this.pid;
      this.http.get<Data[]>(similarURL).subscribe(data => {
        this.similar = data;
      })

      const reviewURL = 'http://localhost:5000/get-review-by-pid/?pid=' + this.pid;
      this.http.get<Data[]>(reviewURL).subscribe(data => {
        this.review = data;
      })
    })
  }
}
