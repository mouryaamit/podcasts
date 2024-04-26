import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {
  partners: Array<any> = [
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-sahamati.webp',
      imageAlt: 'Sahamati Logo'
    },
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-ceed.webp',
      imageAlt: 'Centre for Excellence in Entrepreneurship and Development Logo'
    },
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-lead.webp',
      imageAlt: 'Lead Logo'
    },
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-sahamati.webp',
      imageAlt: 'Sahamati Logo'
    },
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-ceed.webp',
      imageAlt: 'Centre for Excellence in Entrepreneurship and Development Logo'
    },
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-lead.webp',
      imageAlt: 'Lead Logo'
    },
  ];

  constructor() {}

  ngOnInit(): void {
  }

}
