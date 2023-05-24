import {Component, Input} from "@angular/core";
import {Data} from "../../interfaces/data.interface";
import {ActivatedRoute} from "@angular/router";
import {HttpClient} from "@angular/common/http";

@Component({
  selector: 'quick-view',
  templateUrl: './quickview.component.html',
  styleUrls: ['./quickview.component.css']
})

export class QuickviewComponent{
  private id: any;
  pid: number = 0;
  similar: Data[] = [];
  added?: Data;
  @Input() quickviewed?: Data;

  constructor(
    private route: ActivatedRoute, private http: HttpClient) {
  }

}
