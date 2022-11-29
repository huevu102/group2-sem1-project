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

  constructor(
    private route: ActivatedRoute,
    private http: HttpClient
  ) {}

  ngOnInit() {
    this.id = this.route.params.subscribe(params => {
      this.pid = +params['pid'];

      const productURL = 'https://huevuapi.herokuapp.com/get-product/?pid=' + this.pid;
      this.http.get<Data[]>(productURL).subscribe(data1 => {
        this.product = data1;
      })

      const similarURL = 'https://huevuapi.herokuapp.com/get-similar-product/?pid=' + this.pid;
      this.http.get<Data[]>(similarURL).subscribe(data2 => {
        this.similar = data2;
      })
    })
  }
}
