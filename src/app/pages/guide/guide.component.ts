import {Component} from "@angular/core";
import {HttpClient} from "@angular/common/http";

@Component({
  selector: 'app-guide',
  templateUrl: './guide.component.html',
  styleUrls: ['./guide.component.css']
})

export class GuideComponent {

  constructor(private http: HttpClient){}

  ngOnInit(){
    window.addEventListener('scroll', () => {
      this.windowScrolled = window.pageYOffset !== 0;
    });
  }
  windowScrolled = false;
  scrollToTop(): void {
    window.scrollTo(0, 0);
  }
}
