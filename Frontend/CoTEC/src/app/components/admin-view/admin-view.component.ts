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
import {Services} from "../services/services";

@Component({
  selector: 'app-admin-view',
  templateUrl: './admin-view.component.html',
  styleUrls: ['./admin-view.component.scss']
})
export class AdminViewComponent implements OnInit {
  objectKeys = Object.keys;
  objectValues = Object.values;


  pathData =   [    {
    Name: 'covid',
    Symptoms: 'tos',
    Description: 'F',
    Treatment: 'F'
  },
    {
      Name: 'covid',
      Symptoms: 'tos',
      Description: 'F',
      Treatment: 'F'
    }
  ];

  regionsData =   [
    {Name: 'Cartago', Country_Name: 'Costa_Rica'},
    {Name: 'Alajuela', Country_Name: 'Costa_Rica'}
  ];

  hospitalData =   [
    {
      Id: '12345',
      Name: 'Juan Santamaria',
      ICU_Capacity: '589',
      Capacity: '2458',
      Manager_name: 'Karen',
      Phone: '852963741',
      Country_Name: 'Costa Rica'
    },
    {
      Id: '9875',
      Name: 'Mexico',
      ICU_Capacity: '799',
      Capacity: '6958',
      Manager_name: 'John',
      Phone: '85489641',
      Country_Name: 'Costa Rica'
    },
  ];

  currentData: any = this.hospitalData;
  columns;
  currentModel;
  currentTitle = 'Regiones';
  editStatus = false;
  currentItem = null;
  public countries;
  public dropdownList: any = [];
  public dropdownLists = [];
  public dropdown;
  public measures: any;
  public index = -1;
  public i = 0;


  constructor(private service: Services) { }

  ngOnInit(): void {
    this.service.getMeasures().subscribe(measures => {
      this.measures = measures.measures;
    });
  }

  // Allows change of admin view models
  changeModels(type){
    this.currentData = [];
    switch (type) {
      case 'country_location':
        this.currentModel = country_location;
        this.columns = this.getColumns();
        this.currentTitle = 'Regiones';
        this.currentData = this.regionsData;
        break;
      case 'pathology':
        this.currentModel = pathology;
        this.currentTitle = 'Patologias';
        this.currentData = this.pathData;
        this.columns = this.getColumns();
        break;
      case 'patient_status':
        this.currentModel = patient_status;
        this.currentTitle = 'Estados de pacientes';
        this.columns = this.getColumns();
        break;
      case 'hospital':
        this.currentModel = hospital;
        this.currentTitle = 'Centros Hospitalarios';
        this.currentData = this.hospitalData;
        this.columns = this.getColumns();
        break;
      case 'sanity_measurements':
        this.currentModel = sanity_measurements;
        this.currentTitle = 'Medidas sanitarias';
        break;
      case 'enforced_measurements':
        this.currentModel = enforced_measurements;
        this.currentTitle = 'Medidas por pais';
        break;
      case 'medication':
        this.currentModel = medication;
        this.currentTitle = 'Medicamentos';
        break;
      default:
        this.currentModel = country_location;
        this.currentTitle = 'Regions';
        break;
    }
    this.getData();
  }


  // Deletes item
  onDelete(item): void {
    const PKs = [];
    for (const field of this.currentModel){
      if (field.PK) {
        PKs.push(field.column);
        break;
      }
    }

    console.log(PKs);
  }


  // Updates or edits item
  onUpdate(item): void {
    const PKs = [];
    for (const field of this.currentModel){
      if (field.PK) {
        PKs.push(field.column);
        break;
      }
    }
    this.currentItem = item;
    this.editStatus = true;

    console.log(PKs);
  }

  // Creates item
  onCreate(): void {
    this.currentItem = {};
    for (const field of this.currentModel){
      this.currentItem[field.column] = '';
    }
    this.editStatus = true;
  }

  // Closes editing or creating mode
  onClose(): void {
    this.editStatus = false;
    console.log(this.currentItem);
  }

  // Gets current columns and adds options column
  getColumns(){
    let cols: any = [];
    for (const i of this.currentModel){
      cols.push(i.column);
    }
    cols.push('Acciones');
    return cols;
  }

  // Gets all lists for the dropdown menu options
  getDropDownList(dropdown, fk){
    this.dropdownList = [];
    let list;
    if (dropdown){
      for (let i = 0; i < dropdown.length; i++){
        this.dropdownList.push(dropdown[i].Name);
      }
    }
    list = [fk, this.dropdownList];
    this.dropdownLists.push(list);
    console.log(this.dropdownLists);
  }

  // Gets the specific list for each dropdown, according to FK
  getOptionsList(fk): any{
    let result = [];
    this.dropdownLists.forEach(e => {
      if (e[0] === fk){
        result = e[1];
      }
    });
    return result;
  }

  getData(){
    for (let key of this.currentModel){
      if (key.FK){
        this.dropdownLists = [];
        switch (key.FK) {
          case 'SanityMeasurements':
            this.getMeasures(key.FK);
            break;
          case 'Countries':
            this.getCountries(key.FK);
            break;
          default:
            this.getCountries(key.FK);
            break;
        }

      }
    }
  }


  getCountries(fk){
    this.service.getCountries().subscribe(countries => {
      this.dropdown = countries.countries;
      this.getDropDownList(this.dropdown, fk);
    });
  }

  getMeasures(fk){
    this.service.getMeasures().subscribe(measures => {
      this.dropdown = measures.measures;
      this.getDropDownList(this.dropdown, fk);
    });
  }

}
