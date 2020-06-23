import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class Services {
  private url = 'http://localhost:53122/api/';

  constructor(private http: HttpClient) { }

  // Returns a json object with health measures
  getMeasures(): Observable<any> {
    return this.http.get('/assets/measures.json');
  }

  getCountries(): Observable<any> {
    return this.http.get('/assets/countries.json');
  }

  getGlobalAccumulated(): Observable<any>{
    return this.http.get('/assets/accumulated.json');
  }

  getCountryAccumulated(): Observable<any>{
    return this.http.get('/assets/CountryAccumulated.json');
  }

  getRegions(): Observable<any>{
    return this.http.get(this.url + 'values');
  }
}
