import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { MapComponent } from './components/map/map.component'; // Add this


const routes: Routes = [

  { path: '', redirectTo: '/', pathMatch: 'full'},
  { path: 'map', component: MapComponent}
  ];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
