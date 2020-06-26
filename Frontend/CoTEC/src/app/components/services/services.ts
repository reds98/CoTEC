import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {observable, Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class Services {
  private url = 'http://localhost:53122/api/';

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
    switch (type) {
      case 'patientStatus':
        observableItem = this.getData(type);
        break;
      case 'newCasesWeek':
        observableItem = this.getData(type);
        break;
    }
  }
}
