import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms'
import { ApiService } from '../services/api.service';
import { SumpoornApiService } from '../services/sumpoorn-api.service';

@Component({
  selector: 'app-institution-login',
  templateUrl: './institution-login.component.html',
  styleUrls: ['./institution-login.component.scss']
})
export class InstitutionLoginComponent implements OnInit {

  scheduleDemoGroup: FormGroup;

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

  addValidations(){
    this.scheduleDemoGroup.get('firstName').setValidators([Validators.required]);
    this.scheduleDemoGroup.get('lastName').setValidators([Validators.required]);
    this.scheduleDemoGroup.get('businessEmail').setValidators([Validators.required, Validators.pattern(/^[a-zA-Z0-9]+[a-zA-Z0-9.!#$%&'*+-/=?^_`{]+@[a-zA-Z0-9!#$%&'*+-/=?^_`{]+\.[a-zA-Z.]{2,8}$/)]);
    this.scheduleDemoGroup.get('jobTitle').setValidators([Validators.required]);
    this.scheduleDemoGroup.get('company').setValidators([Validators.required]);
    this.scheduleDemoGroup.get('contactNumber').setValidators([Validators.pattern(/^((91|0))?[0-9]{10,12}$/)]);
    this.scheduleDemoGroup.get('checkedTermsAndConditions').setValidators([Validators.required]);
  }


  saveScheduleDemoForm(){
    console.log("clicked");
    let postData = this.scheduleDemoGroup.getRawValue();

    this.sumpoornApiService.saveScheduleDemoFormDetails(postData).then(
      (resp: any) => {
          console.log(resp);
          
      },
      (error) => {
          console.log(error);
          
      }
  );
    
  }

}
