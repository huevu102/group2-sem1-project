import {Component, OnInit} from "@angular/core";
import {ActivatedRoute} from "@angular/router";
import {HttpClient} from "@angular/common/http";
import {Data} from "../../interfaces/data.interface";

@Component({
  selector: 'app-category',
  templateUrl: './category.component.html',
  styleUrls: ['./category.component.css']
})

export class CategoryComponent implements OnInit {
  // private cate: any;
  // cid: number = 0;
  // category: Data[] = [];
  quickviewed?: Data;

  constructor(
    private route: ActivatedRoute,
    private http: HttpClient
  ) {}

  ngOnInit() {
    // this.cate = this.route.params.subscribe(params => {
    //   this.cid = +params['cid'];
    //
    //   const cateUrl = 'https://huevuapi.herokuapp.com/get-category/?cid='+ this.cid;
    //   this.http.get<Data[]>(cateUrl).subscribe(data => {
    //     this.category = data;
    //   })
    // })
  }
  quickview(item: Data){
    this.quickviewed=item;
  }

}
