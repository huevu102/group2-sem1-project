import {Component, OnInit, Input} from "@angular/core";
import {Data} from "../../interfaces/data.interface";
import {ActivatedRoute} from "@angular/router";
import {HttpClient} from "@angular/common/http";
import {host} from "../../../enums";

@Component({
  selector: 'quick-view',
  templateUrl: './quickview.component.html',
  styleUrls: ['./quickview.component.css']
})

export class QuickviewComponent implements OnInit {
  private id: any;
  pid: number = 0;
  similar: Data[] = [];
  added?: Data;
  cartItem: Data[] = [];
  @Input() quickviewed?: Data;

  constructor(
    private route: ActivatedRoute, private http: HttpClient) {
  }

  ngOnInit() {
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
