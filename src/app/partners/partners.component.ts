import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { ApiService } from '../services/api.service';
import { SumpoornApiService } from '../services/sumpoorn-api.service';
import * as $ from 'jquery';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-partners',
  templateUrl: './partners.component.html',
  styleUrls: ['./partners.component.scss'],
})
export class PartnersComponent implements OnInit {
  constructor(
    private fb: FormBuilder,
    private apiService: ApiService,
    public sumpoornApiService: SumpoornApiService,
    private toastr: ToastrService
  ) {
    this.createForm();
  }

  ngOnInit(): void {
    this.addValidations();
  }

  partnersFormGroup!: FormGroup;

  partners: Array<any> = [
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-sahamati.webp',
      imageAlt: 'Sahamati Logo',
    },
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-ceed.webp',
      imageAlt:
        'Centre for Excellence in Entrepreneurship and Development Logo',
    },
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-lead.webp',
      imageAlt: 'Lead Logo',
    },
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-sahamati.webp',
      imageAlt: 'Sahamati Logo',
    },
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-ceed.webp',
      imageAlt:
        'Centre for Excellence in Entrepreneurship and Development Logo',
    },
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-lead.webp',
      imageAlt: 'Lead Logo',
    },
  ];

  accordionData = [
    {
      question: 'What are the benefits of partnering with Jocata Sumpoorn?',
      answer: [
        '<strong>MSME Ecosystem reach:</strong> Reach deep into the MSME ecosystem, connect with key stakeholders, decision-makers, industry bodies, thought leaders, and research institutions. Build strong relationships that can fuel your initiatives and support MSME growth.',
        '<strong>Data Driven Impact:</strong> Work closely with the Sumpoorn team to leverage the Index and insights to track the on-ground effects of policy interventions and macro-economic conditions on MSME Sector performance, guide strategic planning initiatives, and identify areas where you can create the most significant impact.',
        '<strong>Policy & research support:</strong> Jocata Sumpoorn is the only high-frequency, MSME-specific economic activity indicator in India. This valuable data can inform policy decisions, strengthen research efforts, and contribute to shaping a brighter future for MSMEs.',
      ],
    },
    {
      question: 'Who can be a partner?',
      answer: [
        "Any organization or business that aligns with Jocata Sumpoorn's mission of promoting financial inclusion and economic development of MSMEs can be a potential partner.",
      ],
    },
    {
      question: 'What types of partnerships does Jocata Sumpoorn offer?',
      answer: [
        "Jocata Sumpoorn offers various partnership models depending on your organization's goals and resources. These may include knowledge & research partnerships, co-development initiatives, and collaborations.",
      ],
    },
    {
      question: 'How do I become a partner?',
      answer: [
        'Visit our “Partner” page and express your interest in partnering with Jocata Sumpoorn by filling out the brief partnership form, and our team will be happy to discuss potential collaboration opportunities.',
      ],
    },
  ];

  createForm() {
    this.partnersFormGroup = this.fb.group({
      firstName: [''],
      lastName: [''],
      company: [''],
      designation: [''],
      businessEmail: [''],
      contactNumber: [''],
      message: [
        "I'm interested in partnering to drive MSME impact. Let's explore collaboration opportunities.",
      ],
      checkedTermsAndConditions: [false],
    });
  }

  addValidations() {
    this.partnersFormGroup
      .get('firstName')
      ?.setValidators([Validators.required]);
    this.partnersFormGroup
      .get('lastName')
      ?.setValidators([Validators.required]);
    this.partnersFormGroup.get('company')?.setValidators([Validators.required]);
    this.partnersFormGroup
      .get('designation')
      ?.setValidators([Validators.required]);
    this.partnersFormGroup
      .get('businessEmail')
      ?.setValidators([
        Validators.required,
        Validators.pattern(
          /^[a-zA-Z0-9]+[a-zA-Z0-9.!#$%&'*+-/=?^_`{]+@[a-zA-Z0-9!#$%&'*+-/=?^_`{]+\.[a-zA-Z.]{2,8}$/
        ),
      ]);
    this.partnersFormGroup
      .get('contactNumber')
      ?.setValidators([Validators.pattern(/^[9876]\d{9}$/)]);
    this.partnersFormGroup.get('message')?.setValidators([Validators.required]);
    this.partnersFormGroup
      .get('checkedTermsAndConditions')
      ?.setValidators([Validators.requiredTrue]);
  }

  savePartnerInfo() {
    if (this.partnersFormGroup.invalid) {
      return;
    }

    let postData = this.partnersFormGroup.getRawValue();

    this.sumpoornApiService.savePartnerDetails(postData).then(
      (resp: any) => {

        this.partnersFormGroup.reset();
        this.partnersFormGroup.patchValue({
          messageType: '',
        });
        if (resp && resp.statusCode == 200) {

          this.toastr.success(resp.statusMessage, '', {
            timeOut: 10000,
            extendedTimeOut: 5000,
            positionClass: 'toast-bottom-center',
            progressBar: true,
            progressAnimation: 'increasing',
            closeButton: true,
          });

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
      },
      (error) => {
        this.partnersFormGroup.reset();
        this.partnersFormGroup.patchValue({
          messageType: '',
        });
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
      }
    );
  }
}
