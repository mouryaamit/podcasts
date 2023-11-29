import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms'
import { ApiService } from '../services/api.service';
import { SumpoornApiService } from '../services/sumpoorn-api.service';
import * as $ from 'jquery';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-contact',
  templateUrl: './contact.component.html',
  styleUrls: ['./contact.component.scss']
})
export class ContactComponent implements OnInit {
  contactGroup!: FormGroup;

  constructor(
    private apiService: ApiService,
    public sumpoornApiService: SumpoornApiService,
    private fb: FormBuilder,
    private toastr: ToastrService,
  ) {
    this.createForm();
  }

  ngOnInit(): void {
    this.addValidations();

  }

  createForm() {
    this.contactGroup = this.fb.group({
      firstName: [""],
      lastName: [""],
      businessEmail: [""],
      jobTitle: [""],
      company: [""],
      contactNumber: [""],
      messageType: [""],
      message: [""],
      checkedTermsAndConditions: [false]
    })
  }

  addValidations() {
    this.contactGroup.get('firstName')?.setValidators([Validators.required]);
    this.contactGroup.get('lastName')?.setValidators([Validators.required]);
    this.contactGroup.get('businessEmail')?.setValidators([Validators.required, Validators.pattern(/^[a-zA-Z0-9]+[a-zA-Z0-9.!#$%&'*+-/=?^_`{]+@[a-zA-Z0-9!#$%&'*+-/=?^_`{]+\.[a-zA-Z.]{2,8}$/)]);
    this.contactGroup.get('jobTitle')?.setValidators([Validators.required]);
    this.contactGroup.get('company')?.setValidators([Validators.required]);
    this.contactGroup.get('contactNumber')?.setValidators([Validators.pattern(/^[9876]\d{9}$/)]);
    // this.contactGroup.get('messageType')?.setValidators([Validators.required]);
    this.contactGroup.get('message')?.setValidators([Validators.required]);
    this.contactGroup.get('checkedTermsAndConditions')?.setValidators([Validators.requiredTrue]);
  }


  saveContact() {
    if (this.contactGroup.invalid) {
      return;
    }

    let postData = this.contactGroup.getRawValue();

    this.sumpoornApiService.saveContactDetails(postData).then(
      (resp: any) => {
        this.contactGroup.reset();
        this.contactGroup.patchValue({
          "messageType": ""
        })
        this.toastr.success('Thank you for contacting us.', "", {
          timeOut: 10000,
          extendedTimeOut: 5000,
          positionClass: 'toast-bottom-center',
          progressBar: true,
          progressAnimation: 'increasing',
          closeButton: true,
        });
      },
      (error) => {
        this.contactGroup.reset();
        this.contactGroup.patchValue({
          "messageType": ""
        })
        this.toastr.error('We are unable to process your request. Please try again after sometime.', '', {
          timeOut: 10000,
          extendedTimeOut: 5000,
          positionClass: 'toast-bottom-center',
          progressBar: true,
          progressAnimation: 'increasing',
          closeButton: true,
        });

      }
    );

  }

  hideSuccessModal() {
    $("#successModal").hide();
    $('.modal-backdrop').remove();
    $(document.body).removeClass("modal-open");
    $(document.body).removeAttr("style");
  }

}
