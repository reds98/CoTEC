import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { MapComponent } from './components/map/map.component';
import {AboutComponent} from './components/about/about.component';
import {HomeComponent} from './components/home/home.component'; // Add this


const routes: Routes = [
  { path: 'home', component: HomeComponent},
  { path: 'map', component: MapComponent},
  { path: 'about', component: AboutComponent}
  ];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
