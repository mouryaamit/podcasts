import { Component, OnInit, AfterViewInit } from '@angular/core';
import { MatDialog, MatDialogRef } from '@angular/material/dialog';
import * as AOS from 'aos';
import { HomePagePopupComponent } from '../dialog/homepage-popup/homepage-popup.component';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss'],
})
export class HomeComponent implements OnInit, AfterViewInit {
  partners: Array<any> = [
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-sahamati.webp',
      imageAlt: 'Sahamati Logo',
    },
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-ceed.webp',
      imageAlt:
        'Centre for Excellence in Entrepreneurship and Development Logo',
    },
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-lead.webp',
      imageAlt: 'Lead Logo',
    },
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-sahamati.webp',
      imageAlt: 'Sahamati Logo',
    },
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-ceed.webp',
      imageAlt:
        'Centre for Excellence in Entrepreneurship and Development Logo',
    },
    {
      // title: 'Partner',
      imageSrc: 'assets/images/partner-lead.webp',
      imageAlt: 'Lead Logo',
    },
  ];

  constructor(private dialog: MatDialog) {}

  ngOnInit() {
    AOS.init();
    this.openFormDialog();
  }

  ngAfterViewInit(): void {
    AOS.init({
      offset: 100,
      easing: 'linear',
    });
  }

  ngAfterViewChecked(): void {
    AOS.refresh();
  }

  openFormDialog() {
    const dialogRef = this.dialog.open(HomePagePopupComponent, {
      disableClose: true,
      panelClass: 'app_hsn_modal',
    });
    dialogRef.afterClosed().subscribe((result) => {
      if (result) {
      } else {
      }
    });
  }
}
