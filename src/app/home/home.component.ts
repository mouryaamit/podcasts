import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms'
import { ApiService } from '../services/api.service';
import { SumpoornApiService } from '../services/sumpoorn-api.service';
import * as $ from 'jquery';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {
  partners: Array<any> = [
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-sahamati.png',
      imageAlt: 'Sahamati Logo'
    },
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-ceed.svg',
      imageAlt: 'Centre for Excellence in Entrepreneurship and Development Logo'
    },
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-lead.png',
      imageAlt: 'Lead Logo'
    },
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-sahamati.png',
      imageAlt: 'Sahamati Logo'
    },
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-ceed.svg',
      imageAlt: 'Centre for Excellence in Entrepreneurship and Development Logo'
    },
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-lead.png',
      imageAlt: 'Lead Logo'
    },
  ];

  subscribeGroup!: FormGroup;

  constructor(
    private apiService: ApiService,
    public sumpoornApiService : SumpoornApiService,
    private fb: FormBuilder,
    private toastr: ToastrService,
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
      checkedTermsAndConditions: [false]
    })
  }

  addValidations(){
    this.subscribeGroup.get('firstName')?.setValidators([Validators.required]);
    this.subscribeGroup.get('lastName')?.setValidators([Validators.required]);
    this.subscribeGroup.get('businessEmail')?.setValidators([Validators.required, Validators.pattern(/^[a-zA-Z0-9]+[a-zA-Z0-9.!#$%&'*+-/=?^_`{]+@[a-zA-Z0-9!#$%&'*+-/=?^_`{]+\.[a-zA-Z.]{2,8}$/)]);
    this.subscribeGroup.get('jobTitle')?.setValidators([Validators.required]);
    this.subscribeGroup.get('company')?.setValidators([Validators.required]);
    this.subscribeGroup.get('contactNumber')?.setValidators([Validators.pattern(/^[9876]\d{9}$/)]);
    // this.subscribeGroup.get('industry')?.setValidators([Validators.required]);
    this.subscribeGroup.get('checkedTermsAndConditions')?.setValidators([Validators.requiredTrue]);
  }

  saveSubscription(){
    if (this.subscribeGroup.invalid) {
      return;
    }

    let postData = this.subscribeGroup.getRawValue();

    this.sumpoornApiService.saveSubscriptionDetails(postData).then(
      (resp: any) => {
        this.subscribeGroup.reset();
        // $("#successModal").show();
        $("#subscribeModal").hide();
        $('.modal-backdrop').remove();
        this.toastr.success('You will receive monthly updates of the Jocata Sumpoorn Index.', "You've successfully subscribed", {
          timeOut: 10000,
          extendedTimeOut: 10000,
          positionClass: 'toast-bottom-center',
          progressBar: true,
          progressAnimation: 'increasing',
        });
      },
      (error) => {
        this.toastr.error('We are unable to process your request. Please try again after sometime.', '', {
          timeOut: 10000,
          extendedTimeOut: 10000,
          positionClass: 'toast-bottom-center',
          progressBar: true,
          progressAnimation: 'increasing',
        });
        this.subscribeGroup.reset();
          if(error && error.statusMessage){
            $(".error_text_dynamic").html(error.statusMessage);
            $(".error_text").hide();
            $(".error_text_dynamic").show();
          } else {
            $(".error_text").show();
            $(".error_text_dynamic").hide();            
          }
          // $("#errorsModal").show();
          $("#subscribeModal").hide();
          $('.modal-backdrop').remove();
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
