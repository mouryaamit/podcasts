import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms'
import { ApiService } from '../services/api.service';
import { SumpoornApiService } from '../services/sumpoorn-api.service';
import * as $ from 'jquery';

@Component({
  selector: 'app-contact',
  templateUrl: './contact.component.html',
  styleUrls: ['./contact.component.scss']
})
export class ContactComponent implements OnInit {
  contactGroup: FormGroup;

  constructor(
    private apiService: ApiService,
    public sumpoornApiService : SumpoornApiService,
    private fb: FormBuilder,
  ) { 
    this.createForm();
  }

  ngOnInit(): void {
    this.addValidations();

  }

  createForm(){
    this.contactGroup = this.fb.group({
      firstName: [""],
      lastName: [""],
      businessEmail: [""],
      jobTitle: [""],
      company: [""],
      contactNumber: [""],
      messageType: [""],
      message: [""],
      checkedTermsAndConditions: [""]
    })
  }

  addValidations(){
    this.contactGroup.get('firstName').setValidators([Validators.required]);
    this.contactGroup.get('lastName').setValidators([Validators.required]);
    this.contactGroup.get('businessEmail').setValidators([Validators.required, Validators.pattern(/^[a-zA-Z0-9]+[a-zA-Z0-9.!#$%&'*+-/=?^_`{]+@[a-zA-Z0-9!#$%&'*+-/=?^_`{]+\.[a-zA-Z.]{2,8}$/)]);
    this.contactGroup.get('jobTitle').setValidators([Validators.required]);
    this.contactGroup.get('company').setValidators([Validators.required]);
    this.contactGroup.get('contactNumber').setValidators([Validators.pattern(/^[9876]\d{9}$/)]);
    // this.contactGroup.get('messageType').setValidators([Validators.required]);
    this.contactGroup.get('message').setValidators([Validators.required]);
    this.contactGroup.get('checkedTermsAndConditions').setValidators([Validators.required]);
  }


  saveContact(){
    let postData = this.contactGroup.getRawValue();

    this.sumpoornApiService.saveContactDetails(postData).then(
      (resp: any) => {
        $("#successModal").show();
      },
      (error) => {
          $("#errorsModal").show();
      }
  );
    
  }

  hideSuccessModal(){
    $("#successModal").hide();
    $('.modal-backdrop').remove();
    $(document.body).removeClass("modal-open");
    $(document.body).removeAttr("style");
  }

}
