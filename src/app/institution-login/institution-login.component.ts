import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms'
import { ApiService } from '../services/api.service';
import { SumpoornApiService } from '../services/sumpoorn-api.service';
import * as CryptoJS from 'crypto-js';
import * as $ from 'jquery';

@Component({
  selector: 'app-institution-login',
  templateUrl: './institution-login.component.html',
  styleUrls: ['./institution-login.component.scss']
})
export class InstitutionLoginComponent implements OnInit {

  scheduleDemoGroup: FormGroup;
  swaraLoginGroup: FormGroup;
  encryptedData: string;

  constructor(
    private apiService: ApiService,
    public sumpoornApiService: SumpoornApiService,
    private fb: FormBuilder,
  ) {
    this.createForm1();
    this.createForm2();
  }

  ngOnInit(): void {
    this.addValidations();

  }

  createForm1() {
    this.scheduleDemoGroup = this.fb.group({
      firstName: [""],
      lastName: [""],
      businessEmail: [""],
      jobTitle: [""],
      company: [""],
      contactNumber: [""],
      checkedTermsAndConditions: [""]
    })
  }

  addValidations() {
    this.scheduleDemoGroup.get('firstName').setValidators([Validators.required]);
    this.scheduleDemoGroup.get('lastName').setValidators([Validators.required]);
    this.scheduleDemoGroup.get('businessEmail').setValidators([Validators.required, Validators.pattern(/^[a-zA-Z0-9]+[a-zA-Z0-9.!#$%&'*+-/=?^_`{]+@[a-zA-Z0-9!#$%&'*+-/=?^_`{]+\.[a-zA-Z.]{2,8}$/)]);
    this.scheduleDemoGroup.get('jobTitle').setValidators([Validators.required]);
    this.scheduleDemoGroup.get('company').setValidators([Validators.required]);
    this.scheduleDemoGroup.get('contactNumber').setValidators([Validators.pattern(/^((91|0))?[0-9]{10,12}$/)]);
    this.scheduleDemoGroup.get('checkedTermsAndConditions').setValidators([Validators.required]);
  }


  saveScheduleDemoForm() {
    let postData = this.scheduleDemoGroup.getRawValue();

    this.sumpoornApiService.saveScheduleDemoFormDetails(postData).then(
      (resp: any) => {
        $("#successModal").show();
        $("#scheduleDemo").hide();
      },
      (error) => {
        console.error(error);
        $("#errorsModal").show();
        $("#scheduleDemo").hide();
      }
    );

  }

  createForm2() {
    this.swaraLoginGroup = this.fb.group({
      instAuid: ["", [Validators.required]]
    })
  }

  saveSwaraLoginForm() {
    const salt = "6fbb7e4f-756d-11ee-a429-00090faa0001";
    this.encryptedData = CryptoJS.AES.encrypt( this.swaraLoginGroup.value.instAuid, salt).toString();
    
    let postData = this.swaraLoginGroup.getRawValue();
    postData.instAuid = this.encryptedData;
    
    this.sumpoornApiService.saveSwaraLoginFormDetails(postData).then(
      (resp: any) => {
        $("#loginModal").hide();
        console.log(resp.instLoginUrl)
        window.open(resp.instLoginUrl, "_blank");

      },
      (error) => {
        console.error(error);
        $("#loginModal").hide();
        $("#errorsModal").show();
      }
    );
  }

}
