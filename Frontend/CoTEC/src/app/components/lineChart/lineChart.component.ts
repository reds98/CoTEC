import {Component, OnInit, ViewChild} from '@angular/core';
import {ChartDataSets, ChartOptions} from 'chart.js';
import {BaseChartDirective, Color, Label} from 'ng2-charts';
import * as pluginAnnotations from 'chartjs-plugin-annotation';

@Component({
  selector: 'app-chart',
  templateUrl: './lineChart.component.html',
  styleUrls: ['./lineChart.component.scss']
})
export class LineChartComponent implements OnInit {

  // Settings for the chart
  chartOptions = {
    responsive: true,
    maintainAspectRatio: false
  };
  // Data that the chart contains
  chartData = [
    { data: [330, 600, 460, 700, 500, 690, 85, 654], label: 'Incremento diario de casos' }
  ];
  chartLabels = ['Día 1', 'Día 2', 'Día 3', 'Día4', 'Día 1', 'Día 2', 'Día 3', 'Día4'];

  colors = [
    {
      backgroundColor: 'rgba(103, 58, 183, .3)',
      borderColor: 'rgb(103, 58, 183)'
    },
    // ...colors for additional data sets
  ];

  constructor() { }

  ngOnInit(): void {
  }

}
