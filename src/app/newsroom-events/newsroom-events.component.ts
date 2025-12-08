import { ActivatedRoute } from '@angular/router';
import { Component, OnInit } from '@angular/core';
import { SumpoornApiService } from '../services/sumpoorn-api.service';
import { saveAs } from 'file-saver';
import * as CryptoJS from 'crypto-js';

@Component({
  selector: 'app-newsroom-events',
  templateUrl: './newsroom-events.component.html',
  styleUrls: ['./newsroom-events.component.scss'],
})
export class NewsroomEventsComponent implements OnInit {
  getNavParam: any;
  eventTitle: string | undefined;
  eventDate: string | undefined;
  encryptedData: string = '';

  constructor(
    private route: ActivatedRoute,
    public sumpoornApiService: SumpoornApiService
  ) {}

  ngOnInit(): void {
    this.route.paramMap.subscribe((params) => {
      this.getNavParam = params.get('id');
    });
    // this.getNavParam = this.router.getCurrentNavigation()?.extras;
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
      this.eventTitle = 'DPI powered Jocata Sumpoorn at the United Nations';
      this.eventDate = 'New York, April 25, 2024';
    } else if (this.getNavParam == 'ifc') {
      this.eventTitle =
        'Jocata’s MSME Lending Innovation at International Finance Corporation (IFC)';
      this.eventDate = 'Washington DC, April 24, 2024 ';
    } else if (this.getNavParam == 'smeff') {
      this.eventTitle =
        'Jocata Sumpoorn & SME DNA Win Global SME Finance Forum Award 2024';
      this.eventDate = 'São Paulo, 16 - 18 September, 2024';
    } else if (this.getNavParam == 'pune_ppf') {
      this.eventTitle = 'Jocata Sumpoorn at Pune Public Policy Festival';
      this.eventDate = 'Pune, January 11, 2025 ';
    } else if (this.getNavParam == 'nbdnewsroom') {
      this.eventTitle =
        'Sumpoorn Showcased at New Development Bank (NDB) - Shanghai Headquarters';
      this.eventDate = 'Shanghai, November 11, 2025';
    }
  }

  events = {
    smeffEvent: [
      {
        title: `A Recognition of Jocata's Initiatives in MSME Financing`,
        detail: `This award is a testament to our commitment to building a financially inclusive future for MSMEs by harnessing the power of Al & data analytics.<br/><br/>We are deeply grateful to SIDBI for their support and for trusting us to build a one-of-its-kind country level index for the MSME ecosystem. It's a moment of pride and we thank our incredible team of data scientists, credit experts, and our valued financial institution partners.<br/><br/>This milestone strengthens our resolve to continue pushing the boundaries of MSME financing, as we strive to drive growth both in India and globally.`,
        imageURL: 'assets/images/news-brazil-award.webp',
      },
      {
        title: `Jocata CEO Prashant Muddu Speaks at Global SME Finance Forum in São Paulo`,
        detail: `Our CEO, <strong>Prashant Muddu</strong> recently participated in a panel discussion at the Global SME Finance Forum in São Paulo, Brazil. The panel, titled “AI & Alternative Data: Balancing Efficiency & Risk in SME Financing”, brought together industry leaders. Prashant was joined by <strong>Anderson Pereira</strong> (CEO, Kapitale), <strong>Rigo Van den Broeck</strong> (EVP Cybersecurity Product Innovation, Mastercard), and <strong>Leila F. Search</strong> (Lead, Latin America FinTech Investments, IFC), with the session hosted by <strong>Patrick Reily</strong> (Co-Founder, Uplinq Financial Technologies). The discussion highlighted innovative approaches to SME financing using AI and alternative data.`,
        imageURL: 'assets/images/news-brazil-speech.jfif',
      },
    ],
    csEvent: [
      {
        title: `India's Digital Stack Takes Center Stage`,
        detail: `A delegation led by G20 Sherpa Amitabh Kant highlighted India's DPI's impact on citizens, including increased financial inclusion - 80% access to BFSI in 7 years, which would’ve taken close to 50 years in the absence of DPI. He further emphasized the significant contribution of fintechs in leveraging DPI, particularly in empowering MSMEs that require targeted support.`,
        imageURL: 'assets/images/news-digital-stack.jpg',
      },
      {
        title: 'DPI powered Jocata Sumpoorn to unlock MSME potential',
        detail:
          'Jocata CEO Prashant Muddu presented Jocata Sumpoorn, a public-private partnership with Small Industries Development Bank (SIDBI) as a unique use case of DPI - private infrastructure that is publicly provisioned. This initiative aims to bridge the MSME data-for-insights gap, empowering stakeholders to strategize credit flow and create tailored policies for the sustainable growth of the sector. As a deep tech company having served in the digital lending and analytics space for over a decade, Jocata Sumpoorn is a way of giving back to the financial and MSME ecosystem.',
        imageURL: 'assets/images/news-dpi-powered.jpg',
      },
      {
        title: 'A Global Conversation on Innovation',
        detail:
          'Sumpoorn was presented as part of a panel titled "Building in India for the World: Innovation & Startups." alongside Ravi Tyagi, CGM, SIDBI who emphasised the transformative impact of DPI on MSMEs by enabling faster and more accessible credit. Also on the panel were Saurabh Drolia, Director, Google Pay and Thomas Hardjono, CTO, Connection Science and Engineering, MIT. The panel was moderated by Jasminder Singh Gulati, Founder, Digital Desh & Full Stack Capital.',
        imageURL: 'assets/images/news-global-innovation.jpg',
      },
      {
        title: 'Jocata Sumpoorn: For a flourishing MSME ecosystem',
        detail:
          'Following its adoption and trust garnered from lenders, policymakers, and economists in India, Jocata Sumpoorn showcased the power of public-private partnerships in leveraging DPI to deliver impact at scale. Jocata shared its learnings gathered through a journey of building and tracking this model across 4+ years, highlighting eight key ingredients on the nature of the underlying data as well as the need for strong champions to build a country-level index.',
        imageURL: 'assets/images/news-msme-ecosystem.jpg',
      },
    ],
    ifcEvent: [
      {
        title: 'Jocata presented technology powered MSME lending case studies',
        detail: `At the International Finance Corporation (IFC), Jocata CEO, Prashant Muddu presented the company’s Platform+ approach, blending product, intelligence and ecosystem strategies, to help lenders rapidly scale MSME loan books and grow credit access to the sector.<br/><br/>
        He then presented Jocata Sumpoorn, India's only MSME economic activity index, developed in association with Small Industries Development Bank of India (SIDBI). This public-private partnership aims to bridge the MSME data-for-insights gap, offering actionable insights to financial institutions, policymakers, economists and researchers to strategize credit flow and tailor policies for sustainable growth of the MSME sector.<br/><br/>
        Ravi Tyagi, CGM, SIDBI highlighted how technology adoption and partnering with fintechs including Jocata has helped the Development Bank rapidly scale its MSME direct credit loan book. The session was moderated by Hans Koning, Global Chief Industry Specialist, Digital Finance, World Bank Group. `,
        imageURL: 'assets/images/news-ifc.jpg',
      },
    ],
    msmeFinancing: [
      {
        title: 'Strategic Context of MSME Financing',
        detail: `Jocata Sumpoorn's contribution to empowering MSME lending with SIDBI was recently recognised in the Inclusive Finance India Report (2023) , in its chapter "MSMEs: The Pillars of India's Economic Strength" by Ramesh S. Arunachalam. The index's dynamic and digital approach to data has steered SIDBI's efforts to provide a "data-driven understanding of MSMEs to improve credit access for the sector and fuel its growth." The Report, an annual publication presenting advancements in financial inclusion, is published by The Global Inclusive Finance Initiative, a think-tank advocating for financial inclusion in India.`,
        imageURL: 'assets/images/news-financing.svg',
      },
    ],
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
    nbdnewsroomEvent: [
      {
        title:
          'Sumpoorn Showcased at New Development Bank (NDB) - Shanghai Headquarters',
        detail:
          'As part of the Jocata Global AI Xchange China 2025, a high-level delegation of senior leaders from Jocata and client institutions met with officials from the New Development Bank (NDB) in Shanghai. The participants included members of NDB’s research, projects, IT and compliance teams. Jocata shared a company overview and introduced Jocata Sumpoorn, India’s first MSME economic activity index developed in partnership with SIDBI. Prashant Muddu, MD & CEO of Jocata, highlighted how the Index bridges a critical MSME data gap and provides actionable insights for lenders, policymakers, and researchers to optimize credit flow and design policies for sustainable growth. He further emphasized Sumpoorn’s potential as a transformative initiative for emerging economies. As part of the exchange, NDB officials presented their work and its impact across multiple geographies, including India. The session concluded with an engaging Q&A from both sides, making the discussion highly interactive and well received.',
        imageURL: 'assets/images/nbdnewsroom.png',
      },
    ],
    puneEvent: [
      {
        title: '',
        detail: `At the Pune Public Policy Festival, Prashant Muddu, CEO of Jocata, participated in a panel discussion titled “Unlocking Economic Potential: Digital Public Infrastructure for a $10 Trillion India.” During the session, he highlighted Jocata Sumpoorn as India’s first privately provisioned public infrastructure for MSMEs, developed in collaboration with the Small Industries Development Bank of India (SIDBI). Prashant discussed how insights from Digital Public Infrastructure (DPI) can help shape decisions related to MSME lending, credit intelligence, and policy making.<br/><br/>
        He was joined by a distinguished panel of experts, including Ritul Gaur (Policy Advisor, The Digital Impact Alliance), Amlan Mohanty (Non-Resident Research Fellow, Carnegie India), Prateek Som (Standing Counsel, Government of Haryana), and Filippa Braarud (Embassy Secretary, Royal Norwegian Embassy). The conversation centered on the broader role of Digital Public Infrastructure (DPI) in unlocking India’s economic potential.`,
        imageURL: 'assets/images/news-puneppf.webp',
      },
    ],
  };

  downloadReport(type) {
    const salt = '6fbb7e4f-756d-11ee-a429-00090faa0001';
    this.encryptedData = CryptoJS.AES.encrypt(type, salt).toString();

    this.sumpoornApiService
      .downloadNewsroomReport({ reportTypeUuid: this.encryptedData })
      .then(
        (resp: any) => {
          const byteArray = new Uint8Array(
            atob(resp.pdf)
              .split('')
              .map((char) => char.charCodeAt(0))
          );
          const blob = new Blob([byteArray], {
            type: resp.mimeType + ';charset=utf-8',
          });
          saveAs(blob, resp.fileName);
        },
        (error) => {
          console.error('downloadReport', error);
          $('#errorsModal').show();
        }
      );
  }
}
