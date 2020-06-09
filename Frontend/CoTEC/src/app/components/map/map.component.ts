import { Component, AfterViewInit } from '@angular/core';
import * as L from 'leaflet';
import * as $ from 'jquery';
import {ShapeService} from '../services/shape.service';

@Component({
  selector: 'app-map',
  templateUrl: './map.component.html',
  styleUrls: ['./map.component.css']
})


export class MapComponent implements AfterViewInit {

  // Attributes
  private map;
  private countries;
  public isHovered;
  public message;
  public popup = L.popup();
  public layer;

  constructor(private shapeService: ShapeService) { }

  ngAfterViewInit(): void {
    this.initMap();
    this.shapeService.getStateShapes().subscribe(countries => {
      this.countries = countries;
      this.initCountriesLayer();
    });
  }

  // Add the shapes to the map as a layer, includes mouse events over layers
  private initCountriesLayer() {
    const countryLayer = L.geoJSON(this.countries, {
      style: (feature) => ({
        weight: 3,
        opacity: 0.5,
        color: '#008f68',
        fillOpacity: 0.8,
        fillColor: '#6DB65B'
      }),
      onEachFeature: (feature, layer) => (
        layer.on({
          mousemove: (e) => (this.popupUpdate(e)),
          mouseover: (e) => (this.highlightFeature(e)),
          mouseout: (e) => (this.resetFeature(e)),
          click: (e) => (this.selectFeature(e))
        })
      )
    });

    this.map.addLayer(countryLayer);
  }

  // Updates the position of the popup
  popupUpdate(e){
    const layer = e.target;
    if (this.isHovered){
      this.initPopup(e, layer);
    }
    else{
      this.popup.closePopup();
    }
  }

  // Highlights region when hovered
  private highlightFeature(e)  {
    this.isHovered = true;
    const layer = e.target;
    layer.setStyle({
      weight: 10,
      opacity: 0,
      color: '#DFA612',
      fillOpacity: 1.0,
      fillColor: '#FAE042',
    });

  }

  // Resets regions to base color
  private resetFeature(e)  {
    this.isHovered = false;
    const layer = e.target;
    layer.setStyle({
      weight: 3,
      opacity: 0.5,
      color: '#008f68',
      fillOpacity: 0.8,
      fillColor: '#6DB65B'
    });
    this.layer.closePopup();
  }

  // Shows country info
  private selectFeature(e)  {
    const layer = e.target;
    layer.setStyle({
      weight: 3,
      opacity: 0.5,
      color: '#000000',
      fillOpacity: 0.8,
      fillColor: '#000000'
    });

  }


  // Adds layers and initializes the map
  private initMap(): void {
    this.map = L.map('map', {
      center: [ 40.52, 10],
      zoom: 2
    });
    const tiles = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      maxZoom: 19,
      attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
    });

    tiles.addTo(this.map);
  }

  // Initializes popup on the map and updates it's content
  initPopup(e, layer){
    this.layer = layer;
    const country = layer.feature.properties;
    console.log(country.name);

    this.message = 'País: ' +  country.name + '\n' +
      ' ';

    this.popup
      .setLatLng(e.latlng)
      .setContent(this.message)
      .openOn(this.map);

    this.layer.bindPopup(this.popup);
  }


}
