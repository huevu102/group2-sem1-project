import {Component} from "@angular/core";
import {HttpClient} from "@angular/common/http";
import {Data} from "../../interfaces/data.interface";

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


  constructor(private http: HttpClient) {}

  ngOnInit() {
    const cateURL = 'https://huevuapi.herokuapp.com/get-category'
    this.http.get<Data[]>(cateURL).subscribe(data =>{
      this.cate = data;
    })

    const ringsURL = 'https://huevuapi.herokuapp.com/get-rings'
    this.http.get<Data[]>(ringsURL).subscribe(data =>{
      this.rings = data;
    })

    const earringsURL = 'https://huevuapi.herokuapp.com/get-earrings'
    this.http.get<Data[]>(earringsURL).subscribe(data =>{
      this.earrings = data;
    })

    const braceletsURL = 'https://huevuapi.herokuapp.com/get-bracelets'
    this.http.get<Data[]>(braceletsURL).subscribe(data =>{
      this.bracelets = data;
    })


    const necklacesURL = 'https://huevuapi.herokuapp.com/get-necklaces'
    this.http.get<Data[]>(necklacesURL).subscribe(data =>{
      this.necklaces = data;
    })
  }
}
