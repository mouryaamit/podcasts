import { Router, ActivatedRoute, NavigationEnd } from '@angular/router';
import { Component, OnInit } from '@angular/core';
import { SumpoornApiService } from '../services/sumpoorn-api.service';
import { saveAs } from 'file-saver';
import * as CryptoJS from 'crypto-js';
import * as $ from 'jquery';

@Component({
  selector: 'app-newsroom',
  templateUrl: './newsroom.component.html',
  styleUrls: ['./newsroom.component.scss']
})
export class NewsroomComponent implements OnInit {
  encryptedData: string = "";
  isShowCaseSelect: boolean = false;
  constructor(public sumpoornApiService: SumpoornApiService, public router: Router, public route: ActivatedRoute,) { }

  ngOnInit(): void {
  }

  downloadReport(type) {
    const salt = "6fbb7e4f-756d-11ee-a429-00090faa0001";
    this.encryptedData = CryptoJS.AES.encrypt(type, salt).toString();

    this.sumpoornApiService.downloadNewsroomReport({ reportTypeUuid: this.encryptedData }).then(
      (resp: any) => {
        const byteArray = new Uint8Array(atob(resp.pdf).split('').map(char => char.charCodeAt(0)));
        const blob = new Blob([byteArray], { type: resp.mimeType + ";charset=utf-8" });
        saveAs(blob, resp.fileName);
      },
      (error) => {
        console.error("downloadReport", error);
        $("#errorsModal").show();
      }
    );
  }

  goToGallery(param, openItemIn, link?:any) {
    if(openItemIn == 'link') {
      window.open(link, '_blank');
    } else {
      this.router.navigate(['/newsroom-events', param]);
    }
  }
}
