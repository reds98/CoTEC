import { Component, OnInit } from '@angular/core';
// @ts-ignore
import * as data from '../../data.json';
import {MeasuresService} from '../services/measures.service';
import {DatePipe} from '@angular/common';

@Component({
  selector: 'app-measures',
  templateUrl: './measures.component.html',
  styleUrls: ['./measures.component.scss'],
  providers: [DatePipe]
})
export class MeasuresComponent implements OnInit {

  public countrySelected = 'Seleccione el país';
  public itemSelected;
  public countries: any = (data  as  any).default;
  private today;
  public nextDate;
  public otherDate;
  public mydate = new Date();
  public todayMeasures;
  public nextMeasures;

  constructor(private measureService: MeasuresService, private datePipe: DatePipe) {
    this.today = this.datePipe.transform(this.mydate, 'yyyy-MM-dd');
  }

  ngOnInit(): void {
    console.log(data);
    this.today = this.today.split('-').join('');
    console.log(this.today);
  }

  toggleDropdown($event: MouseEvent, item, id): void{
    $event.preventDefault();
    $event.stopPropagation();
    this.countrySelected = item;
    this.itemSelected = id - 1;
    this.splitMeasures();
  }

  splitMeasures(): void{
    for (let information of this.countries[this.itemSelected].measures){
      if (this.today >= information.date) {
        this.todayMeasures = information.measures;
      }
      else {
        this.nextDate = new Date(information.date / 10**4,(information.date/10**2)%10**2, information.date%10**2);
        this.otherDate = this.nextDate.toUTCString();
        this.nextMeasures = information.measures;
      }
    }
    console.log(this.todayMeasures);
  }

}
