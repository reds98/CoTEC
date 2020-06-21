import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { MapComponent } from './components/map/map.component';
import { HttpClientModule } from '@angular/common/http';
import { ShapeService } from './components/services/shape.service';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import {MatSidenavModule} from '@angular/material/sidenav';
import {MatCheckboxModule} from '@angular/material/checkbox';
import {MatListModule} from '@angular/material/list';
import {MatIconModule} from '@angular/material/icon';
import {MatToolbarModule} from '@angular/material/toolbar';
import { AboutComponent } from './components/about/about.component';
import { SidenavComponent } from './components/sidenav/sidenav.component';
import { CommonModule } from '@angular/common';
import {MeasuresComponent} from './components/measures/measures.component';
import { HomeComponent } from './components/home/home.component';
import {ChartsModule} from 'ng2-charts';
import { LineChartComponent } from './components/lineChart/lineChart.component';
import { PieChartComponent } from './components/pie-chart/pie-chart.component';
import {MatFormFieldModule} from '@angular/material/form-field';
import {MatInputModule} from '@angular/material/input';
import {MatButtonModule} from '@angular/material/button';
import {ReactiveFormsModule, FormsModule} from '@angular/forms';
import { AdminViewComponent } from './components/admin-view/admin-view.component';
import { HospitalViewComponent } from './components/hospital-view/hospital-view.component';
import {MatSelectModule} from '@angular/material/select';

@NgModule({
  declarations: [
    AppComponent,
    MapComponent,
    MeasuresComponent,
    AboutComponent,
    SidenavComponent,
    HomeComponent,
    LineChartComponent,
    PieChartComponent,
    AdminViewComponent,
    HospitalViewComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    BrowserAnimationsModule,
    MatSidenavModule,
    MatCheckboxModule,
    MatListModule,
    MatIconModule,
    MatToolbarModule,
    ChartsModule,
    MatFormFieldModule,
    MatInputModule,
    MatButtonModule,
    ReactiveFormsModule,
    FormsModule,
    MatSelectModule
  ],
  providers: [
    ShapeService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
