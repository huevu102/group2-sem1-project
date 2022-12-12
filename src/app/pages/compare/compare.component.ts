import {Component, Input} from "@angular/core";
import {Data} from "../../interfaces/data.interface";
import {ActivatedRoute} from "@angular/router";
import {HttpClient} from "@angular/common/http";

@Component({
  selector: 'app-compare',
  templateUrl: './compare.component.html',
  styleUrls: ['./compare.component.css']
})

export class CompareComponent{
  private id: any;
  pid: number = 0;
  similar: Data[] = [];
  added?: Data;
  @Input() compared?: Data;
  @Input() product?: Data[] = []

  constructor(
    private route: ActivatedRoute, private http: HttpClient) {
  }

}

