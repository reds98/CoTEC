import { Component, OnInit, ViewChild } from '@angular/core';
import {Services} from '../services/services';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {

  // Attributes
  public globalAccumulated: any = [];
  public countryAccumulated: any = [];
  public countrySelected = 'Seleccione el país';
  public countries;
  public countriesList = [];


  // Initial data for awaiting response
  chartGlobalData: any = [{ data: [], label: '' }];
  chartLabels = [''];
  countryChartLabels = [''];

  chartCountryData: any = [{ data: [], label: '' }];

  constructor(private service: Services) { }

  ngOnInit() {
    this.service.getElements('lastWeekAccumulated').subscribe(totalAccumulated => {
      this.globalAccumulated = (totalAccumulated as any);
      console.log(this.globalAccumulated);
      console.log(this.globalAccumulated.INFECTED);
      this.getGlobalData();
    });

    this.service.getElements('CountriesSP').subscribe(countries => {
      this.countries = (countries as any);
      this.getCountriesList();
    });
  }

  // Load data to update Global chart
  getGlobalData(){
    if (this.globalAccumulated !== []){
      this.chartGlobalData = [
        { data: this.globalAccumulated.active_day, label: 'Activos' },
        { data: this.globalAccumulated.recovered_day, label: 'Recuperados' },
        { data: this.globalAccumulated.dead_day, label: 'Muertos' },
        { data: this.globalAccumulated.infected_day, label: 'Contagiados' }
      ];
      this.chartLabels = this.globalAccumulated.Dates;
    }
  }


  getCountryData(){
    this.service.getLastWeekCountryAccumulated(this.countrySelected).subscribe(countryAccumulated => {
      this.countryAccumulated = (countryAccumulated as any);
      this.getCountryAccumulated();
    });
  }
  // Load data to update Country chart
  getCountryAccumulated(){
    console.log(this.countryAccumulated);
    if (this.countryAccumulated !== []){
      this.chartCountryData = [
        { data: this.countryAccumulated.active_day, label: 'Activos' },
        { data: this.countryAccumulated.recovered_day, label: 'Recuperados' },
        { data: this.countryAccumulated.dead_day, label: 'Muertos' },
        { data: this.countryAccumulated.infected_day, label: 'Contagiados' }
      ];
      this.countryChartLabels = this.countryAccumulated.Dates;
    }
  }

  getCountriesList(){
    if (this.countries){
      for (let i = 0; i < this.countries.length; i++){
        this.countriesList.push(this.countries[i].Name);
      }
    }
  }


}
