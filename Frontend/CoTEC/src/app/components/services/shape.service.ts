import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class ShapeService {
  private countries;

  constructor(private http: HttpClient) { }

  // Returns an observable of our serialized geojson object
  getStateShapes(): Observable<any> {
    return this.http.get('/assets/world-map.json');
  }


}
