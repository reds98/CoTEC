import { Component, ViewChild } from '@angular/core';
import {FormControl} from '@angular/forms';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title = 'CoTEC';
  adminViewOn = true;
  hospitalViewOn = true;
  public loggedIn = true;
  tokenForm = new FormControl();
  adminToken = '123456';
  hospitalToken = '654321';

  validateToken(){
    const value = this.tokenForm.value.toString();
    if (value === this.adminToken){
      this.loggedIn = true;
      this.adminViewOn = true;
      this.hospitalViewOn = false;
    }
    else if (value === this.hospitalToken){
      this.loggedIn = true;
      this.hospitalViewOn = true;
      this.adminViewOn = false;
    }
    else{
      this.loggedIn = true;
      this.adminViewOn = false;
      this.hospitalViewOn = false;
    }
    console.log(this.tokenForm.value === this.adminToken);
  }

  guestLogIn(){
    this.adminViewOn = false;
    this.hospitalViewOn = false;
    this.loggedIn = true;
  }

}
