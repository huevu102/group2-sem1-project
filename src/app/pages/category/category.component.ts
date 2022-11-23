import {Component, OnInit} from "@angular/core";
import {ProductService} from "../../interfaces/product.service";
import {Product} from "../../interfaces/product.interface";

@Component({
  selector: 'app-category',
  templateUrl: './category.component.html',
  styleUrls: ['./category.component.css']
})

export class CategoryComponent implements OnInit{
  data: Product[] = [];

  constructor(private productService: ProductService) { }

  ngOnInit(): void {
    this.getAll();
  }

  getAll() {
    this.productService.getAll().subscribe((res:any) => {
      this.data = res;
    })
  }
}
