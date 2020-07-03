import { Component, OnInit } from '@angular/core';
import {
  CountryLocations,
  Pathologies,
  PatientStatus,
  Hospitals,
  SanitaryMeasurements,
  EnforcedMeasurements,
  Medication
} from './models';
import {Services} from '../services/services';
import { THIS_EXPR } from '@angular/compiler/src/output/output_ast';

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
  public Hospitals: any = Hospitals;
  public CountryLocations: any = CountryLocations;
  public Pathologies: any = Pathologies;
  public PatientStatus: any = PatientStatus;
  public Medication: any = Medication;
  public SanitaryMeasurements: any = SanitaryMeasurements;
  public EnforcedMeasurements: any = EnforcedMeasurements;
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
    let PK: any;
    for (const field of this.currentModel){
      if (field.PK) {
        PK = field.column;
        break;
      }
    }

    // PK value
    console.log(item[PK]);
    console.log(this.currentModel==CountryLocations);
    if(this.currentModel==CountryLocations){
      this.service.DeleteRegion(item[PK]).subscribe(respuesta => {
        console.log(respuesta)
      });
    }
    if(this.currentModel==Pathologies){
      this.service.DeleteEnfermedad(item[PK]).subscribe(respuesta => {
        console.log(respuesta)
      });
    }
    if(this.currentModel==Medication){
      this.service.DeleteMedication(item[PK]).subscribe(respuesta => {
        console.log(respuesta)
      });
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
    if(this.currentModel==CountryLocations){
      console.log("vamos a crear una region perro")
      this.service.CreateRegion(this.currentItem).subscribe(respuesta => {
        console.log(respuesta)
      });
      

    }
    if(this.currentModel==Pathologies){
      console.log("vamos a crear una region perro")
      this.service.CreateEnfermedad(this.currentItem).subscribe(respuesta => {
        console.log(respuesta)
      });
      

    }
    if(this.currentModel==Medication){
      console.log("vamos a crear una region perro")
      this.service.CreateMedication(this.currentItem).subscribe(respuesta => {
        console.log(respuesta)
      });
      

    }
    console.log(this.currentItem);
    
  }

  // Gets current columns and adds options column
  getColumns(){
    const cols: any = [];
    for (const i of this.currentModel){
      cols.push(i.column);
    }
    cols.push('Accions');
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
    const type = (fk + 'SP');
    this.service.getElements(type).subscribe(dropDownData => {
      this.dropdown = (dropDownData as any);
      this.getDropDownList(this.dropdown, fk);
    });
  }

}
