
import { Component, AfterViewInit } from '@angular/core';
import * as L from 'leaflet';
import * as $ from 'jquery';
import {Services} from '../services/services';

@Component({
  selector: 'app-map',
  templateUrl: './map.component.html',
  styleUrls: ['./map.component.scss']
})


export class MapComponent implements AfterViewInit {

  // Attributes
  private map;
  private countries;
  public isHovered;
  public popup = L.popup();
  public layer;
  public countriesGet;
  public countriesList = [];
  public selectedCountry;
  public countryAccumulated;

  constructor(private service: Services) { }

  ngAfterViewInit(): void {
    this.initMap();
    this.service.getStateShapes().subscribe(countries => {
      this.countries = countries;
      this.initCountriesLayer();
    });
    this.service.getCountries().subscribe(countries => {
      this.countriesGet = countries.countries;
      this.getCountriesList();
    });
    this.service.getCountryAccumulated().subscribe(countryAccumulated => {
      this.countryAccumulated = countryAccumulated.acumuladoPais;
    });
  }

  // Add the shapes to the map as a layer, includes mouse events over layers
  private initCountriesLayer() {
    const countryLayer = L.geoJSON(this.countries, {
      style: (feature) => ({
        weight: 3,
        opacity: 0.3,
        color: '#008f68',
        fillOpacity: 1,
        fillColor: '#6DB65B'
      }),
      onEachFeature: (feature, layer) => (
        layer.on({
          mousemove: (e) => (this.popupUpdate(e)),
          mouseover: (e) => (this.highlightFeature(e)),
          mouseout: (e) => (this.resetFeature(e))
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
    this.selectedCountry = layer.feature.properties.name;
    layer.setStyle({
      weight: 10,
      opacity: 0,
      color: '#ffc137',
      fillOpacity: 1.0,
      fillColor: '#ffc137',
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


    this.popup
      .setLatLng(e.latlng)
      .setContent(document.getElementById('popupContent'))
      .openOn(this.map);


    this.layer.bindPopup(this.popup);
  }


  // Returns countries list from data
  getCountriesList(){
    if (this.countries){
      for (let i = 0; i < this.countries.length; i++){
        this.countriesList.push(this.countries[i].Name);
      }
    }
  }

}
