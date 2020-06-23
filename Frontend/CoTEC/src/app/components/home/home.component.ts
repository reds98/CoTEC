import { Component, OnInit, ViewChild } from '@angular/core';
import {Services} from "../services/services";

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {

  // Attributes
  public totalAccumulated: any = [];


  // Initial data for awaiting response
  chartGlobalData: any = [{ data: [], label: '' }];
  chartLabels = [''];

  constructor(private service: Services) { }

  ngOnInit() {
    this.service.getTotalAccumulated().subscribe(totalAccumulated => {
      this.totalAccumulated = totalAccumulated.acumuladoTotal;
      this.getGlobalData();
    });
  }

  // Load data to update chart
  getGlobalData(){
    if (this.totalAccumulated !== []){
      this.chartGlobalData = [
        { data: this.totalAccumulated[0].activos_dia, label: 'Activos' },
        { data: this.totalAccumulated[0].recuperados_dia, label: 'Recuperados' },
        { data: this.totalAccumulated[0].muertos_dia, label: 'Muertos' },
        { data: this.totalAccumulated[0].contagiados_dia, label: 'Contagiados' }
      ];
      this.chartLabels = this.totalAccumulated[0].Fechas;
    }
  }
}
