import { Component, Inject, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ApiService } from '../services/api.service';
import { SumpoornApiService } from '../services/sumpoorn-api.service';
import * as CryptoJS from 'crypto-js';
import * as $ from 'jquery';
import { ToastrService } from 'ngx-toastr';
import { MatDialog } from '@angular/material/dialog';
import { InstitutionLoginModelComponent } from '../dialog/institution-login-model/institution-login-model.component';

@Component({
  selector: 'app-institution-login',
  templateUrl: './institution-login.component.html',
  styleUrls: ['./institution-login.component.scss'],
})
export class InstitutionLoginComponent implements OnInit {
  scheduleDemoGroup!: FormGroup;
  swaraLoginGroup!: FormGroup;
  encryptedData: string = '';

  constructor(
    private apiService: ApiService,
    public sumpoornApiService: SumpoornApiService,
    private fb: FormBuilder,
    private toastr: ToastrService,
    private dialog: MatDialog
  ) {
    this.createForm1();
    this.createForm2();
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
        if (resp && resp.statusCode == 200) {
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
        // this.hideScheduleDemoModal();
      },
      (error) => {
        this.scheduleDemoGroup.reset();
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
        // this.hideScheduleDemoModal();
      }
    );
  }

  openDialog(string): void {
    const dialogRef = this.dialog.open(InstitutionLoginModelComponent, {
      disableClose: true,
      panelClass: 'app_generic_modal',
      data: {
        data: { mobileNumber: '' },
        type: string,
      },
    });
    dialogRef.afterClosed().subscribe((result) => {
      if (result) {
      } else {
      }
    });
  }

  // hideSuccessModal() {
  //   $("#successModal").hide();
  //   $('.modal-backdrop').remove();
  //   $(document.body).removeClass("modal-open");
  //   $(document.body).removeAttr("style");
  // }

  // hideScheduleDemoModal() {
  //   $("#scheduleDemo").hide();
  //   $('.modal-backdrop').remove();
  //   $(document.body).removeClass("modal-open");
  //   $(document.body).removeAttr("style");
  // }

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

  // hideLoginSwaraModal() {
  //   $("#loginModal").hide();
  //   $('.modal-backdrop').remove();
  //   $(document.body).removeClass("modal-open");
  //   $(document.body).removeAttr("style");
  // }

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
        // console.log(resp.instLoginUrl)
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
        // this.hideLoginSwaraModal();
      },
      (error) => {
        this.swaraLoginGroup.reset();
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
        // this.hideLoginSwaraModal();
      }
    );
  }
}
