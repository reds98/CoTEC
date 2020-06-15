import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { MapComponent } from './components/map/map.component';
import {AboutComponent} from './components/about/about.component';
import {MeasuresComponent} from './components/measures/measures.component'; // Add this


const routes: Routes = [
  { path: 'home', component: HomeComponent},
  { path: 'map', component: MapComponent},
  { path: 'measures', component: MeasuresComponent},
  { path: 'about', component: AboutComponent},
  ];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
