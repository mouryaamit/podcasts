import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms'
import { ApiService } from '../services/api.service';
import { SumpoornApiService } from '../services/sumpoorn-api.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {
  partners: Array<any> = [
    {
      title: 'Knowledge Partner',
      imageSrc: 'assets/images/partner-ceed.svg',
      imageAlt: 'Centre for Excellence in Entrepreneurship and Development Logo'
    },
    {
      title: 'Affiliate Partner',
      imageSrc: 'assets/images/partner-game.svg',
      imageAlt: 'Global Alliance for Mass Entrepreneurship Logo'
    },
    {
      title: 'Exclusive Bureau Partner',
      imageSrc: 'assets/images/partner-lead.png',
      imageAlt: 'Experian Logo'
    },
    {
      title: 'Knowledge Partner',
      imageSrc: 'assets/images/partner-ceed.svg',
      imageAlt: 'Centre for Excellence in Entrepreneurship and Development Logo'
    },
    {
      title: 'Affiliate Partner',
      imageSrc: 'assets/images/partner-game.svg',
      imageAlt: 'Global Alliance for Mass Entrepreneurship Logo'
    },
    {
      title: 'Exclusive Bureau Partner',
      imageSrc: 'assets/images/partner-lead.png',
      imageAlt: 'Experian Logo'
    }
  ];

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
    this.subscribeGroup.get('contactNumber').setValidators([Validators.pattern(/^((91|0))?[0-9]{10,12}$/)]);
    // this.subscribeGroup.get('industry').setValidators([Validators.required]);
    this.subscribeGroup.get('checkedTermsAndConditions').setValidators([Validators.required]);
  }

  saveSubscription(){
    console.log("clicked");
    let postData = this.subscribeGroup.getRawValue();

    this.sumpoornApiService.saveSubscriptionDetails(postData).then(
      (resp: any) => {
          console.log(resp);
          
      },
      (error) => {
          console.log(error);
          
      }
  );
    
  }

}
