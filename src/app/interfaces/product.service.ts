import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders} from '@angular/common/http';
import {Observable,of} from 'rxjs';
import {Product} from "./product.interface";

const httpOptions = {
  headers:new HttpHeaders({'Content-Type':'Application/json'})
}
const apiUrl = 'https://huevuapi.herokuapp.com/get-product';

@Injectable({
  providedIn: 'root'
})

export class ProductService {
  constructor(private httpClient: HttpClient) {}

  getAll():Observable<Product[]>{
    return this.httpClient.get<Product[]>(apiUrl).pipe(
    )
  }
}
