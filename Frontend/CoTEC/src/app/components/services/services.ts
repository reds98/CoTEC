import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {IPatient} from '../Interfaces/IPatient';
import {IRegions} from '../Interfaces/IRegions';
import {IHospital} from '../Interfaces/IHospital';
import {IPathologies} from '../Interfaces/IPathologies';
import {IPatientStatus} from '../Interfaces/IPatientStatus';
import {IMedication} from '../Interfaces/IMedication';
import {ISanitaryMeasurements} from '../Interfaces/SanitaryMeasurements';
import {IEnforcedMeasurements} from '../Interfaces/IEnforcedMeasurements';
import {ICountries} from '../Interfaces/ICountries';
import {IContacts} from '../Interfaces/IContacts';
import {ITotalAccumulated} from '../Interfaces/ITotalAccumulated';

@Injectable({
  providedIn: 'root'
})
export class Services {
  private url = 'http://localhost/Anton/api/';
  //private url = 'http://localhost:55789/api/';

  constructor(private http: HttpClient) { }


  // Returns an observable of our serialized geojson object
  getStateShapes(): Observable<any> {
    return this.http.get('assets/world-map.json');
  }


  // Returns data from the server

  // Returns data for country accumulated from the server
  getCountryAccumulated<ICountryAccumulated>(country){
    return this.http.get<ICountryAccumulated>(this.url + 'CountryAccumulatedSP/' + country);
  }
  // Returns data for country accumulated increment from the server
  getLastWeekCountryAccumulated<ICountryAccumulated>(country){
    return this.http.get<ICountryAccumulated>(this.url + 'LastWeekCountryAccumulated/' + country);
  }
  // Returns data for country accumulated from the server
  getCountryMeasurements<ICountryMeasurements>(country, date){
    return this.http.get<ICountryMeasurements>(this.url + 'CountryMeasurementsSP/' + country + '/' + date);
  }
  getData(type){
    return this.http.get('assets/' + type + '.json');
  }
  // Selects report to return
  getReports(type){
    let observableItem;
    let reportUrl;
    switch (type) {
      case 'patientStatus':
        reportUrl = 'Reports/patientStatus';
        observableItem = this.getReportHttp(reportUrl);
        break;
      case 'newCasesWeek':
        reportUrl = 'Reports/newCasesWeek';
        observableItem = this.getReportHttp(reportUrl);
        break;
    }
  }

  getReportHttp(type){
    const responseType = 'arraybuffer';
    const mediaType = 'application/pdf';
    return this.http.get(this.url + type, { responseType }).subscribe(content => {
      const blob = new Blob([content as BlobPart], {type: mediaType});
      const fileURL = URL.createObjectURL(blob);
      window.open(fileURL);
    });
  }


  getElements(type: string): Observable<any> {
    let observable;
    switch (type) {
      case 'ContactedPersonSP':
        observable =  this.httpGet<IContacts>(type);
        break;
      case 'PatientsSP':
        observable =  this.httpGet<IPatient>(type);
        break;
      case 'RegionsSP':
        observable =  this.httpGet<IRegions>(type);
        break;
      case 'HospitalsSP':
        observable =  this.httpGet<IHospital>(type);
        break;
      case 'PathologiesSP':
        observable =  this.httpGet<IPathologies>(type);
        break;
      case 'PatientStatusSP':
        observable =  this.httpGet<IPatientStatus>(type);
        break;
      case 'MedicationSP':
        observable =  this.httpGet<IMedication>(type);
        break;
      case 'SanitaryMeasurementsSP':
        observable =  this.httpGet<ISanitaryMeasurements>(type);
        break;
      case 'EnforcedMeasurementsSP':
        observable =  this.httpGet<IEnforcedMeasurements>(type);
        break;
      case 'CountriesSP':
        observable =  this.httpGet<ICountries>(type);
        break;
      case 'lastWeekAccumulated':
        observable =  this.httpGet<ITotalAccumulated>(type);
        break;
      default:
        observable = {};
    }

    return observable;
  }

  // calls http.get() with the corresponding resource url.
  private httpGet<T>(resource: string): Observable<T> {
    return this.http.get<T>(this.url + resource);
  }
  DeletePatient(id: any): Observable < any >{
    return this.http.delete(this.url + '/PatientsSP/' + id);
  }

  DeleteContactedPerson(id: any): Observable < any >{
    return this.http.delete(this.url + '/ContactedPersonSP/' + id);
  }

   DeleteRegion(id: any): Observable < any >{
    return this.http.delete(this.url + '/RegionsSP/' + id);
  }
  DeleteEnfermedad(id: any): Observable< any >{
    return this.http.delete(this.url + '/PathologiesSP/' + id);
  }
  DeleteMedication(id: any): Observable< any >{
    return this.http.delete(this.url + '/MedicationSP/' + id);
  }
  DeletePatientStatus(id: any): Observable< any >{
    return this.http.delete(this.url + '/PatientStatusSP/' + id);
  }
  DeleteSanitaryMeasurements(id: any): Observable< any >{
    return this.http.delete(this.url + '/SanitaryMeasurementsSP/' + id);
  }
  DeleteHospital(id: any): Observable< any >{
    return this.http.delete(this.url + '/HospitalsSP/' + id);
  }
  CreateContactedPerson(Region: any): Observable< any >{
    console.log(Region)
    return this.http.post(this.url + '/ContactedPersonSP', Region);
  }
  CreatePatient(Region: any): Observable< any >{
    console.log(Region)
    return this.http.post(this.url + '/PatientsSP', Region);
  }
  CreateRegion(Region: any): Observable< any >{
    return this.http.post(this.url + '/RegionsSP', Region);
  }
  CreateEnfermedad(Region: any): Observable< any >{
    return this.http.post(this.url + '/PathologiesSP', Region);
  }
  CreateMedication(Region: any): Observable< any >{
    return this.http.post(this.url + '/MedicationSP', Region);
  }
  CreatePatientStatus(Region: any): Observable< any >{
    return this.http.post(this.url + '/PatientStatusSP', Region);
  }
  CreateEnforcedMeasurements(Region: any): Observable< any >{
    return this.http.post(this.url + '/EnforcedMeasurementsSP', Region);
  }
  CreateSanitaryMeasurements(Region: any): Observable< any >{
    return this.http.post(this.url + '/SanitaryMeasurementsSP', Region);
  }
  CreateHospital(Region: any): Observable< any >{
    return this.http.post(this.url + '/HospitalsSP', Region);
  }
}
