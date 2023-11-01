import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {
  partners: Array<any> = [
    {
      title: 'Knowledge Partner',
      imageSrc: 'assets/images/partner-ceed.svg',
      imageAlt: 'Centre for Excellence in Entrepreneurship and Development Logo'
    },
    {
      title: 'Affiliate Partner',
      imageSrc: 'assets/images/partner-game.svg',
      imageAlt: 'Global Alliance for Mass Entrepreneurship Logo'
    },
    {
      title: 'Exclusive Bureau Partner',
      imageSrc: 'assets/images/partner-experian.svg',
      imageAlt: 'Experian Logo'
    },
    {
      title: 'Knowledge Partner',
      imageSrc: 'assets/images/partner-ceed.svg',
      imageAlt: 'Centre for Excellence in Entrepreneurship and Development Logo'
    },
    {
      title: 'Affiliate Partner',
      imageSrc: 'assets/images/partner-game.svg',
      imageAlt: 'Global Alliance for Mass Entrepreneurship Logo'
    },
    {
      title: 'Exclusive Bureau Partner',
      imageSrc: 'assets/images/partner-experian.svg',
      imageAlt: 'Experian Logo'
    }
  ];

  constructor() { }

  ngOnInit(): void {
  }

}
