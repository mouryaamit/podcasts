import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-media-kit',
  templateUrl: './media-kit.component.html',
  styleUrls: ['./media-kit.component.scss'],
})
export class MediaKitComponent implements OnInit {
  constructor() {}

  // Data for Events
  eventsData = [
    { title: 'Executive meeting information details', date: '10/10/2023' },
    { title: 'Sumpoorn Profile Document', date: '05/10/2023' },
    { title: 'Sumpoorn indexing report presentation', date: '23/09/2023' },
  ];

  // Data for Logos
  logoData = [
    { name: 'jo-sum', imageUrl: 'assets/images/logo-jo-sum.svg' },
    { name: 'sidbi', imageUrl: 'assets/images/logo-sidbi.svg' },
  ];

  // Gallery Data
  galleryData = [
    {
      name: 'ramann',
      imageUrl: 'assets/images/media-ramann.webp',
      title: 'Sh. Sivasubramanian Ramann',
      designation: 'Chairman & Managing Director, SIDBI',
    },
    {
      name: 'singh',
      imageUrl: 'assets/images/media-singh.webp',
      title: 'Sh. S.N. Singh',
      designation: 'CGM, SIDBI',
    },
    {
      name: 'prashant',
      imageUrl: 'assets/images/media-prashant.webp',
      title: 'Sh. Prashant Muddu',
      designation: 'MD & CEO, Jocata',
    },
    {
      name: 'narasima',
      imageUrl: 'assets/images/media-narasima.webp',
      title: 'Sh. Narasimhan V',
      designation:
        'Principal Advisor, Jocata. Former COO, Dun & Bradstreet - SAARC, Middle East and Africa (EWN). Former Director, Board of SMERA (now Acuite Ratings)',
    },
    {
      name: 'sumita',
      imageUrl: 'assets/images/media-sumita.webp',
      title: 'Dr. Sumita Kale',
      designation:
        'CEO and Senior Fellow, Indicus Foundation. Former Chief Economist – Indicus Analytics.',
    },
    {
      name: 'vivek',
      imageUrl: 'assets/images/media-vivek.webp',
      title: 'Sh. Vivek Kumar Malhotra',
      designation: 'CGM, SIDBI',
    },
    {
      name: 'sanjay',
      imageUrl: 'assets/images/media-sanjay.webp',
      title: 'Sh. Sanjay Jain',
      designation: 'CGM, SIDBI',
    },
  ];

  // Download Image Function
  downloadImage(imageUrl: string, imageName: string): void {
    const link = document.createElement('a');
    link.href = imageUrl;
    link.download = imageName;

    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
  }

  ngOnInit(): void {}
}
