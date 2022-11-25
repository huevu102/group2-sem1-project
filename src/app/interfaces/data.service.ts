import { Injectable } from "@angular/core";
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Observable, of } from "rxjs";
import { Data } from "./data.interface";

const httpOptions = {
  headers: new HttpHeaders({
    'Content-Type': 'Application/json'
  })
}

let cateId: any;
let subId: any;

@Injectable({
  providedIn: 'root'
})

export class DataService {
  constructor(private httpClient: HttpClient) {}

  getCate(cateId: any): Observable<Data[]> {
    const cateUrl = `https://huevuapi.herokuapp.com/get-category/?cateId=` + cateId;
    return this.httpClient.get<Data[]>(cateUrl).pipe();
  }

  getSubCate(subId: any): Observable<Data[]> {
    const subCateUrl = `https://huevuapi.herokuapp.com/get-sub-category/?subId=` + subId;
    return this.httpClient.get<Data[]>(subCateUrl).pipe();
  }
}
