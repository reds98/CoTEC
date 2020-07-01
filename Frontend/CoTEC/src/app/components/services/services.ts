import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';

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
        observableItem = this.getHttp(reportUrl);
        break;
      case 'newCasesWeek':
        reportUrl = 'Reports/newCasesWeek';
        observableItem = this.getHttp(reportUrl);
        break;
    }
  }

  getHttp(type){
    const responseType = 'arraybuffer';
    const mediaType = 'application/pdf';
    return this.http.get(this.url + type, { responseType }).subscribe(content => {
      const blob = new Blob([content as BlobPart], {type: mediaType});
      const fileURL = URL.createObjectURL(blob);
      window.open(fileURL);
    });
  }
}
