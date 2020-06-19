import { Component, OnInit } from '@angular/core';
import {
  country_location,
  pathology,
  patient_status,
  hospital,
  sanity_measurements,
  enforced_measurements,
  medication
} from './models.js';

@Component({
  selector: 'app-admin-view',
  templateUrl: './admin-view.component.html',
  styleUrls: ['./admin-view.component.scss']
})
export class AdminViewComponent implements OnInit {
  objectKeys = Object.keys;
  objectValues = Object.values;
  /*
  [
    {
      "Name":"covid",
      "Symptoms":"tos",
      "Description":"F",
      "Treatment":"F"
    },
  ];
  */


  currentData =
  [
    {"Name":"Cartago","Country_Name":"Costa_Rica"},
    {"Name":"Alajuela","Country_Name":"Costa_Rica"}
  ];


  columns = this.getColumns();
  currentModel = country_location;
  currentTitle = "Regions";
  editStatus = false;
  currentItem = null;


  constructor() { }

  ngOnInit(): void {
  }

  onDelete(event) {
    let PK = null;
    for(let field of this.currentModel){
      if (field.PK) {
        PK = field.column;
        break;
      }
    }
    const item = event.data;
    console.log(item[PK]);
    event.confirm.resolve(event.source.data);
  }

  onUpdate(item): void {
    let PK = null;
    for(let field of this.currentModel){
      if (field.PK) {
        PK = field.column;
        break;
      }
    }
    this.currentItem = item;
    this.editStatus = true;

  }

  onCreate(): void {
    this.currentItem = {}
    for (let field of this.currentModel){
      this.currentItem[field.column] = "";
    }
    this.editStatus = true;
  }

  onClose(): void {
    this.editStatus = false;
    console.log(this.currentItem);
  }

  getColumns(){
    let cols;
    for (let i of this.currentData){
      cols = this.objectKeys(i);
    }
    cols.push('Acciones');
    return cols;
  }



}
