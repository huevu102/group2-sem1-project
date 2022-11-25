import {Component, OnInit} from "@angular/core";
import {ActivatedRoute} from "@angular/router";
import { HttpClient } from "@angular/common/http";
import { Data } from "../../interfaces/data.interface";

@Component({
  selector: 'app-sub-category',
  templateUrl: './sub-category.component.html',
  styleUrls: ['./sub-category.component.css']
})

export class SubCategoryComponent implements OnInit{
  private sub: any;
  subId: number = 0;
  data: Data[] = [];

  constructor(
    private route: ActivatedRoute,
    private http: HttpClient)
  {}

  ngOnInit() {
    this.sub = this.route.params.subscribe(params => {
      this.subId = +params['subId']; // (+) converts string 'id' to a number

      // In a real app: dispatch action to load the details here.
      const subCateUrl = 'https://huevuapi.herokuapp.com/get-sub-category/?subId='+ this.subId;
      console.log(subCateUrl)
      this.http.get<Data[]>(subCateUrl).subscribe(data => {
        this.data = data;
        console.log(data)
      });
    })
  }
}
