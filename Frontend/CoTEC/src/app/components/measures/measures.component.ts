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
  public nextWeekMeasures;
  public countriesList = [];
  public todayName: any | string;
  public nextWeekName: any | string;

  constructor(private service: Services, private datePipe: DatePipe) {
    this.consultDay = this.datePipe.transform(this.mydate, 'yyyy-MM-dd');
  }

  ngOnInit(): void {

    this.service.getElements('CountriesSP').subscribe(countries => {
      this.countries = (countries as any);
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
  getHttp(){
    const country = this.countrySelected;
    if (this.consultDay && this.nextWeek){
      this.service.getCountryMeasurements(this.countrySelected, this.consultDay).subscribe(measures => {
        this.measures = (measures as any);
        this.measures.forEach (e => {
          this.renderMeasurements(e);
        });
      });

    }
  }

  renderMeasurements(item){
    this.todayName = item.Name;
    this.todayMeasures = item.Description;
    this.nextWeekName = item.Name;
    this.nextWeekMeasures = item.Description;
  }

}
