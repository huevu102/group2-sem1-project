import {Component} from "@angular/core";
import {HttpClient} from "@angular/common/http";
import {Data} from "../../interfaces/data.interface";
import {host} from "../../../enums";

@Component({
  selector: 'app-shop-all',
  templateUrl: './shop-all.component.html',
  styleUrls: ['./shop-all.component.css']
})

export class ShopAllComponent {
  cate: Data[] = [];
  rings: Data[] = [];
  earrings: Data[] = [];
  bracelets: Data[] = [];
  necklaces: Data[] = [];
  quickviewed?: Data;
  load:boolean = false;


  constructor(private http: HttpClient) {}

  ngOnInit() {
    this.load = true;

    const cateURL = host + 'get-category'
    this.http.get<Data[]>(cateURL).subscribe(data =>{
      this.cate = data;
      this.load=false;
    })

    const ringsURL = host + 'get-rings'
    this.http.get<Data[]>(ringsURL).subscribe(data =>{
      this.rings = data;
    })

    const earringsURL = host + 'get-earrings'
    this.http.get<Data[]>(earringsURL).subscribe(data =>{
      this.earrings = data;
    })

    const braceletsURL = host + 'get-bracelets'
    this.http.get<Data[]>(braceletsURL).subscribe(data =>{
      this.bracelets = data;
    })


    const necklacesURL = host + 'get-necklaces'
    this.http.get<Data[]>(necklacesURL).subscribe(data =>{
      this.necklaces = data;
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
