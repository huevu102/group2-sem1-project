import {Component} from "@angular/core";


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})

export class HomeComponent {

    ngOnInit() {
      window.addEventListener('scroll', () => {
        this.windowScrolled = window.pageYOffset !== 0;
      });
    }

    windowScrolled = false;
    scrollToTop(): void {
      window.scrollTo(0, 0);
    }
}




