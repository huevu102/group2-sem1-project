import {Component, OnInit} from "@angular/core";
import {ProductService} from "../../interfaces/product.service";
import {Product} from "../../interfaces/product.interface";

@Component({
  selector: 'app-category-DRAFT',
  templateUrl: './category-draft.component.html',
  styleUrls: ['./category-draft.component.css']
})

export class CategoryDraftComponent implements OnInit{
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
