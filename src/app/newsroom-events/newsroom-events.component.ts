import { Router, ActivatedRoute } from '@angular/router';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-newsroom-events',
  templateUrl: './newsroom-events.component.html',
  styleUrls: ['./newsroom-events.component.scss'],
})
export class NewsroomEventsComponent implements OnInit {
  getNavParam: any;
  eventTitle: string | undefined;
  eventDate: string | undefined;
  route: any;

  constructor(public router: Router) {
    this.getNavParam = this.router.getCurrentNavigation()?.extras;
    if (this.getNavParam == 'showcase') {
      this.eventTitle = 'G20 Showcase Highlights';
      this.eventDate = 'Mumbai, September 12, 2023';
    } else if (this.getNavParam == 'launch') {
      this.eventTitle = 'Launch Event Highlights';
      this.eventDate = 'Mumbai, November 10, 2023';
    } else if (this.getNavParam == 'stakeholder') {
      this.eventTitle = 'Strategic Context of MSME Financing';
      this.eventDate = 'New Delhi, December 12, 2023';
    } else if (this.getNavParam == 'unitednations') {
      this.eventTitle =
        'Jocata Sumpoorn in association with SIDBI at Citizen Stack';
      this.eventDate = 'New York, April 25-26';
    }
  }

  ngOnInit(): void {}

  events = {
    launchEvent: [
      {
        title: 'Lamp Lighting',
        detail:
          'Mr. S Ramann, Chairman and Managing Director, SIDBI; Mr. Sudatta Mandal, Deputy Managing Director, SIDBI; Mr. Prakash Kumar, Deputy Managing Director, SIDBI; Dr. Ajit Ranade, Vice Chancellor, Gokhale Institute of Politics and Economics and Mr. Prashant Muddu, CEO, Jocata.',
        imageURL: 'assets/images/news-lamp-lighting.png',
      },
      {
        title: 'Inaugural Address',
        detail: 'Mr. S Ramann, Chairman and Managing Director, SIDBI.',
        imageURL: 'assets/images/news-innaugural-address.png',
      },
      {
        title: 'Keynote Address',
        detail:
          'Mr. Rajiv Mishra, Senior Economic Advisor, Ministry of Finance, Government of India.',
        imageURL: 'assets/images/news-keynote-address.png',
      },
      {
        title: 'Release of Sumpoorn Launch Report',
        detail:
          'Index Steering and Working Group members - Mr. S Ramann, Chairman and Managing Director, SIDBI; Mr. S N Singh, CGM, SIDBI; Mr. Vivek Malhotra, CGM, SIDBI; Mr. Prashant Muddu, CEO, Jocata; Mr. Narasimhan Venkatesan, Principal Advisor, Jocata and Dr. Sumita Kale, Principal Economist, Jocata.',
        imageURL: 'assets/images/news-launch-report.png',
      },
      {
        title: '"Is this the Decade of MSMEs"',
        detail:
          'Panel discussion with Dr. Ajit Ranade, Vice Chancellor, Gokhale Institute of Politics and Economics; Mr. Sudatta Mandal, Deputy Managing Director, SIDBI; Mr. Prashant Muddu, CEO, Jocata and Dr. Sumita Kale, Principal Economist, Jocata (moderator).',
        imageURL: 'assets/images/news-discussion.png',
      },
      {
        title: 'Vote of Thanks',
        detail: 'Mr. Prashant Muddu, CEO, Jocata.',
        imageURL: 'assets/images/news-vote.png',
      },
    ],
    showcaseEvent: [
      {
        title: 'G20 Showcase',
        detail:
          'Mr. Narasimhan Venkatesan, Principal Advisor, Jocata presented the Index to dignitaries from the Ministry of Finance, Department of Economic Affairs, International Finance Corporation, Reserve Bank of India and senior leaders from Indian and global financial institutions.',
        imageURL: 'assets/images/news-g20.png',
      },
    ],
    msmeFinancing: [
      {
        title: 'Strategic Context of MSME Financing',
        detail: `Jocata Sumpoorn's contribution to empowering MSME lending with SIDBI was recently recognised in the Inclusive Finance India Report (2023) , in its chapter "MSMEs: The Pillars of India's Economic Strength" by Ramesh S. Arunachalam. The index's dynamic and digital approach to data has steered SIDBI's efforts to provide a "data-driven understanding of MSMEs to improve credit access for the sector and fuel its growth." The Report, an annual publication presenting advancements in financial inclusion, is published by The Global Inclusive Finance Initiative, a think-tank advocating for financial inclusion in India.`,
        imageURL: 'assets/images/news-financing.svg',
      },
    ]    
  };
}
