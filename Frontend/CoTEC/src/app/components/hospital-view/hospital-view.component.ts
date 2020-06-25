import { Component, OnInit } from '@angular/core';
import {Services} from '../services/services';
import {
  patients,
  contacts
} from '../hospital-view/models';

@Component({
  selector: 'app-hospital-view',
  templateUrl: './hospital-view.component.html',
  styleUrls: ['./hospital-view.component.scss']
})
export class HospitalViewComponent implements OnInit {
  objectKeys = Object.keys;
  objectValues = Object.values;



  // Attributes
  currentData: any;
  columns;
  currentModel;
  currentTitle = 'Select an option to administrate';
  editStatus = false;
  currentItem = null;
  public dropdownList: any = [];
  public dropdownLists = [];
  public dropdown;
  public patientsModel: any = patients;
  public contactsModel: any = contacts;
  private data: any;


  constructor(private service: Services) { }

  ngOnInit(): void {
  }

  // Gets data from server and allows changing between models
  changeModels(type, model){
    this.currentData = [];
    if (!type) {
      return;
    }
    this.service.getData(type).subscribe(data => {
      this.data = (data as any).data;
      this.currentData = this.data;
      this.currentModel = model;
      this.columns = this.getColumns();
      for (const key of this.currentModel){
        if (key.FK){
          this.loadData(this.data, key.FK, key.PK);
        }
      }
      });
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
  getDropDownList(dropdown, fk, pk?){
    this.dropdownList = [];
    let list;
    if (dropdown){
      dropdown.forEach(e => {
        if (e.Name){
          this.dropdownList.push(e.Name);
        }
        else{
          this.dropdownList.push(e.SSN);
        }
      });
    }
    list = [fk, this.dropdownList];
    this.dropdownLists.push(list);
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

  // Loads data from server to render dropdowns
  loadData(data, fk, pk){
    this.dropdownLists = [];
    this.service.getData(fk).subscribe(dropDownData => {
      this.dropdown = (dropDownData as any).data;
      this.getDropDownList(this.dropdown, fk, pk);
    });
  }

}
