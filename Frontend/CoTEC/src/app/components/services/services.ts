import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {IPatient} from '../Interfaces/IPatient';

@Injectable({
  providedIn: 'root'
})
export class Services {
  private url = 'http://localhost:55789/api/';

  constructor(private http: HttpClient) { }


  // Returns an observable of our serialized geojson object
  getStateShapes(): Observable<any> {
    return this.http.get('/assets/world-map.json');
  }


  // Returns data from the server
  getData(type){
    return this.http.get('/assets/' + type + '.json');
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
      case 'Patients':
        observable =  this.httpGet<IPatient>(type);
        break;
      case 'Hospital':
        observable =  this.httpGet<IPatient>(type);
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
}
