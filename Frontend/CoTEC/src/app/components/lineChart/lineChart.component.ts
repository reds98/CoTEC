import {Component, Input, OnInit, ViewChild} from '@angular/core';
import {ChartDataSets, ChartOptions} from 'chart.js';
import {BaseChartDirective, Color, Label} from 'ng2-charts';
import * as pluginAnnotations from 'chartjs-plugin-annotation';

@Component({
  selector: 'app-chart',
  templateUrl: './lineChart.component.html',
  styleUrls: ['./lineChart.component.scss']
})
export class LineChartComponent implements OnInit {

  @Input() chartDataSets;
  @Input() chartLabels;

  // Settings for the chart
  chartOptions = {
    responsive: true,
    maintainAspectRatio: false
  };

  colors = [
    {
      backgroundColor: 'rgba(103, 58, 183, .3)',
      borderColor: 'rgb(103, 58, 183)'
    },
    {
      backgroundColor: 'rgb(248, 245, 64, .8)',
      borderColor: 'rgb(248, 245, 64)'
    },
    {
      backgroundColor: 'rgb(101, 221, 155, .8)',
      borderColor: 'rgb(101, 221, 155)'
    },
    {
      backgroundColor: 'rgb(251, 57, 88, .4)',
      borderColor: '#fb3958'
    }
  ];


  constructor() { }

  ngOnInit(): void {
  }

}
