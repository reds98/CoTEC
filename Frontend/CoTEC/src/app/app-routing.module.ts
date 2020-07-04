import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { MapComponent } from './components/map/map.component';
import {AboutComponent} from './components/about/about.component';
import {MeasuresComponent} from './components/measures/measures.component';
import {HomeComponent} from './components/home/home.component'; // Add this
import {AdminViewComponent} from './components/admin-view/admin-view.component';
import {HospitalViewComponent} from './components/hospital-view/hospital-view.component'

const routes: Routes = [
  { path: 'home', component: HomeComponent},
  { path: 'map', component: MapComponent},
  { path: 'measures', component: MeasuresComponent},
  { path: 'about', component: AboutComponent},
  { path: 'admin', component: AdminViewComponent},
  { path: 'hospital', component: HospitalViewComponent},
  ];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
