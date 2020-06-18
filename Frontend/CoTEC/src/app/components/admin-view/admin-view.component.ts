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
  styleUrls: ['./admin-view.component.css']
})
export class AdminViewComponent implements OnInit {

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
  currentModel = country_location;
  currentTitle = "Regions";
  editStatus = false;
  currentItem = null;
  
  constructor() { }

  ngOnInit(): void {
    console.log("hello",country_location)
  }

  onDelete(item): void {
    let PK = null;
    for(let field of this.currentModel){
      if (field.PK) {
        PK = field.column
        break;
      }
    }

    console.log(item[PK])
  }

  onUpdate(item): void {
    let PK = null;
    for(let field of this.currentModel){
      if (field.PK) {
        PK = field.column
        break;
      }
    }
    this.currentItem = item;
    this.editStatus = true;

    console.log(item[PK])
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
  }

}
