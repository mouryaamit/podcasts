import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-partners',
  templateUrl: './partners.component.html',
  styleUrls: ['./partners.component.scss']
})
export class PartnersComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

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

  accordionData = [
    {
      "question": "What are the benefits of partnering with Jocata Sumpoorn?",
      "answer": [
        "<strong>MSME Ecosystem reach:</strong> Reach deep into the MSME ecosystem, connect with key stakeholders, decision-makers, industry bodies, thought leaders, and research institutions. Build strong relationships that can fuel your initiatives and support MSME growth.",
        "<strong>Data Driven Impact:</strong> Work closely with the Sumpoorn team to leverage the Index and insights to track the on-ground effects of policy interventions and macro-economic conditions on MSME Sector performance, guide strategic planning initiatives, and identify areas where you can create the most significant impact.",
        "<strong>Policy & research support:</strong> Jocata Sumpoorn is the only high-frequency, MSME-specific economic activity indicator in India. This valuable data can inform policy decisions, strengthen research efforts, and contribute to shaping a brighter future for MSMEs."
      ]
    },
    {
      "question": "Who can be a partner?",
      "answer": [
        "Any organization or business that aligns with Jocata Sumpoorn's mission of promoting financial inclusion and economic development of MSMEs can be a potential partner."
      ]
    },
    {
      "question": "What types of partnerships does Jocata Sumpoorn offer?",
      "answer": [
        "Jocata Sumpoorn offers various partnership models depending on your organization's goals and resources. These may include knowledge & research partnerships, co-development initiatives, and collaborations."
      ]
    },
    {
      "question": "How do I become a partner?",
      "answer": [
        "Visit our “Partner” page and express your interest in partnering with Jocata Sumpoorn by filling out the brief partnership form, and our team will be happy to discuss potential collaboration opportunities."
      ]
    }
  ]  

}
