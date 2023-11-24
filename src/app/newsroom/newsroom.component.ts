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

  constructor(public sumpoornApiService: SumpoornApiService) { }

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

  events = [
    {
      "title": "Lamp lighting",
      "detail": "Mr. S Ramann, Chairman and Managing Director, SIDBI; Mr. Sudatta Mandal, Deputy Managing Director, SIDBI; Mr. Prakash Kumar, Deputy Managing Director, SIDBI; Dr. Ajit Ranade, Vice Chancellor, Gokhale Institute of Politics and Economics and Mr. Prashant Muddu, CEO, Jocata.",
      "imageURL": "assets/images/news-lamp-lighting.svg"
    },
    {
      "title": "Inaugural Address",
      "detail": "Mr. S Ramann, Chairman and Managing Director, SIDBI.",
      "imageURL": "assets/images/news-innaugural-address.svg"
    },
    {
      "title": "Keynote Address",
      "detail": "Mr. Rajiv Mishra, Senior Economic Advisor, Ministry of Finance, Government of India.",
      "imageURL": "assets/images/news-keynote-address.svg"
    },
    {
      "title": "Release of Jocata Sumpoorn in association with SIDBI - Launch Report",
      "detail": "Index Steering and Working Group members - Mr. S Ramann, Chairman and Managing Director, SIDBI; Mr. S N Singh, CGM, SIDBI; Mr. Vivek Malhotra, CGM, SIDBI; Mr. Prashant Muddu, CEO, Jocata; Mr. Narasimhan Venkatesan, Principal Advisor, Jocata and Dr. Sumita Kale, Principal Economist, Jocata.",
      "imageURL": "assets/images/news-launch-report.svg"
    },
    {
      "title": "\"Is this the Decade of MSMEs\"",
      "detail": "panel discussion with panelists - Dr. Ajit Ranade, Vice Chancellor, Gokhale Institute of Politics and Economics; Mr. Sudatta Mandal, Deputy Managing Director, SIDBI; Mr. Prashant Muddu, CEO, Jocata and Dr. Sumita Kale, Principal Economist, Jocata (moderator).",
      "imageURL": "assets/images/news-discussion.svg"
    },
    {
      "title": "Vote of Thanks",
      "detail": "Mr. Prashant Muddu, CEO, Jocata.",
      "imageURL": "assets/images/news-vote.svg"
    }
  ]
}
