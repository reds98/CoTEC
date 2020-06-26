import {AfterViewInit, Component, OnInit} from '@angular/core';
import { HttpClient, HttpErrorResponse } from '@angular/common/http';
import {Services} from '../services/services';
import {DatePipe} from '@angular/common';

@Component({
  selector: 'app-measures',
  templateUrl: './measures.component.html',
  styleUrls: ['./measures.component.scss'],
  providers: [DatePipe]
})
export class MeasuresComponent implements OnInit {

  // Attributes
  public countrySelected = 'Seleccione el país';
  public measures;
  public countries;
  public consultDay: any;
  public selected = false;
  public nextWeek;
  public mydate = new Date();
  public todayMeasures;
  public nextMeasures;
  public countriesList = [];

  constructor(private service: Services, private datePipe: DatePipe) {
    this.consultDay = this.datePipe.transform(this.mydate, 'yyyy-MM-dd');
  }

  ngOnInit(): void {
    this.service.getData('measures').subscribe(measures => {
      this.measures = (measures as any).data;
    });
    this.service.getData('countries').subscribe(countries => {
      this.countries = (countries as any).data;
      this.getCountriesList();
    });
  }


  // Returns countries list from data
  getCountriesList(){
    if (this.countries){
      for (let i = 0; i < this.countries.length; i++){
        this.countriesList.push(this.countries[i].Name);
      }
    }
  }


  // Gives format to selected dates
  selectDate(e){
    this.nextWeek = new Date();
    this.consultDay = this.datePipe.transform(e.value, 'yyyy-MM-dd');
    this.nextWeek.setDate(e.value.getDate() + 7 );
    this.nextWeek = this.datePipe.transform(this.nextWeek, 'yyyy-MM-dd');
    this.selected = true;
  }


  // Consults data and if match with dates and countries occurs, returns measurements
  getMeasurements(){
    const country = this.countrySelected;
    if (this.measures && this.countries){
      for (let i = 0; i < this.measures.length; i++){
        if (this.measures[i].Country == country){
          if (this.measures[i].Date == this.consultDay){
            this.todayMeasures = this.measures[i].Description;
          }
          if (this.measures[i].Date == this.nextWeek){
            this.nextMeasures = this.measures[i].Description;
          }
        }
      }
    }
  }


}
