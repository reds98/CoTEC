import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { MapComponent } from './components/map/map.component';
import {AboutComponent} from './components/about/about.component';
import {AppComponent} from './app.component'; // Add this


const routes: Routes = [
  { path: 'map', component: MapComponent},
  { path: 'about', component: AboutComponent}
  ];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
