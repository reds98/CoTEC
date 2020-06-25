import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';

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

}
