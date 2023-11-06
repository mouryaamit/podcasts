import { Injectable } from '@angular/core';
import { ApiService } from '../services/api.service'

@Injectable({
  providedIn: 'root'
})
export class SumpoornApiService {

  constructor(
    public apiService: ApiService
  ) { }

  saveContactDetails(data) {
    return new Promise((resolve, reject) => {
      this.apiService.saveFormFields("https://swara-staging.jocatagrid.in/swara-sumpoorn/services/contact/v1/save-contact-details", data).then(
        (resp: any) => {
          resolve(resp);
        },
        (error) => {
          reject(error);
        }
      );
    });
  }

  saveSubscriptionDetails(data) {
    return new Promise((resolve, reject) => {
      this.apiService.saveFormFields("https://swara-staging.jocatagrid.in/swara-sumpoorn/services/subscription/v1/save-subscription-details", data).then(
        (resp: any) => {
          resolve(resp);
        },
        (error) => {
          reject(error);
        }
      );
    });
  }

  saveScheduleDemoFormDetails(data) {
    return new Promise((resolve, reject) => {
      this.apiService.saveFormFields("https://swara-staging.jocatagrid.in/swara-sumpoorn/services/schedule/v1/save-schedule-demo-details", data).then(
        (resp: any) => {
          resolve(resp);
        },
        (error) => {
          reject(error);
        }
      );
    });
  }
}
