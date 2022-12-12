import {Component, OnInit, Input} from "@angular/core";
import {Data} from "../interfaces/data.interface";
import {ActivatedRoute} from "@angular/router";
import {HttpClient} from "@angular/common/http";
import {host} from "../../enums";

@Component({
  selector: 'app-compare',
  templateUrl: './compare.component.html',
  styleUrls: ['./compare.component.css']
})

export class CompareComponent implements OnInit {
  private id: any;
  pid: number = 0;
  similar: Data[] = [];
  added?: Data;
  cartItem: Data[] = [];
  @Input() compared?: Data;
  @Input() product?: Data[] = []

  constructor(
    private route: ActivatedRoute, private http: HttpClient) {
  }

  ngOnInit() {
    console.log(this.compared)
  }


  // add to cart
  qty: number = 1;
  total: any;

  addToCart(item: Data): void {
    this.added = item;
    this.cartItem.push(item);
    this.total = item.price * this.qty;
  }

  upQty() {
    this.qty++;
  }

  downQty() {
    if (this.qty > 1) {
      this.qty--;
    }
  }



}

