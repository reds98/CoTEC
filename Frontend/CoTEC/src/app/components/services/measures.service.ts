import { Injectable } from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {Observable} from "rxjs";

@Injectable({
  providedIn: 'root'
})
export class MeasuresService {

  constructor(private http: HttpClient) { }

  // Returns a json object with health measures
  getMeasures(): Observable<any> {
    return this.http.get('/assets/measures.json');
  }
}
