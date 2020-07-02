import { Component, OnInit } from '@angular/core';
import {
  countryLocations,
  pathologies,
  status,
  hospitals,
  measures,
  medication
} from './models';
import {Services} from '../services/services';

@Component({
  selector: 'app-admin-view',
  templateUrl: './admin-view.component.html',
  styleUrls: ['./admin-view.component.scss']
})
export class AdminViewComponent implements OnInit {
  objectKeys = Object.keys;
  objectValues = Object.values;


  currentData: any;
  columns;
  currentModel;
  currentTitle = 'Regions';
  editStatus = false;
  currentItem = null;
  public dropdownList: any = [];
  public dropdownLists = [];
  public dropdown;
  public measures: any = measures;
  public hospitals: any = hospitals;
  public countryLocations: any = countryLocations;
  public pathologies: any = pathologies;
  public status: any = status;
  public medication: any = medication;
  private data: any;


  constructor(private service: Services) { }

  ngOnInit(): void {
  }

  // Allows change of admin view models
  changeModels(type, model){
    this.currentData = [];
    this.service.getElements(type).subscribe(data => {
      this.data = (data as any);
      this.currentData = this.data;
      this.currentModel = model;
      this.columns = this.getColumns();
      console.log(data);
      for (const key of this.currentModel){
        if (key.FK){
          this.loadData(this.data, key.FK);
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
  loadData(data, fk){
    this.dropdownLists = [];
    this.service.getData(fk).subscribe(dropDownData => {
      this.dropdown = (dropDownData as any).data;
      this.getDropDownList(this.dropdown, fk);
    });
  }

}
