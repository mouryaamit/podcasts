import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
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
      this.apiService.postApi(environment.swaraHost+"swara-sumpoorn/services/contact/v1/save-contact-details", data, null).then(
        (resp: any) => {
          if (resp && resp.statusCode == 200) {
            resolve(resp);
          }
          else {
            reject(this.apiService.commonStrings.http_error);
          }
        },
        (error) => {
          reject(error);
        }
      );
    });
  }

  saveSubscriptionDetails(data) {
    return new Promise((resolve, reject) => {
      this.apiService.postApi(environment.swaraHost+"swara-sumpoorn/services/subscription/v1/save-subscription-details", data, null).then(
        (resp: any) => {
          if (resp && resp.statusCode == 200) {
            resolve(resp);
          }
          else {
            reject(resp);
          }
        },
        (error) => {
          reject(error);
        }
      );
    });
  }

  saveScheduleDemoFormDetails(data) {
    return new Promise((resolve, reject) => {
      this.apiService.postApi(environment.swaraHost+"swara-sumpoorn/services/schedule/v1/save-schedule-demo-details", data, null).then(
        (resp: any) => {
          if (resp && resp.statusCode == 200) {
            resolve(resp);
          }
          else {
            reject(this.apiService.commonStrings.http_error);
          }
        },
        (error) => {
          reject(error);
        }
      );
    });
  }

  saveSwaraLoginFormDetails(data) {
    return new Promise((resolve, reject) => {
      this.apiService.postApi(environment.swaraHost+"swara-sumpoorn//institution/services/v1/get-inst-login-details", data, null).then(
        (resp: any) => {
          if (resp && resp.statusCode == 200) {
            resolve(resp);
          }
          else {
            reject(this.apiService.commonStrings.http_error);
          }
        },
        (error) => {
          reject(error);
        }
      );
    });
  }

  downloadSumpoornGraphDetails(data) {
    return new Promise((resolve, reject) => {
      this.apiService.postApi(environment.swaraHost+"swara-sumpoorn/report/services/v1/download-sumpoorn-report", data, null).then(
        (resp: any) => {
          if (resp && resp.statusCode == 200) {
            resolve(resp);
          }
          else {
            reject(this.apiService.commonStrings.http_error);
          }
        },
        (error) => {
          reject(error);
        }
      );
    });
  }

  downloadNewsroomReport(data) {
    return new Promise((resolve, reject) => {
      this.apiService.postApi(environment.swaraHost+"swara-sumpoorn/report/services/v1/get-news-room-report", data, null).then(
        (resp: any) => {
          if (resp && resp.statusCode == 200) {
            resolve(resp);
          }
          else {
            reject(this.apiService.commonStrings.http_error);
          }
        },
        (error) => {
          reject(error);
        }
      );
    });
  }
}
