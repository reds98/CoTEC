import { Component, OnInit } from '@angular/core';
import {Services} from '../services/services';
import {
  patient,
  lastContacts
} from '../hospital-view/models';

@Component({
  selector: 'app-hospital-view',
  templateUrl: './hospital-view.component.html',
  styleUrls: ['./hospital-view.component.scss']
})
export class HospitalViewComponent implements OnInit {
  objectKeys = Object.keys;
  objectValues = Object.values;

  patientData =   [
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

  currentData: any = this.patientData;
  columns;
  currentModel;
  currentTitle = 'Patient';
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
      case 'patient':
        this.currentModel = patient;
        this.columns = this.getColumns();
        this.currentTitle = 'Patient';
        this.currentData = this.patientData;
        break;
      case 'LastContacts':
        this.currentModel = lastContacts;
        this.currentTitle = 'Last contacted people';
        break;
      default:
        this.currentModel = patient;
        this.currentTitle = 'Patient';
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
    const cols: any = [];
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
      dropdown.forEach(e => {
        this.dropdownList.push(e.Name);
      });
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
    for (const key of this.currentModel){
      if (key.FK){
        this.dropdownLists = [];
        switch (key.FK) {
          case 'Patient':
            this.getPatient(key.FK);
            break;
          case 'LastContacts':
            this.getLastContacts(key.FK);
            break;
          default:
            this.getPatient(key.FK);
            break;
        }

      }
    }
  }


  getPatient(fk){
    this.service.getCountries().subscribe(countries => {
      this.dropdown = countries.countries;
      this.getDropDownList(this.dropdown, fk);
    });
  }

  getLastContacts(fk){
    this.service.getMeasures().subscribe(measures => {
      this.dropdown = measures.measures;
      this.getDropDownList(this.dropdown, fk);
    });
  }
}
