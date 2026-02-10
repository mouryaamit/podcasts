import { Component, Inject, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ApiService } from '../../services/api.service';
import { SumpoornApiService } from '../../services/sumpoorn-api.service';
import * as CryptoJS from 'crypto-js';
import * as $ from 'jquery';
import { ToastrService } from 'ngx-toastr';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';

@Component({
  selector: 'app-institution-login-model',
  templateUrl: './institution-login-model.component.html',
  styleUrls: ['./institution-login-model.component.scss'],
})
export class InstitutionLoginModelComponent implements OnInit {
  scheduleDemoGroup!: FormGroup;
  swaraLoginGroup!: FormGroup;
  encryptedData: string = '';
  institutionLoginType: any;

  constructor(
    private dialogRef: MatDialogRef<InstitutionLoginModelComponent>,
    @Inject(MAT_DIALOG_DATA) public data: any,
    private apiService: ApiService,
    public sumpoornApiService: SumpoornApiService,
    private fb: FormBuilder,
    private toastr: ToastrService
  ) {
    this.createForm1();
    this.createForm2();
    this.institutionLoginType = this.data.type;
  }

  ngOnInit(): void {
    this.addValidations();
    this.addValidationsForSwaraLogin();
  }

  createForm1() {
    this.scheduleDemoGroup = this.fb.group({
      firstName: [''],
      lastName: [''],
      businessEmail: [''],
      jobTitle: [''],
      company: [''],
      contactNumber: [''],
      checkedTermsAndConditions: [false],
    });
  }

  addValidations() {
    this.scheduleDemoGroup
      .get('firstName')
      ?.setValidators([Validators.required]);
    this.scheduleDemoGroup
      .get('lastName')
      ?.setValidators([Validators.required]);
    this.scheduleDemoGroup
      .get('businessEmail')
      ?.setValidators([
        Validators.required,
        Validators.pattern(
          /^[a-zA-Z0-9]+[a-zA-Z0-9.!#$%&'*+-/=?^_`{]+@[a-zA-Z0-9!#$%&'*+-/=?^_`{]+\.[a-zA-Z.]{2,8}$/
        ),
      ]);
    this.scheduleDemoGroup
      .get('jobTitle')
      ?.setValidators([Validators.required]);
    this.scheduleDemoGroup.get('company')?.setValidators([Validators.required]);
    this.scheduleDemoGroup
      .get('contactNumber')
      ?.setValidators([Validators.pattern(/^[9876]\d{9}$/)]);
    this.scheduleDemoGroup
      .get('checkedTermsAndConditions')
      ?.setValidators([Validators.requiredTrue]);
  }
  saveScheduleDemoForm() {
    if (this.scheduleDemoGroup.invalid) {
      return;
    }

    let postData = this.scheduleDemoGroup.getRawValue();

    this.sumpoornApiService.saveScheduleDemoFormDetails(postData).then(
      (resp: any) => {
        this.scheduleDemoGroup.reset();
        if (resp) {
          if (resp.statusCode == 200) {
            this.toastr.success(
              'Thank you for submitting the details. One of our representative shall get in touch with you soon.',
              'Thanks!',
              {
                timeOut: 10000,
                extendedTimeOut: 5000,
                positionClass: 'toast-bottom-center',
                progressBar: true,
                progressAnimation: 'increasing',
                closeButton: true,
              }
            );
          }
          else {
            let errorMsg = resp.statusCode == 500 ?
              "We are unable to process your request. Please try again after sometime." :
              resp.statusMessage;
            this.toastr.error(
              errorMsg, '',
              {
                timeOut: 10000,
                extendedTimeOut: 5000,
                positionClass: 'toast-bottom-center',
                progressBar: true,
                progressAnimation: 'increasing',
                closeButton: true,
              }
            );
          }
        }
      },
      (error) => {
        this.toastr.error(
          'We are unable to process your request. Please try again after sometime.',
          '',
          {
            timeOut: 10000,
            extendedTimeOut: 5000,
            positionClass: 'toast-bottom-center',
            progressBar: true,
            progressAnimation: 'increasing',
            closeButton: true,
          }
        );
        this.scheduleDemoGroup.reset();
      }
    );
    this.hideScheduleModal();
  }
  hideSuccessModal() {
    $('#successModal').hide();
    $('.modal-backdrop').remove();
    $(document.body).removeClass('modal-open');
    $(document.body).removeAttr('style');
  }
  hideScheduleModal() {
    this.dialogRef.close('close');
    // $("#scheduleDemo").hide();
    // $('.modal-backdrop').remove();
    // $(document.body).removeClass("modal-open");
    // $(document.body).removeAttr("style");
  }

  createForm2() {
    this.swaraLoginGroup = this.fb.group({
      instAuid: [''],
      checkedTnCSwara: [false],
    });
  }

  addValidationsForSwaraLogin() {
    this.swaraLoginGroup.get('instAuid')?.setValidators([Validators.required]);
    this.swaraLoginGroup
      .get('checkedTnCSwara')
      ?.setValidators([Validators.requiredTrue]);
  }
  hideLoginModal() {
    this.dialogRef.close('close');
    // $("#loginModal").hide();
    // $('.modal-backdrop').remove();
    // $(document.body).removeClass("modal-open");
    // $(document.body).removeAttr("style");
  }
  saveSwaraLoginForm() {
    if (this.swaraLoginGroup.invalid) {
      return;
    }

    const salt = '6fbb7e4f-756d-11ee-a429-00090faa0001';
    this.encryptedData = CryptoJS.AES.encrypt(
      this.swaraLoginGroup.value.instAuid,
      salt
    ).toString();

    let postData = this.swaraLoginGroup.getRawValue();
    postData.instAuid = this.encryptedData;

    this.sumpoornApiService.saveSwaraLoginFormDetails(postData).then(
      (resp: any) => {
        this.swaraLoginGroup.reset();
        console.log(resp.instLoginUrl);
        window.open(resp.instLoginUrl, '_blank');
        this.toastr.success(
          'Thank you for submitting the details. One of our representative shall get in touch with you soon.',
          'Thanks!',
          {
            timeOut: 10000,
            extendedTimeOut: 5000,
            positionClass: 'toast-bottom-center',
            progressBar: true,
            progressAnimation: 'increasing',
            closeButton: true,
          }
        );
        this.hideLoginModal();
      },
      (error) => {
        this.toastr.error(
          'We are unable to process your request. Please try again after sometime.',
          '',
          {
            timeOut: 10000,
            extendedTimeOut: 5000,
            positionClass: 'toast-bottom-center',
            progressBar: true,
            progressAnimation: 'increasing',
            closeButton: true,
          }
        );
        this.swaraLoginGroup.reset();
        this.hideLoginModal();
      }
    );
  }
}
