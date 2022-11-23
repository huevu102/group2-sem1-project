import {Component} from "@angular/core";
import {HttpClient} from "@angular/common/http";
import {IList} from "../../interfaces/product.interface";

@Component({
  selector: 'app-home',
  templateUrl: './category.component.html',
  styleUrls: ['./category.component.css']
})

export class CategoryComponent {
  data: IList[] = [];

  constructor(private http: HttpClient) {}

  ngOnInit() {
    const url = 'http://localhost:5000/get-product';
    this.http.get<{list:IList[]}>(url).subscribe(data => {
      this.data = data.list
    });
  }
}
