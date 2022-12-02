import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AgmCoreModule } from '@agm/core';

import {AppComponent} from './app.component';
import {HttpClientModule} from "@angular/common/http";
import {RouterModule, Routes} from "@angular/router";
import {HomeComponent} from "./pages/home/home.component";
import {AboutUsComponent} from "./pages/about-us/about-us.component";
import {GuideComponent} from "./pages/guide/guide.component";
import {CartComponent} from "./pages/cart/cart.component";
import {CheckOutComponent} from "./pages/check-out/check-out.component";
import {ContactComponent} from "./pages/contact/contact.component";
import {OrderDetailComponent} from "./pages/order-detail/order-detail.component";
import {ProductDetailComponent} from "./pages/product-detail/product-detail.component";
import {ShopAllComponent} from "./pages/shop-all/shop-all.component";
import {CategoryComponent} from "./pages/category/category.component";
import {SubCategoryComponent} from "./pages/sub-category/sub-category.component";
import {ThankYouComponent} from "./pages/thank-you/thank-you.component";
import {CategoryDraftComponent} from "./pages/category-DRAFT/category-draft.component"; //delete before deploy
import {ProductDetailDraftComponent} from "./pages/product-detail-DRAFT/product-detail-draft.component";//delete before deploy



const appRoutes: Routes = [
  {path: '', component: HomeComponent},
  {path: 'about-us', component: AboutUsComponent},
  {path: 'guide', component: GuideComponent},
  {path: 'cart', component: CartComponent},
  {path: 'check-out', component: CheckOutComponent},
  {path: 'contact', component: ContactComponent},
  {path: 'order-detail', component: OrderDetailComponent},
  {path: 'product-detail/:pid', component: ProductDetailComponent},
  {path: 'shop-all', component: ShopAllComponent},
  {path: 'category/:cid',  component: CategoryComponent},
  {path: 'sub-category/:sid',  component: SubCategoryComponent},
  {path: 'thank-you', component: ThankYouComponent},
  {path: 'category-draft', component: CategoryDraftComponent}, //delete before deploy
  {path: 'product-detail-draft', component: ProductDetailDraftComponent}, //delete before deploy

]

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    AboutUsComponent,
    GuideComponent,
    CartComponent,
    CheckOutComponent,
    ContactComponent,
    OrderDetailComponent,
    ProductDetailComponent,
    ShopAllComponent,
    CategoryComponent,
    SubCategoryComponent,
    ThankYouComponent,
    CategoryDraftComponent, //delete before deploy//
    ProductDetailDraftComponent, //delete before deploy

  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    RouterModule.forRoot(appRoutes, {scrollPositionRestoration: 'enabled'}),
    AgmCoreModule.forRoot({
      apiKey: 'AIzaSyDNI_ZWPqvdS6r6gPVO50I4TlYkfkZdXh8'
    }),
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
