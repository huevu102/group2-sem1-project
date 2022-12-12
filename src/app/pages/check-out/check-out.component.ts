import {Component} from "@angular/core";
import {Router} from "@angular/router";

@Component({
  selector: 'app-check-out',
  templateUrl: './check-out.component.html',
  styleUrls: ['./check-out.component.css']
})

export class CheckOutComponent {
  constructor(private router: Router) {
  }
  placeOrder() {
    this.router.navigate(['/thank-you']);
  }
}
