import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms'
import { ApiService } from '../services/api.service';
import { SumpoornApiService } from '../services/sumpoorn-api.service';
import * as $ from 'jquery';

@Component({
  selector: 'app-roadmap',
  templateUrl: './roadmap.component.html',
  styleUrls: ['./roadmap.component.scss']
})
export class RoadmapComponent implements OnInit {

  subscribeGroup: FormGroup;
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
    this.subscribeGroup = this.fb.group({
      firstName: [""],
      lastName: [""],
      businessEmail: [""],
      jobTitle: [""],
      company: [""],
      contactNumber: [""],
      industry: [""],
      checkedTermsAndConditions: [""]
    })
  }

  addValidations(){
    this.subscribeGroup.get('firstName').setValidators([Validators.required]);
    this.subscribeGroup.get('lastName').setValidators([Validators.required]);
    this.subscribeGroup.get('businessEmail').setValidators([Validators.required, Validators.pattern(/^[a-zA-Z0-9]+[a-zA-Z0-9.!#$%&'*+-/=?^_`{]+@[a-zA-Z0-9!#$%&'*+-/=?^_`{]+\.[a-zA-Z.]{2,8}$/)]);
    this.subscribeGroup.get('jobTitle').setValidators([Validators.required]);
    this.subscribeGroup.get('company').setValidators([Validators.required]);
    this.subscribeGroup.get('contactNumber').setValidators([Validators.pattern(/^[9876]\d{9}$/)]);
    // this.subscribeGroup.get('industry').setValidators([Validators.required]);
    this.subscribeGroup.get('checkedTermsAndConditions').setValidators([Validators.required]);
  }

  saveSubscription(){
    let postData = this.subscribeGroup.getRawValue();

    this.sumpoornApiService.saveSubscriptionDetails(postData).then(
      (resp: any) => {
        $("#successModal").show();
        $("#subscribeModal").hide();
      },
      (error) => {
        if(error && error.statusMessage){
          $(".error_text_dynamic").html(error.statusMessage);
          $(".error_text").hide();
          $(".error_text_dynamic").show();
        } else {
          $(".error_text").show();
          $(".error_text_dynamic").hide();
        }
          $("#errorsModal").show();
          $("#subscribeModal").hide();
      }
  );
    
  }

  hideSuccessModal(){
    $("#successModal").hide();
    $('.modal-backdrop').remove();
    $(document.body).removeClass("modal-open");
    $(document.body).removeAttr("style");
  }
  
  hideSubscribeModal(){
    $("#subscribeModal").hide();
    $('.modal-backdrop').remove();
    $(document.body).removeClass("modal-open");
    $(document.body).removeAttr("style");
  }
}
