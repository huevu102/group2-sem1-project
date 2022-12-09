import {Component, OnInit} from "@angular/core";
import {ActivatedRoute} from "@angular/router";
import {HttpClient} from "@angular/common/http";
import {Data} from "../../interfaces/data.interface";
import {host} from "../../../enums";

@Component({
  selector: 'app-category',
  templateUrl: './category.component.html',
  styleUrls: ['./category.component.css']
})

export class CategoryComponent implements OnInit {
  private cate: any;
  cid: number = 0;
  category: Data[] = [];
  subCate: Data[] = [];
  cateFeatured: Data[] = [];
  quickviewed?: Data;

  constructor(
    private route: ActivatedRoute,
    private http: HttpClient
  ) {}

  ngOnInit() {
    this.cate = this.route.params.subscribe(params => {
      this.cid = +params['cid'];

      const cateUrl = host + 'get-category-by-cid/?cid='+ this.cid;
      this.http.get<Data[]>(cateUrl).subscribe(data => {
        this.category = data;
      })

      const subUrl = host + 'get-sub-category-by-cid/?cid='+ this.cid;
      this.http.get<Data[]>(subUrl).subscribe(data => {
        this.subCate = data;
      })

      const cateFeaturedUrl = host + 'get-featured-by-cid/?cid='+ this.cid;
      this.http.get<Data[]>(cateFeaturedUrl).subscribe(data => {
        this.cateFeatured = data;
      })
    })
    window.addEventListener('scroll', () => {
      this.windowScrolled = window.pageYOffset !== 0;
    });
  }

  windowScrolled = false;
  scrollToTop(): void {
    window.scrollTo(0, 0);
  }
  quickview(item: Data) {
    this.quickviewed = item;
  }
}
