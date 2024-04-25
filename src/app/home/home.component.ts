import { Component, OnInit } from '@angular/core';
import { UnitedNationsModelComponent } from '../dialog/united-nations/united-nations.component';
import { MatDialog } from '@angular/material/dialog';

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

  constructor(private dialog: MatDialog) {}

  ngOnInit(): void {
    this.openDialog();
  }

  openDialog(): void {
    const dialogRef = this.dialog.open(UnitedNationsModelComponent, {
      disableClose: true,
      panelClass: 'app_generic_modal',
      data: {}
    });
    dialogRef.afterClosed().subscribe((result) => {
      if (result) {
      } else {
      }
    });
  }
  
}
