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



  pathData =   [    {
    "Name":"covid",
    "Symptoms":"tos",
    "Description":"F",
    "Treatment":"F"
  },
    {
      "Name":"covid",
      "Symptoms":"tos",
      "Description":"F",
      "Treatment":"F"
    }
  ];

  regionsData =   [
    {"Name":"Cartago","Country_Name":"Costa_Rica"},
    {"Name":"Alajuela","Country_Name":"Costa_Rica"}
  ];

  hospitalData =   [
    {
      "Id":"12345",
      "Name":"Juan Santamaria",
      "ICU_Capacity": "589",
      "Capacity": "2458",
      "Manager_name": "Karen",
      "Phone": "852963741",
      "Country_Name": "Costa Rica"
    },
    {
      "Id":"9875",
      "Name":"Mexico",
      "ICU_Capacity": "799",
      "Capacity": "6958",
      "Manager_name": "John",
      "Phone": "85489641",
      "Country_Name": "Costa Rica"
    },
  ];



  currentData = this.hospitalData;



  columns = this.getColumns();
  currentModel = pathology;
  currentTitle = "Regiones";
  editStatus = false;
  currentItem = null;


  constructor() { }

  ngOnInit(): void {
  }





  changeModels(type){
    this.currentData = [];
    switch (type) {
      case 'country_location':
        this.currentModel = country_location;
        this.currentTitle = "Regiones";
        this.currentData = this.regionsData;
        this.columns = this.getColumns();
        break;
      case 'pathology':
        this.currentModel = pathology;
        this.currentTitle = "Patologias";
        this.currentData = this.pathData;
        this.columns = this.getColumns();
        break;
      case 'patient_status':
        this.currentModel = patient_status;
        this.currentTitle = "Estados de pacientes";
        this.columns = this.getColumns();
        break;
      case 'hospital':
        this.currentModel = hospital;
        this.currentTitle = "Centros Hospitalarios";
        this.currentData = this.hospitalData;
        this.columns = this.getColumns();
        break;
      case 'sanity_measurements':
        this.currentModel = sanity_measurements
        this.currentTitle = "Medidas sanitarias";
        break;
      case 'enforced_measurements':
        this.currentModel = enforced_measurements;
        this.currentTitle = "Medidas por pais";
        break;
      case 'medication':
        this.currentModel = medication;
        this.currentTitle = "Medicamentos";
        break;
      default:
        this.currentModel = country_location;
        this.currentTitle = "Regions";
        break;
    }
  }


  onDelete(item): void {
    let PKs = [];
    for(let field of this.currentModel){
      if (field.PK) {
        PKs.push(field.column)
        break;
      }
    }

    console.log(PKs)
  }
  

  onUpdate(item): void {
    let PKs = [];
    for(let field of this.currentModel){
      if (field.PK) {
        PKs.push(field.column)
        break;
      }
    }
    this.currentItem = item;
    this.editStatus = true;

    console.log(PKs)
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
