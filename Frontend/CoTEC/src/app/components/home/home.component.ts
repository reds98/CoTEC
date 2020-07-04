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

  chartCountryData: any = [{ data: [], label: '' }];

  constructor(private service: Services) { }

  ngOnInit() {
    this.service.getElements('accumulated').subscribe(totalAccumulated => {
      this.globalAccumulated = (totalAccumulated as any).data;
      this.getGlobalData();
    });
    this.service.getElements('countryAccumulated').subscribe(countryAccumulated => {
      this.countryAccumulated = (countryAccumulated as any).data;
      this.getCountryData();
    });
    this.service.getElements('countries').subscribe(countries => {
      this.countries = (countries as any).data;
      this.getCountriesList();
    });
  }

  // Load data to update Global chart
  getGlobalData(){
    if (this.globalAccumulated !== []){
      this.chartGlobalData = [
        { data: this.globalAccumulated[0].activos_dia, label: 'Activos' },
        { data: this.globalAccumulated[0].recuperados_dia, label: 'Recuperados' },
        { data: this.globalAccumulated[0].muertos_dia, label: 'Muertos' },
        { data: this.globalAccumulated[0].contagiados_dia, label: 'Contagiados' }
      ];
      this.chartLabels = this.globalAccumulated[0].Fechas;
    }
  }

  // Load data to update Country chart
  getCountryData(){
    if (this.countryAccumulated !== []){
      this.chartCountryData = [
        { data: this.countryAccumulated[0].activos_dia, label: 'Activos' },
        { data: this.countryAccumulated[0].recuperados_dia, label: 'Recuperados' },
        { data: this.countryAccumulated[0].muertos_dia, label: 'Muertos' },
        { data: this.countryAccumulated[0].contagiados_dia, label: 'Contagiados' }
      ];
    }
  }

  getCountriesList(){
    if (this.countries){
      for (let i = 0; i < this.countries.length; i++){
        this.countriesList.push(this.countries[i].Name);
      }
    }
  }

  calcGlobalIncrease(){
  }


}
