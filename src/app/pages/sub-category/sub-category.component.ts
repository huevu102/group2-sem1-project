import {Component, OnInit} from "@angular/core";
import {ActivatedRoute} from "@angular/router";
import {HttpClient} from "@angular/common/http";
import {Data} from "../../interfaces/data.interface";

@Component({
  selector: 'app-sub-category',
  templateUrl: './sub-category.component.html',
  styleUrls: ['./sub-category.component.css']
})

export class SubCategoryComponent implements OnInit{
  private sub: any;
  sid: number = 0;
  subCate: Data[] = [];
  subFeatured: Data[] = [];

  constructor(
    private route: ActivatedRoute,
    private http: HttpClient
  ) {}

  ngOnInit() {
    this.sub = this.route.params.subscribe(params => {
      this.sid = +params['sid']; // (+) converts string 'id' to a number

      // In a real app: dispatch action to load the details here.
      const subUrl = 'http://localhost:5000/get-sub-category-by-sid/?sid='+ this.sid;
      this.http.get<Data[]>(subUrl).subscribe(data => {
        this.subCate = data;
      })

      const subFeaturedUrl = 'http://localhost:5000/get-featured-by-sid/?sid='+ this.sid;
      this.http.get<Data[]>(subFeaturedUrl).subscribe(data => {
        this.subFeatured = data;
      })
    })
  }
}
