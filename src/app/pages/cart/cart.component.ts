import {Component} from "@angular/core";
import {Data} from "../../interfaces/data.interface";

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.css']
})

export class CartComponent {
  quickviewed?: Data;

  quickview(item: Data) {
    this.quickviewed = item;
  }
}
