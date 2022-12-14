import {Component, OnInit} from "@angular/core";
import {ActivatedRoute} from "@angular/router";
import {HttpClient} from "@angular/common/http";
import {Data} from "../../interfaces/data.interface";
import {host} from "../../../enums";

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
  quickviewed?: Data;
  load:boolean=false;

  constructor(
    private route: ActivatedRoute,
    private http: HttpClient
  ) {}

  ngOnInit() {
    this.load=true;

    this.sub = this.route.params.subscribe(params => {
      this.sid = +params['sid']; // (+) converts string 'id' to a number

      // In a real app: dispatch action to load the details here.
      const subUrl = host + 'get-sub-category-by-sid/?sid='+ this.sid;
      this.http.get<Data[]>(subUrl).subscribe(data => {
        this.subCate = data;
        this.load=false;
      })

      const subFeaturedUrl = host + 'get-featured-by-sid/?sid='+ this.sid;
      this.http.get<Data[]>(subFeaturedUrl).subscribe(data => {
        this.subFeatured = data;
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
