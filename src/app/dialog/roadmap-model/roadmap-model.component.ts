import { Component, Inject, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms'
import { ApiService } from '../../services/api.service';
import { SumpoornApiService } from '../../services/sumpoorn-api.service';
import * as CryptoJS from 'crypto-js';
import * as $ from 'jquery';
import { ToastrService } from 'ngx-toastr';
import { MatDialog, MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';

@Component({
    selector: 'app-roadmap-model',
    templateUrl: './roadmap-model.component.html',
    styleUrls: ['./roadmap-model.component.scss']
  })
  export class RoadmapModelComponent implements OnInit {
    subscribeGroup!: FormGroup;
    roadmapType: any;

  constructor( private dialogRef: MatDialogRef<RoadmapModelComponent>,
    @Inject(MAT_DIALOG_DATA) public data: any,
    private apiService: ApiService,
    public sumpoornApiService: SumpoornApiService,
    private fb: FormBuilder,
    private dialog: MatDialog,
    private toastr: ToastrService,) { this.createForm();
        this.roadmapType = this.data.type;
    }

  ngOnInit(): void {
    this.addValidations();
  }
  createForm() {
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
  addValidations() {
    this.subscribeGroup.get('firstName')?.setValidators([Validators.required]);
    this.subscribeGroup.get('lastName')?.setValidators([Validators.required]);
    this.subscribeGroup.get('businessEmail')?.setValidators([Validators.required, Validators.pattern(/^[a-zA-Z0-9]+[a-zA-Z0-9.!#$%&'*+-/=?^_`{]+@[a-zA-Z0-9!#$%&'*+-/=?^_`{]+\.[a-zA-Z.]{2,8}$/)]);
    this.subscribeGroup.get('jobTitle')?.setValidators([Validators.required]);
    this.subscribeGroup.get('company')?.setValidators([Validators.required]);
    this.subscribeGroup.get('contactNumber')?.setValidators([Validators.pattern(/^[9876]\d{9}$/)]);
    // this.subscribeGroup.get('industry')?.setValidators([Validators.required]);
    this.subscribeGroup.get('checkedTermsAndConditions')?.setValidators([Validators.requiredTrue]);
  }
  saveSubscription() {
    if (this.subscribeGroup.invalid) {
      return;
    }

    let postData = this.subscribeGroup.getRawValue();

    this.sumpoornApiService.saveSubscriptionDetails(postData).then(
      (resp: any) => {
        this.subscribeGroup.reset();
        this.toastr.success('You will receive monthly updates of the Jocata Sumpoorn Index.', "You've successfully subscribed", {
          timeOut: 10000,
          extendedTimeOut: 5000,
          positionClass: 'toast-bottom-center',
          progressBar: true,
          progressAnimation: 'increasing',
          closeButton: true,
        });
      },
      (error) => {
        this.toastr.error('We are unable to process your request. Please try again after sometime.', '', {
          timeOut: 10000,
          extendedTimeOut: 5000,
          positionClass: 'toast-bottom-center',
          progressBar: true,
          progressAnimation: 'increasing',
          closeButton: true,
        });
        this.subscribeGroup.reset();
      }
    );
    this.closeModal();
  }
   closeModal(){
        this.dialogRef.close('close');
    }
   
  }