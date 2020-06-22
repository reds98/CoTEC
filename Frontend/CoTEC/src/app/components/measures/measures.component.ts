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
export class MeasuresComponent implements AfterViewInit {

  public countrySelected = 'Seleccione el país';
  public measures;
  public countries;
  private today;
  public mydate = new Date();
  public todayMeasures;
  public nextMeasures;
  public countriesList = [];

  constructor(private service: Services, private datePipe: DatePipe) {
    this.today = this.datePipe.transform(this.mydate, 'yyyy-MM-dd', 'GMT-6');
  }

  ngAfterViewInit(): void {
    this.today = this.today.split('-').join('');
    console.log(this.today);
    this.service.getMeasures().subscribe(measures => {
      this.measures = measures.measures;
    });
    this.service.getCountries().subscribe(countries => {
      this.countries = countries.countries;
      this.getCountries();
    });
  }


  // Returns countries list from data
  getCountries(){
    if (this.countries){
      for (let i = 0; i < this.countries.length; i++){
        this.countriesList.push(this.countries[i].name);
      }
    }
  }

  getTodayMeasure(){
    const country = this.countrySelected;
    if (this.measures && this.countries){
      for (let i = 0; i < this.measures.length; i++){
        if (this.measures[i].country == country){
          if (this.measures[i].date == 'present'){
            this.todayMeasures = this.measures[i].description;
          }
          if (this.measures[i].date == 'nextWeek'){
            this.nextMeasures = this.measures[i].description;
          }
        }
      }
    }
  }
}
